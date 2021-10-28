
![Visual Studio Code logo](https://org-dendron-public-assets.s3.amazonaws.com/images/vscode-release-highlights-159.png)

The open source VSCode project, along with VSCodium[^1], completed their latest monthly release with v1.59[^2]. Let's take a look at some features that the insiders build[^3] had their impatient, bleeding-edge hands on (before we all forget what 1.59 brought before the upcoming August 2021 release).

## Share view state

VSCode users are often bouncing around different files in their workspaces. By default, if you close out a file tab, VSCode doesn't track where you were in that file. This can be annoying if you didn't mean to close out the file, or because you were playing whack-a-mole with the new workspace trust popups.

Say hello to shared view states across editor groups[^4]. Editor groups are the windows of tab collections within the VSCode editor[^5] that grow whenever **Split Editor/Open to the Side** commands are used. These groups can remember your past so that your rampant mind doesn't need to.

![GIF showing the share view state feature with The House on The Borderland, by William Hope Hodgson](https://org-dendron-public-assets.s3.amazonaws.com/images/vscode-share-view-state.gif)

> Ah yes, that's right, I left off at the pig people.[^6]

## Terminal magic tricks

By default, a new terminal can be created with `Ctrl+Tilde(~)`, where it pops up in the bottom as an entryway into the powerful, dark underbelly of shells. VSCode 1.59 highlights some wizardry alternatives.

### Create terminals to the side

Are you one of those people that spins a monitor into portrait mode, because of some insatiable love for 90<sup>o</sup> angles? Maybe you simply prefer tall terminals? `Ctrl+Shift+P` and `Terminal: Create Terminal in Editor Area to the Side`[^7], will be exactly what you're looking for.

![GIF showing the creation of terminals to the side, instead of defaulting to the bottom](https://org-dendron-public-assets.s3.amazonaws.com/images/vscode-side-terminals.gif)

### Drag and drop terminals across windows

How many VSCode windows are sitting open on your desktop? Are you taking notes in one workspace, while continuing your commands in a separate VSCode window? Make your life easier, retain all your in-shell variables, and drag the active terminal from one window to another.

This can be helpful when improving the documentation in one window as active development is happening in another.

![GIF showing the drag-and-drop feature of terminals into different VSCode windows](https://org-dendron-public-assets.s3.amazonaws.com/images/vscode-drag-drop-terminals.gif)

An excellent bonus: remember when typos were just typos? The worst thing that could happen was other people making fun of your lack of oxford comma's. Now, with terminal editors, your typo can shutdown your production database! Fun!

## Live preview

The _Live Preview_ extension[^8], originally released in June, has continued along. For users working in JavaScript land, **Live Preview: Show Debug Preview** ensures a built-in JavaScript debugger[^9].

Note that this extension has the warning:

> **WARNING: this is extension is still under development!**

For the brave javascripters among you all, who want the beautiful reflections of instant-progress within the editor, take it for a test drive. Report any issues to the [microsoft/vscode-livepreview](https://github.com/microsoft/vscode-livepreview) repo.

## Other notables

> General tip: Wondering what shortcuts are configured in VSCode? One shortcut to rule them all: `Ctrl+K Ctrl+S`
- Or `Ctrl+Shift+P` -> **Preferences: Open Keyboard Shortcuts**

- If you're using an M1 Mac, you should get the latest VSCode 1.59.1[^10] point release, as it addresses a bug where VSCode may crash.
- A _preview feature_[^11] has been added for automatic language detection in unsaved/untitled files. `experimentalLanguageDetection`[^12] (search against settings via `Ctrl+Comma`) can be set to `true`, which uses an ML model from `yoeo/Guesslang`[^13] with the open-source ML library `TensorFlow.js`[^14]. VSCode is planning for this feature to be `true` by default in the future, so that code is recognized out-of-box, instead of always relying on the file extension or force **Change Language Mode** (`Ctrl+K M`).

---

![[blog.subscribe]]

[^1]: [Checkout VSCodium](https://vscodium.com/), for the truly MIT-licensed version of the VSCode IDE (with telemetry/tracking disabled).
[^2]: [VSCode release notes for 1.59](https://code.visualstudio.com/updates/v1_59), along with release notes for previous monthly releases.
[^3]: The [VSCode Insiders Build](https://code.visualstudio.com/insiders) allows users to get VSCode with new features as soon as they are available, rather than at the monthly cadence.
[^4]: Read about [Shared View State Across Editor Groups](https://code.visualstudio.com/updates/v1_59#_share-view-state-across-editor-groups) in the release notes.
[^5]: Read about [Editor Groups](https://code.visualstudio.com/docs/getstarted/userinterface#_editor-groups) in the VSCode docs.
[^6]: [The House on the Borderland, by William Hope Hodgson](https://www.gutenberg.org/ebooks/10002), is a freely available novel via [Project Gutenberg](https://www.gutenberg.org/about/).
[^7]: `workbench.action.createTerminalEditorSide` provides this functionality, and is an alternative that can be entered after `Ctrl+Shift+P`.
[^8]: [Live Preview](https://marketplace.visualstudio.com/items?itemName=ms-vscode.live-server) is developed by Microsoft, and can be installed via `Ctrl+P` and `ext install ms-vscode.live-server`.
[^9]: For more information, see [latest highlights around _Live Preview_](https://code.visualstudio.com/updates/v1_59#_live-preview). Observe the animated bunny stuck waving in an infinite loop, trapped in a simulation. More in-depth information (on the extension, not the bunny) can be found directly within the [extension release notes](https://github.com/microsoft/vscode-livepreview/blob/main/release_notes/july-2021.md).
[^10]: See all [issues addressed in VSCode 1.59.1 on GitHub](https://github.com/microsoft/vscode/issues?q=is%3Aissue+milestone%3A%22July+2021+Recovery%22+is%3Aclosed). For the macOS bug fix, see [Perma-hang/crash on M1 MBP with universal build](https://github.com/microsoft/vscode/issues/130222).
[^11]: Normally, release notes include this snippet about [preview features and what they are](https://code.visualstudio.com/updates/v1_41#_preview-features): _"**Preview features** are not ready for release but are functional enough to use. We welcome your early feedback while they are under development."_
[^12]: Read about [Automatic Language Detection of Untitled Files](https://code.visualstudio.com/updates/v1_59#_automatic-language-detection-of-untitled-files) in the release notes.
[^13]: [Guesslang](https://github.com/yoeo/guesslang), by GitHub user [yoeo](https://github.com/yoeo), is an MIT-licensed ML model and Python package that can help detect the programming language of source code. It's been trained on over a million source code files.
[^14]: [TensorFlow.js](https://www.tensorflow.org/js/) makes development and usage of ML available within the browser or [Node.js](https://nodejs.org/en/). For more about TensorFlow, checkout the [_Why TensorFlow_ page](https://www.tensorflow.org/about).