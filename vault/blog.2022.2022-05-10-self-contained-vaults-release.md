---
id: g98s3m6jft4gnb546y7i4xg
title: Early Release of Self Contained Vaults
desc: ''
updated: 1652132718657
created: 1651526168935
image:
  url: >-
    https://org-dendron-public-assets.s3.amazonaws.com/images/blog-self-contained-vaults-banner.jpg
  alt: >-
    A hand writing Self Contained Vaults on a label, surrounded by plant pots
    and miniature gardening tools.
excerpt: >-
  Vaults and workspaces stood out as a point of confusion for both new and
  existing users, but we are solving this with the upcoming release of Self
  Contained Vaults.
author: user.kaan
date: '2022-05-10'
publish: false
---

Dendron's mission is to help humans organize, find, and work with any amount of
knowledge. We've shipped many features last year that got us closer to this goal -- some of our favorites include [note traits](https://wiki.dendron.so/notes/bdZhT3nF8Yz3WDzKp7hqh), [block references](https://wiki.dendron.so/notes/f1af56bb-db27-47ae-8406-61a98de6c78c#block-references),
[file links](https://wiki.dendron.so/notes/3472226a-ff3c-432d-bf5d-10926f39f6c2#file-links), integration with [other](https://wiki.dendron.so/notes/hA02kromgLKegxaG2VHKE)
[tools](https://wiki.dendron.so/notes/oTW7BFzKIlOd6iQnnNulg), and [advanced note refactoring](https://wiki.dendron.so/notes/eea2b078-1acc-4071-a14e-18299fc28f47#header-operations).

While we've made significant improvements to the note taking process, our
underlying mechanism for managing notes (vaults and workspaces) stood out as a
point of confusion for both new and existing users.

As a refresher - a Dendron
[Vault](https://wiki.dendron.so/notes/6682fca0-65ed-402c-8634-94cd51463cc4#workspace-vault) is a collection of
notes and assets inside a folder. A workspace is a collection of vaults. Vaults can't function without
workspaces so sharing a vault still required that the recipient setup their own
workspace. In addition, Dendron workspaces are related but not equivalent to
VSCode workspaces but there was enough overlap that it was hard to figure out
the difference.

We started addressing this issue with [Workspace Vaults](https://wiki.dendron.so/notes/6682fca0-65ed-402c-8634-94cd51463cc4).
This made it possible to share Dendron without any additional setup but was a
special case that required manual configuration. Today, we are introducing self
contained vaults which removes the distinction between vaults and workspaces and
radically simplifies the management and sharing of notes in Dendron.

### Self contained vaults

[Self Contained Vaults](https://docs.dendron.so/notes/aOOBYTowLEKJDEtLWFiHb) contain all the information needed to manage, edit, and publish notes without the need for a workspace (in fact, we are deprecating and removing the workspace altogether moving forward).
What this means for you:

- You can copy or sync your vaults across devices and have them **just work** without additional configuration
- You can publish or share any vault by itself or as a collection.

Note that these usecases are already possible today but currently require
many extra steps as well as bespoke configuration to get working. With self contained vaults that's
no longer the case, and you can sync, share, and publish with confidence.

### What's different about self contained vaults?

In technical terms, we made a few changes to how vaults are set up and laid out:

- Self contained vaults include `dendron.yml` and `dendron.code-workspace`
  files, which makes it possible to open or publish any individual vault.
- Notes in self contained vaults are stored inside a `notes` folder, which makes
  the folder view cleaner and makes it possible to add a `README.md` at the top
  level for services like GitHub.
- When you add a new vault while using self contained vaults, the vault will be
  placed under the `dependencies` folder with a consistent naming scheme. This
  will make vaults easier to reuse in the future.

### Can I use self contained vaults?

Yes! Right now we are rolling out self contained vaults to a portion of new
Dendron users, and we'll be expanding that portion over the next few weeks.
We'll then roll this feature out for everyone, and provide a way for existing
users to migrate their existing setups.

If you'd like to try it out in a new workspace, you can follow the
[self contained vaults configuration](https://wiki.dendron.so/notes/o4i7a81j778jyh7wql0nacb#configuration)
to enable the feature then create a new workspace. Otherwise follow these instructions to [migrate existing vaults manually](https://wiki.dendron.so/notes/aikv0yamnfkcowlol7qeldy),
or stay tuned for when we release a new [doctor command](https://wiki.dendron.so/notes/ZeC74FYVECsf9bpyngVMU) which can migrate your vaults automatically.

--- 

![[blog.subscribe]]
