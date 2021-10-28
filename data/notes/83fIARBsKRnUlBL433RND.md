
![vscode 1.61 highlights](https://org-dendron-public-assets.s3.amazonaws.com/images/vscode-filter-hue-40.png)

The open source VSCode project, along with VSCodium[^1], completed their latest monthly release with v1.61[^2]. For those of us that haven't been using the Insider's Build,[^3] it's time to look at what's new.

As a bonus for this release, Microsoft held a little [VSCode 1.61 Release Party](https://www.youtube.com/watch?v=G4jjCN8uQAg) on YouTube. Watch the recording, see the devs show off features, and feel like you were actually invited to a party!

## Locked editor groups

![Locked editor groups in Visual Studio Code](https://org-dendron-public-assets.s3.amazonaws.com/images/vscode-lock-groups.gif)

> Note: this is an **experimental feature**.

Don't lose track of a file or terminal you are bouncing back-and-forth between in your gigantic list of editor tabs: use [locked editor groups](https://code.visualstudio.com/updates/v1_61#_locked-editor-groups). These prevent VSCode from opening more editor tabs in a group (a collection of tabs).

I like this feature, as I'm often opening new files in the wrong area of the screen. I want those side-by-side, computer!

- Release Party: [Editor and workspace improvements demo](https://www.youtube.com/watch?v=G4jjCN8uQAg&t=1985s)

## Split an editor without creating a new group

![Split editors in groups in Visual Studio Code](https://org-dendron-public-assets.s3.amazonaws.com/images/vscode-split-in-group.gif)

Do you find yourself looking at large files, and wish you could scroll down while staying in place elsewhere? Now you can, by doing the splits [without creating a new group](https://code.visualstudio.com/updates/v1_61#_split-an-editor-without-creating-a-new-group). Test it out with `View: Split Editor in Group` in the command palette (`Ctrl+Shift+P`) or with the keybinding shortcut: `Ctrl+K Ctrl+Shift+\`. This is useful when converting pieces of code into functions, trimming fat, copy/pasting comment blocks, and whatever else your heart desires.

No new group means not having yet another tab open in your editor!

- Release Party: [Editor and workspace improvements demo](https://www.youtube.com/watch?v=G4jjCN8uQAg&t=1985s)

## Webview UI Toolkit for Visual Studio Code

For extension authors making use of the [webview API](https://code.visualstudio.com/api/extension-guides/webview) for customizable views in the editor, life is about to become easier: say hello to the [Webview UI Toolkit](https://code.visualstudio.com/updates/v1_61#_webview-ui-toolkit-for-visual-studio-code). This is an open-source component library, providing Visual Studio Code design language, which matches the look and feel of VSCode/VSCodium. This is compatible with your tech stack of choice, bet it React, Vue, or OMGNewJSFramework!

- [Webview UI Toolkit Documentation](https://code.visualstudio.com/api/extension-guides/webview)
- [Webview UI Toolkit repo](https://github.com/microsoft/vscode-webview-ui-toolkit)
- Release Party: [Webview UI Toolkit Demo](https://www.youtube.com/watch?v=G4jjCN8uQAg&t=858s)

## Other notables

> General tip: Wondering what shortcuts are configured in VSCode? One shortcut to rule them all: `Ctrl+K Ctrl+S`
- Or `Ctrl+Shift+P` -> **Preferences: Open Keyboard Shortcuts**

- Confusion was caused by a new telemetry config option, `telemetry.telemetryLevel`, which would display that telemetry was enabled (even if it was previously disabled). The [full discussion can be found on GitHub](https://github.com/microsoft/vscode/issues/134660), which led to improvements being implemented in the `1.61.1` update.
- [Platform-specific extensions](https://www.youtube.com/watch?v=G4jjCN8uQAg&t=170s): no longer try installing a MacOS-only extension on your Windows system, or vice-versa. That is, if the extension developer specifies the supported OS targets. This was previewed at the release party.
- I often came back to my laptop to find that [my terminal was having a stroke in the VSCode editor](https://github.com/microsoft/vscode/issues/69665). This seems to be resolved!
- The latest point releases[^4] include fixes for other problems, such as [high CPU consumption](https://github.com/microsoft/vscode/issues/134757). Make sure to keep up-to-date!

I can't forget: want to take a look at VSCode in your web browser, without installing a thing? These are called _Virtual Workspaces_, such as [vscode.dev](https://vscode.dev/) and [github.dev](https://github.dev/). Reference the [VSCode Blog Post on vscode.dev](https://code.visualstudio.com/blogs/2021/10/20/vscode-dev) for a full rundown on bringing VSCode to the browser.

---

![[blog.subscribe]]

[^1]: [Checkout VSCodium](https://vscodium.com/), for the truly MIT-licensed version of the VSCode IDE (with telemetry/tracking disabled).
[^2]: [VSCode release notes for 1.61](https://code.visualstudio.com/updates/v1_61), along with release notes for previous monthly releases.
[^3]: The [VSCode Insiders Build](https://code.visualstudio.com/insiders) allows users to get VSCode with new features as soon as they are available, rather than at the monthly cadence.
[^4]: Issues resolved in point releases, referred to as "Recovery" releases, can be found on GitHub: [`1.61.1`](https://github.com/microsoft/vscode/issues?q=is%3Aissue+milestone%3A%22September+2021+Recovery%22+is%3Aclosed) and [`1.61.2`](https://github.com/microsoft/vscode/issues?q=is%3Aissue+milestone%3A%22September+2021+Recovery+2%22+is%3Aclosed).