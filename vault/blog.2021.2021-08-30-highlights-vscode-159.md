---
id: JzH76BDLaFwJloUFzkGGg
title: 2021 08 30 Highlights Vscode 159
desc: ''
updated: 1630272832402
created: 1630272366498
---

# Highlights from VSCode 1.59

> This blog article makes use of [footnotes](https://wiki.dendron.so/notes/ba97866b-889f-4ac6-86e7-bb2d97f6e376.html#footnotes), which can be useful to [academics using Dendron](https://wiki.dendron.so/notes/77c8f69c-32b8-4331-b1b2-c4211dcb9fb7.html) or for a cleaner blog experience.

The open source VSCode project, along with VSCodium[^1], completed their latest monthly release with v1.59[^2]. Let's take a look at some features that the insiders build[^3] had their impatient, bleeding-edge hands on before the August 2021 release is announced.

### Share view state

VSCode users are often bouncing around different files in their workspaces. By default, if you close out a file tab, VSCode doesn't track where you were in that file. This can be annoying if you didn't mean to close out the file.

Say hello to shared view states across editor groups[^4]. Editor groups are the windows of tab collections within the VSCode editor[^5] that grow whenever **Split Editor/Open to the Side** commands are used. These groups can remember your past so that your rampant mind doesn't need to.

![GIF showing the share view state feature with The House on The Borderland, by William Hope Hodgson](https://org-dendron-public-assets.s3.amazonaws.com/images/vscode-share-view-state.gif)

> Ah yes, that's right, I left off at the pig people.[^6]

### Terminal magic tricks

By default, a new terminal can be created with `Ctrl+Tilde(~)`, where it pops up in the bottom as an entryway into the powerful, dark underbelly of shells. VSCode 1.59 highlights some wizardry alternatives.

#### Create terminals to the side

Are you one of those people who spins a monitor into portrait mode, because of some insatiable love for 90<sup>o</sup> angles? Maybe you simply prefer tall terminals? `Ctrl+Shift+P` and `Terminal: Create Terminal in Editor Area to the Side`[^7], will be exactly what you're looking for.

![GIF showing the creation of terminals to the side, instead of defaulting to the bottom](https://org-dendron-public-assets.s3.amazonaws.com/images/vscode-side-terminals.gif)

#### Drag and drop terminals across windows

How many VSCode windows are sitting open on your desktop? Are you taking notes in one workspace, while continuing your commands in a separate VSCode window? Make your life easier, retain all your in-shell variables, and drag the active terminal from one window to another.

![GIF showing the drag-and-drop feature of terminals into different VSCode windows](https://org-dendron-public-assets.s3.amazonaws.com/images/vscode-drag-drop-terminals.gif)

This can be helpful when improving the documentation in one window as active development is happening in another.

### Other notables

> General tip: Wondering what shortcuts are configured in VSCode? One shortcut to rule them all: `Ctrl+K Ctrl+S`
- Or `Ctrl+Shift+P` -> **Preferences: Open Keyboard Shortcuts**

- If you're using an M1 Mac, you should get the latest VSCode 1.59.1[^8] point release, as it addresses a bug where VSCode may crash.
- A preview feature has been added for automatic language detection in unsaved/untitled files. `experimentalLanguageDetection`[^9] (search against settings via `Ctrl+Comma`) can be set to `true`, which uses an ML model from `yoeo/Guesslang`[^10] with the open-source ML library `Tensorflow.js`[^11]. VSCode is planning for this feature to be `true` by default in the future, so that code is recognized out-of-box, instead of always relying on the file extension or force **Change Language Mode** (`Ctrl+K M`).
- The _Live Preview_ extension[^12], originally released in June, has continued along. For users working in JavaScript land, **Live Preview: Show Debug Preview** ensures a built-in JavaScript debugger[^13].

[^1]: [Checkout VSCodium](https://vscodium.com/), for the truly MIT-licensed version of the VSCode IDE (with telemetry/tracking disabled).
[^2]: [VSCode release notes for 1.59](https://code.visualstudio.com/updates/v1_59), along with release notes for previous monthly releases.
[^3]: The [VSCode Insiders Build](https://code.visualstudio.com/insiders) allows users to get VSCode with new features as soon as they are available, rather than at the monthly cadence.
[^4]: Read about [Shared View State Across Editor Groups](https://code.visualstudio.com/updates/v1_59#_share-view-state-across-editor-groups) in the release notes.
[^5]: Read about [Editor Groups](https://code.visualstudio.com/docs/getstarted/userinterface#_editor-groups) in the VSCode docs.
[^6]: [The House on the Borderland, by William Hope Hodgson](https://www.gutenberg.org/ebooks/10002), is a freely available novel via [Project Gutenberg](https://www.gutenberg.org/about/).
[^7]: `workbench.action.createTerminalEditorSide` provides this functionality, and is an alternative that can be entered after `Ctrl+Shift+P`.
[^8]: See all [issues addressed in VSCode 1.59.1 on GitHub](https://github.com/microsoft/vscode/issues?q=is%3Aissue+milestone%3A%22July+2021+Recovery%22+is%3Aclosed).
[^9]: Read about [Automatic Language Detection of Untitled Files](https://code.visualstudio.com/updates/v1_59#_automatic-language-detection-of-untitled-files) in the release notes.
[^10]: [Guesslang](https://github.com/yoeo/guesslang), by GitHub user [yoeo](https://github.com/yoeo), is an MIT-licensed ML model and Python package that can help detect the programming language of source code. It's been trained on over a million source code files.
[^11]: [Tensorflow.js](https://www.tensorflow.org/js/) makes development and useage of ML available within the browser or [Node.js](https://nodejs.org/en/). For more about Tensorflow, checkout the [_Why TensorFlow_ page](https://www.tensorflow.org/about).
[^12]: [Live Preview](https://marketplace.visualstudio.com/items?itemName=ms-vscode.live-server) is developed by Microsoft, and can be installed via `Ctrl+P` and `ext install ms-vscode.live-server`.
[^13]: For more information, see [latest highlights around _Live Preview_](https://code.visualstudio.com/updates/v1_59#_live-preview). Observe the animated bunny stuck waving in an infinite loop, trapped in a simulation. More in-depth information (on the extension, not the bunny) can be found directly within the [extension release notes](https://github.com/microsoft/vscode-livepreview/blob/main/release_notes/july-2021.md).