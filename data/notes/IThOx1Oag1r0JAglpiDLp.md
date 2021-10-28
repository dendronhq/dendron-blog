
![A photo of a developer with a laptop and 2 monitors, from a top-down view. Monitors display Visual Studio Code windows.](https://org-dendron-public-assets.s3.amazonaws.com/images/pexels-thisisengineering-3861972.jpg)

Visual Studio Code (VSCode) provides many powerful features for extension developers. Autocomplete, warnings, tasks, and many more features are included out-of-the-box and are available for extension developers to take advantage of. However, figuring out how you can take advantage of these features as an extension developer can require digging through API documentation to learn the exact behavior. Using the API incorrectly can lead to issues that are hard to debug, as I learned working on the block autocomplete feature for Dendron.

This post is an overview of VSCode autocomplete —also called intellisense— feature from the viewpoint of an extension developer. I especially want to highlight a few pitfalls: VSCode provides defaults for many of the options around autocomplete, but the behavior of these defaults can be confusing if you don't know what they are.

### Entry point

Your entry point into adding an autocomplete feature is `languages.registerCompletionItemProvider`. This allows you to attach a function that will generate the options when requested.

```ts
languages.registerCompletionItemProvider(
  "markdown",
  {
    provideCompletionItems: provideBlockCompletionItems,
  },
  "#",
  "^"
);
```

Above is how Dendron attaches the completion provider for blocks. This part is straightforward, although note the symbols at the end. These are the symbols that when written will trigger your completion provider automatically. While you can define multiple symbols, each symbol has to be a single character. If An overview & tutorial of writing VSCode completion providers (intellisense) as an extension developer

Next, let's take a look at the completion function. Here is the function signature for Dendron:

```ts
export async function provideBlockCompletionItems(
  document: TextDocument,
  position: Position,
  token?: CancellationToken
): Promise<CompletionItem[] | undefined> {
```

`document` and `position` are straightforward. `token` is used to cancel completions, for example if the user hits cancel while waiting for the completions. Key thing about the token is to remember that javascript is single-threaded: the token won't suddenly get cancelled in the middle of your function. The only point where it can become cancelled is if you `await` for something and yield the execution. This means you don't have to check if the token is cancelled everywhere in your code, just check after any `await`ed operation that might take a significant amount of time. Checking the token is easy, `if (token?.isCancellationRequested) return;` is enough.

The more important thing here is how the function gets called. One way the function will get called is if the user types one of the trigger symbols you registered. Another way is if the user hits the key for "Trigger Suggest" (`Ctrl+Space` by default), *all* registered completion providers for this language will run. Crucially, this means your completion provider may be activated at any point in the document, with or without your trigger key.
It's up to your implementation to check if the current `position` is somewhere that this completion is appropriate for, and `return;` if not. Let's look at a simplified version of how Dendron handles this for the autocomplete:

```ts
let found: RegExpMatchArray | undefined;
const line = document.lineAt(position.line);

// There may be multiple links within this line
const matches = line.text.matchAll(LINK_WITH_BLOCK_REGEX);
for (const match of matches) {
  if (_.isUndefined(match.groups) || _.isUndefined(match.index)) continue;
  const { entireLink } = match.groups;
  // If the current position is within this link, then we are trying to complete it
  if (
      match.index <= position.character &&
      position.character <= match.index + entireLink.length
  ) {
      found = match;
  }
}
if (_.isUndefined(found)) return;
```

The gist of it is that we get the text for the current line, and check if the current position is inside a link with a block that we can complete.

### `CompletionItem`
#### `label`

A key part of the completion item is the label. The label is not only displayed for the completion items, but it's also used as a default for many of the options in a `CompletionItem`. The text that gets inserted when the user selects something, deciding the order in which these items are displayed, and how these options are narrowed when the user types are all based on the label by default.

![A screen shot displaying several completion items. "journal.2021.06" is written within brackets, which is also highlighted in all completion items.](https://i.imgur.com/Qu2LPJR.png)

#### `range`

The range is the most confusing part of the `CompletionItem` in my opinion. The range determines 2 things: where the selected item will be inserted, and also what counts as "stuff that the user typed to narrow the items".

For the first use of range, whatever range you provide will be replaced with the `insertText` (or missing that, `label`) of the completion item. If you have nothing to replace, the range can have `start === end` in which case the text is just inserted at that point.

The second use of range makes things a bit more tricky. Because the range determines what counts as "stuff the user typed", you have to be careful about what you include in the range. For example, Dendron's autocomplete allows users to type `[[^` to get all blocks within a text as autocomplete options.

The problem? The user needs to type `^` to activate the completion, but `^` is not part of any completion item, and also `^` needs to be removed once an item is selected because the text is supposed to look like `[[#^something]]` after the completion. 

While it would be convenient to just set the range to anything within the brackets, this will result in all completion items being narrowed out because `^` will also count as "stuff the user typed to narrow the items".

Something important to bring up here is the default for `range`. If you look
into the docs, you'll see that the default is the "range of the current word",
effectively the output of `TextDocument.getWordRangeAtPosition` function.
`getWordRangeAtPosition` allows you to set a custom regex to select what
"current word" means, so this might sound like a good way to calculate the
range. While this would work in some cases, I found that
`getWordRangeAtPosition` is extremely inefficient if your regex is more complex
than `[...]+`. Especially using lookaheads or lookbehinds causes VSCode to
completely hang. I'd recommend avoiding this function unless the default mostly
works for you.

#### `sortText`

This field is used to determine in what order the completion items are *initially* ordered. Initially is important here, as VSCode may move the items around once the user starts typing if it decides some items match the text better.

The annoying part about `sortText`: it simply sorts the items using basic string sorting. Issue here being that if you have a loop to generate your completion items, you can't just use the index to sort the items.

```ts
blocks.map((block, index) => {
  // These won't sort right, because "11" < "9" in string sort
  return {
    label: block.text,
    sortText: String(index),
  };
}
```

The fix is to pad your `sortText`.

```ts
sortText: String(index).padStart(5, '0'),
```

This is not a perfect fix of course, but it's unlikely that you'll have over 99999 completion items.

#### `insertText`

This is the text to be inserted when the user selects a completion. By default
it's set to the label, but you'll want to set this if you are using the label to
display something more informative to the user. For example, when completing
blocks, Dendron uses the label to display the actual line the user is selecting.
But the text we need to insert into the wikilink is not the same as the line
itself, so we set this to get it to link to the right place.

```ts
insertText: `#${AnchorUtils.anchor2string(anchor)}`,
```

#### `additionalTextEdits`

`insertText` replaces the part of the text that is selected by the `range`. This
is actually quite limiting: As I mentioned before, `range` not only selects the
what will be replaced but also what VSCode considers "typed by the user to
narrow options". What if you want something to be replaced along with what the
user typed, but you don't want it to be used in narrowing?

For example, when autocompleting for blocks in Dendron the user might type
`[[^some-header`, but the resulting link will look like
`[[#some-header-text-here]]`. We need to remove `^` along with whatever the user
typed, but if we set the `range` to include it then the narrowing would be
thrown off because it would look for options where the label includes `^`.
To get around this, we use the `additionalTextEdits` to automatically remove the
`^` part.

Another use for `additionalTextEdits` is to insert text somewhere completely
different in the document. Think of auto-imports for some languages, where you
type something and the language automatically adds `import ...`. Or in Dendron,
if the user selects a block that doesn't already have a block anchor when
completing blocks, we need to insert a block anchor there. `additionalTextEdits`
have no limits to where they can put the text, as long as it's within the same
document. In any case, let's see what this code looks like:

```ts
const edits: TextEdit[] = [];

if (found.groups.trigger) edits.push(
  new TextEdit(
    new Range(
      position.line, found.index + 2,
      position.line, found.index + 2 + found.groups.trigger.length
    ),
    ""
  )
);

if (_.isUndefined(anchor)) {
  anchor = {
    type: "block",
    value: genUUIDInsecure(),
  };
  const blockPosition = VSCodeUtils.point2VSCodePosition(
    block.position.end
  );
  edits.push(
    new TextEdit(
      new Range(blockPosition, blockPosition),
      ` ${AnchorUtils.anchor2string(anchor)}`
    )
  );
}
```

The first part adds a text edit to remove the `^` part the user typed by
calculating the range from a regex match, then replacing it with `""`. The
second part adds the ` ^...` part to a block by calculating the range from the
parsed document.

## Conclusion

Autocomplete is a ubiquitous feature in text editing today, both for writing
natural languages and coding. It is an incredibly easy-to-use yet powerful
feature for your users, and it enables unmatched user experiences when done
right. But when done wrong, it can cause a disconnect and confusion around your
product. At Dendron, we strive for the former and hope that the learnings from
our experience will help you do the same.

---

![[blog.subscribe]]