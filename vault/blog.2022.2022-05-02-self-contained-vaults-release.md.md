---
id: g98s3m6jft4gnb546y7i4xg
title: 2022 05 02 Self Contained Vaults Release
desc: ''
updated: 1651527766161
created: 1651526168935
excerpt: "Vaults and workspaces stood out as a point of confusion for both new and existing users, but we are solving this with the upcoming release of Self Contained Vaults."
image:
  url: >-
    https://org-dendron-public-assets.s3.amazonaws.com/images/blog-self-contained-vaults-banner.jpg
  alt: >-
    A hand writing Self Contained Vaults on a label, surrounded by plant pots and miniature gardening tools.
---

Dendron's mission is to help humans organize, find, and work with any amount of
knowledge. We've shipped many features last year that got us closer to this goal -- some of our favorites include [[note traits|dendron.topic.traits]], [[block references|dendron.topic.note-reference#block-references]],
[[file links|dendron.topic.links#file-links]], integration with [[other|dendron://dendron.dendron-site/dendron.topic.pod-v2.ref.builtin.google-docs.export]]
[[tools|dendron://dendron.dendron-site/dendron.topic.pod-v2.ref.builtin.airtable.export]], and [[advanced note refactoring|dendron.ref.commands#header-operations]].

While we've made significant improvements to the note taking process, our
underlying mechanism for managing notes (vaults and workspaces) stood out as a
point of confusion for both new and existing users.

As a refresher - a Dendron
[[Vault|dendron://dendron.dendron-site/dendron.topic.vaults]] is a collection of
notes and assets inside a folder. A workspace is a collection of vaults. Vaults can't function without
workspaces so sharing a vault still required that the recipient setup their own
workspace. In addition, Dendron workspaces are related but not equivalent to
VSCode workspaces but there was enough overlap that it was hard to figure out
the difference.

We started addressing this issue with [[Workspace Vaults|dendron://dendron.dendron-site/dendron.topic.vaults#workspace-vault]].
This made it possible to share Dendron without any additional setup but was a
special case that required manual configuration. Today, we are introducing self
contained vaults which removes the distinction between vaults and workspaces and
radically simplifies the management and sharing of notes in Dendron.

### Self contained vaults

[[Self Contained Vaults|dendron://dendron.docs/rfc.42-self-contained-vaults]] contain all the information needed to manage, edit, and publish notes without the need for a workspace (in fact, we are deprecating and removing the workspace altogether moving forward).
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
[[self contained vaults configuration|dendron.topic.vaults.self-contained#configuration]]
to enable the feature then create a new workspace. Otherwise stay tuned for when we release a new [[doctor command|dendron.topic.doctor]] which can migrate your vaults automatically.
