---
id: fDCVPEo3guCFWPdxokXHU
title: Best Mobile Note-Taking Apps for Markdown
desc: ''
updated: 1639617530929
created: 1632684719327
date: '2021-10-25'
excerpt: An overview of mobile apps that work well with Markdown
author: Derek Ardolf
image:
  url: https://org-dendron-public-assets.s3.amazonaws.com/images/blog-mobile-editor-header.png
  alt: Mobile phone sitting ontop of a journal
publish: true
---

![Mobile phone sitting on top of a journal](https://org-dendron-public-assets.s3.amazonaws.com/images/blog-mobile-editor-header.png)

On the desktop, Markdown notes can be taken in any plain-text editor of choice. If you're using [Dendron](https://dendron.so), you can use VSCode/VSCodium as well as a suite of [powerful commands](https://wiki.dendron.so/notes/eea2b078-1acc-4071-a14e-18299fc28f47/) to manage your notes. Though, what happens when you walk out the door? It turns out that your phone can work with Markdown, too!

What we're looking at today:

- [Obsidian](#obsidian)
- [GitJournal](#gitjournal)
- [Markor](#markor)
- [iA Writer](#ia-writer)
- [Other apps of interest](#other-apps-of-interest)
  - [Markdown notes](#markdown-notes)
  - [Git clients](#git-clients)
- [Last thoughts](#final-thoughts)

## Obsidian

![Editor and markdown-preview screenshots, on Android, for Obsidian](https://org-dendron-public-assets.s3.amazonaws.com/images/blog-obsidian-screenshots.png)

> _"Obsidian is a powerful knowledge base on top of a local folder of plain text Markdown files."_

- **Cost:** Free for personal use (or [paid options](https://obsidian.md/pricing) for business use and other features)
- **OS:** Android, iOS / iPad / Mac, Windows
- **Open Source:** No
- **Built-in git integration:** No

_[Obsidian](https://obsidian.md/mobile)_ is a PKM (Personal Knowledge Management) tool that provides a sleek UI to Markdown files. It had the best mobile experience, for me, out of the apps I tested. Though it doesn't have git support built-in, other mobile apps can assist in providing that backend. I recommend [MGit (Android)](https://manichord.com/projects/mgit.html).

Obsidian uses [wikilink style links](https://wiki.dendron.so/notes/3472226a-ff3c-432d-bf5d-10926f39f6c2/#wiki-links) (ex. `[[my.other.note]]`), like Dendron, which is a nice plus.

Paid options can assist note-takers with automatic syncing, publishing of notes, and other perks. Note that obsidian is free for personal use but requires at least a [paid commercial license for business use](https://help.obsidian.md/Licenses+%26+add-on+services/Commercial+license).

## GitJournal

![Editor and markdown-preview screenshots, on Android, for GitJournal](https://org-dendron-public-assets.s3.amazonaws.com/images/blog-gitjournal-screenshots.png)

> _"Mobile first Markdown Notes integrated with Git."_

- **Cost:** Free (or a [paid Pro option](https://gitjournal.io/pricing/))
- **OS:** Android, iOS
- **Open Source:** Yes ([AGPL-3.0](https://github.com/GitJournal/GitJournal/blob/master/LICENSE))
- **Built-in git integration:** Yes

_[GitJournal](https://gitjournal.io/)_ has gained quite a bit of interest: it works on your mobile device of choice, free to jump into, open to contributions, and can sync notes to a repo (or multiple repos with the Pro version). The project is built with [Flutter](https://flutter.dev/), making life easier when it comes to multiple-platforms as target exports.

GitJournal also supports wikilinks and can therefore be used with Dendron and Obsidian.

I'm really interested in seeing where GitJournal goes. I couldn't find other mobile apps that covered both notes in Markdown and git-integration, without needing to juggle multiple apps. With my [Dendron vaults](https://wiki.dendron.so/notes/6682fca0-65ed-402c-8634-94cd51463cc4/), I mostly take [scratch notes](https://wiki.dendron.so/notes/5c213aa6-e4ba-49e8-85c5-1bdcb33ce202/#scratch-note) or edit already-existing notes when using my phone. For more extensive usage, I hop on the laptop.

I will say, though, that I ran into so many problems in trying to get my first demo repository setup that I stopped using GitJournal. Other users are running into issues at the moment having to do with syncing and setup, some of which might be tied to [a hard-coded expectation of branch names](https://github.com/GitJournal/GitJournal/issues/546) (such as `master`). I now use `mgit` for managing my repos, and Obsidian for managing notes.

## iA Writer

![Editor and markdown-preview screenshots, on Android, for iA Writer](https://org-dendron-public-assets.s3.amazonaws.com/images/blog-iawriter-screenshots.png)

> _"iA Writer offers a unique writing experience that lets you concentrate and clarify your message. Used by half a million people worldwide, its powerful interface is crafted to cut out noise, let you focus on what you want to say, and help you structure and trim your text."_

- **Cost:** [$29.99](https://ia.net/downloads#apps)
- **OS:** Android, iOS / iPad / Mac, Windows
- **Open Source:** No
- **Built-in git integration:** No

_[iA Writer](https://ia.net/writer)_ was initially released 10 years ago, and has since evolved to work on multiple platforms. Though it doesn't have git integration, other apps like **GitJournal** or **MGit (Android)** can be used for that.

Want to feel like a designer, in a sleek interface with minimalist and Apple-like branding? This is made for you. The editor can work across all devices: phones, tablets, and desktops.

Being a feature-full piece of software, including:

- Style-checking to help improve note quality
- Can export to Word
- A larger list of all-the-things can be found on their [main landing page](https://ia.net/writer).

## Markor

![Editor and markdown-preview screenshots, on Android, for Markor](https://org-dendron-public-assets.s3.amazonaws.com/images/blog-markor-screenshots.png)

> _"Markor is a TextEditor for Android. This project aims to make an editor that is versatile, flexible, and lightweight. Markor utilizes simple markup formats like Markdown and todo.txt for note-taking and list management."_

- **Cost:** Free
- **OS:** Android
- **Open Source:** Yes ([Apache 2.0, w/ special note on commercial license](https://github.com/gsantner/markor/blob/master/LICENSE.txt))
- **Built-in git integration:** No

[Markor](https://gsantner.net/project/markor.html) is without git integration, but can be combined with an app like **GitJournal** or [MGit (Android)](https://manichord.com/projects/mgit.html) for syncing to a source repo.

I liked both the _editor_ and _preview_ rendering in Markor more than the other apps I tried. Syntax highlighting is a nice touch while editing, and the previews look cleaner than both iA Writer and GitJournal.

Though, the cons here are that Markor only works on Android and needs another app to handle git integration. Outside that, I can quickly see why thousands of ratings have led to nearly a 5/5 on Google Play.

## Other apps of interest

There are many mobile note-taking solutions that work with Markdown. Below are some additional tools that [Dendrologists](https://wiki.dendron.so/notes/7c00d606-7b75-4d28-b563-d75f33f8e0d7/#dendrologist) have used for Markdown on the go.

### Markdown notes

- [Working Copy (iOS)](https://workingcopyapp.com/)
  - Git client, paid (free version can't push commits). This app comes up quite a bit for iOS users and within the [Dendron Discord](https://discord.com/invite/xrKTUStHNZ) in our `#mobile` channel, so I'm listing it at the top.
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

> For a wider comparison of text editors, with a focus on iOS devices, also take a look at [this iOS Text Editor roundup by Brett Terpstra](https://brettterpstra.com/ios-text-editors/).

### Git clients

- [MGit (Android)](https://manichord.com/projects/mgit.html)
  - Git client, open source, free. There is a reason I repeatedly mention it in this article, when it comes to Android users, because it handles git repos well.
- [Working Copy (iOS)](https://workingcopyapp.com/)
  - Git client, paid (free version can't push commits)

## Final thoughts

Users may also be interested in future development around the [GitHub](https://github.com/mobile/) mobile client, which currently does _not_ support being able to edit or contribute new files. For now, people can use the app to post "LGTM" to PRs, add thumbs-down emojis to issues, and get notified when your PRs are rejected.

`git` is not the only way to sync/backup your notes, since tools like Dropbox, Google Drive, iCloud, and Keybase can also help provide that functionality. I, and other Dendrologists, have a bias toward git due to a variety of reasons:

- Following the [Docs as Code](https://www.writethedocs.org/guide/docs-as-code/) approach
- Treating all documentation as part of a distributed wiki system that can import docs, from any source, into a single workspace
- `git` versioning
- Anyone that has used GitHub, GitLab, or other git-hosting solutions will have `git` installed

If I had to choose what combinations to use, on Android, I'd recommend **Obsidian** with **MGit (Android)**. The two, together, have worked very well for me. I'm also a fan of setting up SSH keys to have project/repo-limited permissions as [Deploy Keys](https://docs.github.com/en/developers/overview/managing-deploy-keys#deploy-keys) on GitHub (with `Allow write access` enabled). This prevents users from setting up SSH keys with user-wide permissions across GitHub.

---

![[blog.subscribe]]