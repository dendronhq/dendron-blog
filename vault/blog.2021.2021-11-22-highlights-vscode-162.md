---
id: V2Cjla9vzM69Z280j5bXB
title: Highlights from VSCode 1.62
desc: ''
updated: 1637788979079
created: 1637336177637
image:
  url: >-
    https://org-dendron-public-assets.s3.amazonaws.com/images/vscode-filter-hue-150.png
  alt: Visual Studio Code logo
date: '2021-11-22'
excerpt: >-
  Live Share session sharing in Virtual Workspaces, beautiful bracket pairs, verified publishers, and
  more in the VSCode 1.62 release
author: Derek Ardolf
published: true
---

![vscode 1.62 highlights](https://org-dendron-public-assets.s3.amazonaws.com/images/vscode-filter-hue-150.png)

The open source VSCode project, along with VSCodium[^1], completed their latest monthly release with v1.62[^2]. For those of us that haven't been using the Insider's Build,[^3] it's time to look at what's new.

Make sure to checkout the [VSCode 1.62 Release Party](https://www.youtube.com/watch?v=IKvtYHfzE3g) on YouTube!

## Live Share session sharing in Virtual Workspaces

![Live Share in Visual Studio Code](https://org-dendron-public-assets.s3.amazonaws.com/images/blog-vscode-liveshare.gif)

_Virtual Workspaces_[^4], such as [vscode.dev](https://vscode.dev/) and [github.dev](https://github.dev/), now support this superpower: sharing a session directly from the browser.

Haven't used Live Share before? Many people are attracted to Google Docs due to how easy it is to collaborate, comment, and highlight sections in order to give each other scathing reviews. Introducing [Live Share](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare-pack): instead of waiting for the PR review, you can provide non-constructive feedback to your peers!

Take note: if you are a VSCodium user, sharing/joining sessions won't work. I learned this after spending too much time confused. Be aware of the [live-share license agreement](https://marketplace.visualstudio.com/items/MS-vsliveshare.vsliveshare/license), including the information about data collection, which may be part of the incompatibility with VSCodium. There are alternatives, though, such as [CodeTogether](https://www.codetogether.com/).

> Release Party: [Live Share (in vscode.dev)](https://youtu.be/IKvtYHfzE3g?t=170)

## Bracket pairs

I enjoy whenever features lessen confusion for my eyeballs. I never bought a pair of Google Glass eyewear, even as men everywhere were [accidentally taking photos while using urinals](https://bits.blogs.nytimes.com/2013/05/17/at-google-conference-even-cameras-in-the-bathroom/) in public restrooms. [Bracket pair highlighting](https://code.visualstudio.com/updates/v1_62#_improved-bracket-pair-guides), though, to show where I am in the russian dolls of nested loops? Yes, please.

Settings of interest:
- `"editor.guides.bracketPairs": "active"`: Only show guides for **only the active** bracket pair.

![Active bracket pairs in Visual Studio Code](https://org-dendron-public-assets.s3.amazonaws.com/images/blog-vscode-active-bracketpairs.gif)

- `"editor.guides.bracketPairs": "true"`: Show guides for **all** bracket pairs, with different colors.

![All bracket pairs in Visual Studio Code](https://org-dendron-public-assets.s3.amazonaws.com/images/blog-vscode-always-bracketpairs.gif)

> Release Party: [Bracket pair colorization](https://youtu.be/IKvtYHfzE3g?t=857)

## Verified publishers

![Verified publishers of extensions in the Marketplace](https://org-dendron-public-assets.s3.amazonaws.com/images/blog-vscode-verified-publishers.gif)

When installing extensions, it's nice knowing you're installing the real deal. Microsoft could have gone the whimsically difficult route that Twitter has taken with their blue checkmarks, but instead they have made it an easy process. This was how I learned GitLens was acquired by GitKraken: [the truth is out there](https://www.gitkraken.com/blog/gitkraken-acquires-gitlens-for-visual-studio-code).

Found a duplicate extension? Check whether one is from a verified publisher by jumping into the Marketplace.

> Release Party: [Verification for extensions publishers](https://youtu.be/IKvtYHfzE3g?t=1384)

## Other notables

> General tip: Wondering what shortcuts are configured in VSCode? One shortcut to rule them all: `Ctrl+K Ctrl+S`
- Or `Ctrl+Shift+P` -> **Preferences: Open Keyboard Shortcuts**

- A [CVE was addressed](https://code.visualstudio.com/updates/v1_62#_unicode-directional-formatting-characters) involving characters that became invisible, leading to code that could compile differently than visually expected.
- Extension note: [GitHub PRs and Issues](https://code.visualstudio.com/updates/v1_62#_github-pull-requests-and-issues) brings issue and PR interaction directly into VSCode. Have you taken a look yet?
  - Latest updates can be seen in the [extension changelog](https://github.com/microsoft/vscode-pull-request-github/blob/main/CHANGELOG.md#0320).
- Issues resolved in point releases, referred to as "Recovery" releases, can be found on GitHub: [`1.62.1`](https://github.com/microsoft/vscode/issues?q=is%3Aissue+milestone%3A%22October+2021+Recovery%22+is%3Aclosed), [`1.62.2`](https://github.com/microsoft/vscode/issues?q=is%3Aissue+milestone%3A%22October+2021+Recovery+2%22+is%3Aclosed), and [`1.62.3`](https://github.com/microsoft/vscode/issues?q=is%3Aissue+milestone%3A%22October+2021+Recovery+3%22+is%3Aclosed).

---

![[blog.subscribe]]

[^1]: [Checkout VSCodium](https://vscodium.com/), for the truly MIT-licensed version of the VSCode IDE (with telemetry/tracking disabled).
[^2]: [VSCode release notes for 1.62](https://code.visualstudio.com/updates/v1_62), along with release notes for previous monthly releases.
[^3]: The [VSCode Insiders Build](https://code.visualstudio.com/insiders) allows users to get VSCode with new features as soon as they are available, rather than at the monthly cadence.
[^4]: Reference the [VSCode Blog Post on vscode.dev](https://code.visualstudio.com/blogs/2021/10/20/vscode-dev) for a full rundown on Virtual Workspaces and bringing VSCode to the browser. Last month, there was a livestream all about it! Watch [VS Code for the Web: vscode.dev on YouTube](https://www.youtube.com/watch?v=sy3TUb_iVJM).
