---
id: fDCVPEo3guCFWPdxokXHU
title: 'Mobile apps for notes in Markdown: A comparison'
desc: ''
updated: 1632684719327
created: 1632684719327
date: '2021-09-27'
image: "https://org-dendron-public-assets.s3.amazonaws.com/images/blog-mobile-editor-header.png"
excerpt: "A stroll through mobile apps that can take notes in Markdown and make use of git"
author: "Derek Ardolf"
---

![Photo of a phone ontop of a notebook](https://org-dendron-public-assets.s3.amazonaws.com/images/blog-mobile-editor-header.png)

On the desktop, markdown-based notes can be taken in any plain-text editor of choice. Dendron sits ontop of VSCode/VSCodium. Though, what happens when you walk out the door? I know you look both ways before crossing the street with your open laptop, but it turns out that your phone can work with markdown, too!

Will these apps sway users to adopt them, and end up in news articles as the cause of distracted drivers? Please stop driving. Pull over, _right now_, and continue reading from that gas station parking lot.

What we're looking at today:

- [GitJournal](#gitjournal)
- [Markor](#markor)
- [iA Writer](#ia-writer)
- [Other apps of interest](#other-apps-of-interest)

## GitJournal

![Editor and markdown-preview screenshots, on Android, for GitJournal](https://org-dendron-public-assets.s3.amazonaws.com/images/blog-gitjournal-screenshots.png)

- **Cost:** Free (or a [paid Pro option](https://gitjournal.io/pricing/))
- **OS:** Android, iOS
- **Open Source:** Yes ([AGPL-3.0](https://github.com/GitJournal/GitJournal/blob/master/LICENSE))
- **Git integration:** Yes

[GitJournal](https://gitjournal.io/) has floated to the top of my list: works on mobile device of choice, free to jump into, open to contributions, and can sync with my repos. The project is built with [Flutter](https://flutter.dev/), making life easier when it comes to multiple-platforms as target exports.

I'm really interested in seeing where GitJournal goes. I couldn't find other mobile apps that covered both notes in Markdown and git-integration, without needing to juggle multiple apps. With my [Dendron vaults](https://wiki.dendron.so/notes/6682fca0-65ed-402c-8634-94cd51463cc4.html), I mostly take [scratch notes](https://wiki.dendron.so/notes/5c213aa6-e4ba-49e8-85c5-1bdcb33ce202.html#scratch-note) or edit already-existing notes when using my phone. For more extensive usage, I hop on the laptop.[^1]

## Markor

![Editor and markdown-preview screenshots, on Android, for Markor](https://org-dendron-public-assets.s3.amazonaws.com/images/blog-markor-screenshots.png)

- **Cost:** Free
- **OS:** Android
- **Open Source:** Yes ([Apache 2.0, w/ special note on commercial license](https://github.com/gsantner/markor/blob/master/LICENSE.txt))
- **Git integration:** No

[Markor](https://gsantner.net/project/markor.html) is without git integration, but can be combined with an app like **GitJournal** or [MGit (Android)](https://manichord.com/projects/mgit.html) for syncing to a source repo.

I liked both the _editor_ and _preview_ rendering in Markor more than the other apps I tried. Syntax highlighting is a nice touch while editing, and the previews look cleaner than both iA Writer and GitJournal.

Though, the cons here are that Markor only works on Android and needs another app to handle git integration. Outside of that, I can quickly see why thousands of ratings have led to nearly a 5/5 on the Google Play.

## iA Writer

![Editor and markdown-preview screenshots, on Android, for iA Writer](https://org-dendron-public-assets.s3.amazonaws.com/images/blog-iawriter-screenshots.png)

- **Cost:** [$29.99](https://ia.net/downloads#apps)
- **OS:** Android, iOS / iPad / Mac, Windows
- **Open Source:** No
- **Git integration:** No

[iA Writer](https://ia.net/writer) was initially released 10 years ago, and has since evolved to work on multiple platforms. Though it doesn't have git integration, other apps like **GitJournal** or [MGit (Android)](https://manichord.com/projects/mgit.html) can be used for that.

Want to feel like a designer, in a sleek interface with minimalist and Apple-like branding? This is made for you. The editor can work across all devices: phones, tablets, and desktops.

Being a feature-full piece of software, including:

- Style-checking to help improve note quality
- Can export to Word
- A larger list of all-the-things can be found on their [main landing page](https://ia.net/writer).

## Other apps of interest

Here is a slew of other apps mentioned in the Dendron docs, and mentioned in the community discord, with links.

- [Obsidian (iOS + Android + More)](https://obsidian.md)
  - Free (or paid for more features), combine with MGit or other Git client, can work on all desktops and mobile devices
- [MGit (Android)](https://manichord.com/projects/mgit.html)
  - Git client, open source, free
- [Working Copy (iOS)](https://workingcopyapp.com/)
  - Git client, paid (free version can't push commits)
- [Noteless (Android)](https://github.com/redsolver/noteless)
  - Open source, free, includes AsciiMath, KaTeX, mermaidjs
  - An experimental feature option supports Dendron formatted wiki links
- [Neutrinote (Android)](https://appml.github.io/nano/)
  - Open source, free, includes LaTeX / math rendering support
- [Editorial (iOS)](https://omz-software.com/editorial/)
  - iPad + iPhone, paid, integrated Python bonus
- [Taio (iOS)](https://taio.app/)
  - iPad + iPhone + Mac, free (or paid option has perks, such as Javascript-supported actions)
- [Textastic (iOS)](https://www.textasticapp.com/)
  - iPad + iPhone + Mac, paid, code-highlighting, ssh/FTP/SFTP/Dropbox/Google Drive support

Users may also be interested in future development around the [GitHub](https://github.com/mobile/) mobile client, which currently does _not_ support being able to edit or contribute new files. For now, people can use the app to post "LGTM" to PRs, add thumbs-down emojis to issues, and get notified when your PRs are rejected.

[^1]: I know, using a laptop is a bit cramped when jammed between myself and the steering wheel. Sometimes, sacrifices in comfort are needed for a more productive life.