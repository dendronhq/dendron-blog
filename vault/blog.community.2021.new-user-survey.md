---
id: AitIUzlK955P5EFojPjxz
title: 2021 Dendron New User Survey Results
desc: >-
  The new user survey was open for several months in 2021, where we were prompting new Dendron users within VS Code itself. We had few thousand  respondents take that opportunity to give us feedback.
updated: 1643263623778
created: 1642630788714
image:
  url: >-
    https://org-dendron-public-assets.s3.amazonaws.com/images/2021-survey-banner.png
  alt: Computer sitting on a desk with plants
date: '2022-01-27'
excerpt: >-
  The new user survey was open for several months in 2021, where we were prompting new Dendron users within VS Code itself. We had a few thousand respondents take that opportunity to give us feedback.
author: Derek Ardolf
published: false
---

![Computer sitting on a desk with plants](https://org-dendron-public-assets.s3.amazonaws.com/images/2021-survey-banner.png)

The new user survey was open for several months in 2021, where we were prompting new Dendron users within VS Code itself. We had a few thousand respondents take the opportunity to give us feedback.

## What backgrounds do our users have?

![Bar graph displaying different backgrounds of users](https://org-dendron-public-assets.s3.amazonaws.com/images/2021-survey-primary-background.png)

Users were asked about their backgrounds. Just over half of respondents had a background as **Software Developers** (53%), while the next largest group were **Students** (14%).

Approximations of remaining background options:

- **Researcher** (7%)
- **Manager** (7%)
- **DevOps** (7%)
- **Technical Writer** (4%)

The **Other** (8%) were spread across the following groups:

> The percentages are in relation to the total number of respondents in **Other**

- Systems/Infrastructure/IT/InfoSec Administrators/Engineers (13%)
  - Solutions Architects
  - InfoSec / CyberSecurity
  - Systems Engineers/Administrators
  - etc.
- General Hobbyist/Multipotentialite/Polymath (8%)
- Data Scientist (6%)
- Artist (Designer/Musician/etc.) (5%)
- Author/Writer/Blogger (3%)
- Teacher/Professor (3%)

There were some smaller groups that stood out in the **Other** category, having one to three respondents:

- Therapists
- Legal (Lawyers/Law Graduates)
- GeoChemistry 
- Pharmacist
- Biologist
- D&D Player
- Dentist

## What are people using Dendron for?

![Bar graph displaying different uses users have for Dendron](https://org-dendron-public-assets.s3.amazonaws.com/images/2021-survey-purpose-of-dendron.png)

New users were able to select all that applied. A majority of users are coming to Dendron, first and foremost, for a **Personal Knowledge Base** (80%) solution.

Approximations of remaining uses:

- **Todos and Agenda** (57%)
- **Research** (47%)
- **Meeting notes** (45%)
- **Team knowledge base** (29%)
- **Publishing** (22%)

The **Other** (18%) included the following groups:

> The percentages are in relation to the total number of respondents in **Other**

- Student/Learning/Class/Academia Notes (4%)
- Journaling (4%)
- Content Creation and Non-fiction/Fiction Writing (3%)
- Project / Software Documentation (2%)
- System/Product Configuration and Design (2%)
- CRM (1%)
- Second Brain (1%)
- Gaming Notes (D&D, RPGs, General) (1%)

There were some smaller groups that stood out in the **Other** category, having one to three respondents:

- Scripted/Automated documentation creation
- Tracking, Reading, and Taking Notes on Books
- Recipes / Cookbook
- Drafting GitHub issues/MRs
- Event planning
- Presentations

## Are users coming from any existing tools?

![Bar graph displaying different tools used before or with Dendron](https://org-dendron-public-assets.s3.amazonaws.com/images/2021-survey-previous-tools.png)

New users were able to select all that applied. More users said they were coming from **No Previous Tool** (26%) than users who found themselves looking at Dendron after something else, with **OneNote** (25%) coming in a close second.

Approximations of remaining previous (or parallel) tools:

- **Notion** (23%)
- **Google Keep** (19%)
- **Obsidian** (18%)
- **Evernote** (14%)
- **Roam** (5%)
- **Logseq** (5%)
- **Foam** (5%)

15% of respondents provided additional information under **Other**, providing a total of over **70 different tools and workflows.** Here are the top **Other** tools listed.

> The percentages are in relation to the total number of respondents in **Other**

- Joplin (9%)
- org-mode / org-roam / emacs (6%)
- Bear (6%)
- Apple Notes (4%)
- Plain Markdown or text files (4%)
- Trello / Confluence / Jira (4%)
- Typora (3%)
- Physical notes (2%)

No popular static site generators (SSGs), such as Sphinx, Hugo, Jekyll, etc. were submitted to the tool list.

## Do users have plans on publishing their notes?

![Bar graph displaying levels of interest in publishing with Dendron](https://org-dendron-public-assets.s3.amazonaws.com/images/2021-survey-publishing-interest.png)

New users were only able to select a single response, if they were to respond to this question at all. A majority of users were **Curious** (39%) about publishing, or otherwise already saying **Yes** (36%) to planning publishing. The remaining respondents said **No** (25%) and were not interested in Dendron's publishing capabilities.

## Takeaways

The Dendron team has been acting on user feedback and shipped several features.

### PKM and Task Management

Most users are drawn to Dendron for Personal Knowledge Management (PKM) and task management.

The Dendron team has been acting on user feedback and shipped some of the following features:

- On PKM
  - [The Open PKM Catalogue](https://pkm.dendron.so): This work-in-progress is meant to be a reference of all things PKM.
  - Improvements to [importing existing Markdown files](https://wiki.dendron.so/notes/f23a6290-2dec-45dc-b616-c218ee53db6b/).
  - Better workflows, such as using [multiple vaults with private and public notes](https://wiki.dendron.so/notes/6DZiBObwhZNYRjnokQ422/).
- On Task Management
  - [Task Notes](https://wiki.dendron.so/notes/SEASewZSteDK7ry1AshNG/) were introduced: a special note type created specifically for tracking the status, ownership, and other details of tasks.
    - This feature continues to evolve based on community feedback, and [users contributing to the GitHub Discussion](https://github.com/dendronhq/dendron/discussions/1358).
  - [Note Traits](https://wiki.dendron.so/notes/EQoaBI8A0ZcswKQC3UMpO/) were introduced: these are what power the different types of notes, including task notes.
    - Read the [RFC](https://docs.dendron.so/notes/E8ZUvTzJ7cVOyZtqHiIKX/) for more information, such as ideas around [task note enhancements](https://docs.dendron.so/notes/E8ZUvTzJ7cVOyZtqHiIKX/#a-to-do-note-type). This feature continues to evolve based on community feedback, and [users contributing to the GitHub Discussion](https://github.com/dendronhq/dendron/discussions/1876).

### Ease of use

Half of respondents said they were developers, but the other half is a mix of tech and non-tech backgrounds. This includes users for whom Dendron is their first introduction to [VS Code](https://code.visualstudio.com/), [git, and GitHub](https://wiki.dendron.so/notes/vsAxYld4zsbD2XjKoh7OP/).

Based on this, we've shipped some of the following features to make it easier for these users to get started with Dendron:

- [Refreshed Getting Started Guide](https://wiki.dendron.so/notes/678c77d9-ef2c-4537-97b5-64556d6337f1/): This was a complete redesign of our getting started tutorial. We've added links to all concepts as well as step-by-step instructions on each option (instead of assuming prior knowledge on the user).
- Improvements to `Change Workspace` and `Initialize Workspace` now make navigation easier for users to select workspaces via a file explorer.
- [[The Five Minute Journal with Dendron and Visual Studio Code|blog.2022.2022-01-05-five-minute-journal-dendron-vscode]]: This blog post was made due to interest in [schemas](https://wiki.dendron.so/notes/c5e5adde-5459-409b-b34d-a0d75cbb1052/) and [templates](https://wiki.dendron.so/notes/861cbdf8-102e-4633-9933-1f3d74df53d2/). We created the blog post and updated the documentation to create a better introduction to the power of these features.
- Users are now prompted when running [`Delete Node`](https://wiki.dendron.so/notes/eea2b078-1acc-4071-a14e-18299fc28f47/#delete-node), and shown what links will break throughout documentation _before_ confirming deletion.
  - [`Dendron Doctor`](https://wiki.dendron.so/notes/ZeC74FYVECsf9bpyngVMU/) has also had similar improvements, such as [`findBrokenLinks`](https://wiki.dendron.so/notes/ZeC74FYVECsf9bpyngVMU/#findbrokenlinks), to make it easier to see where documentation improvements can be made.

Many of our new users are coming to Dendron as their first tool for personal knowledge management. For users coming in with prior experience, there was no single tool that folks were migrating from. Instead, we had a massive list of previous tools. For those coming from existing tools, we have a [migration guide](https://wiki.dendron.so/notes/f9b4fc21-7613-4c8a-9257-cec4c06b67f9/) that continues to grow.

> We are looking to the community to [help us improve and expand the source documentation](https://github.com/dendronhq/dendron-site/blob/master/vault/dendron.guides.migration.md)!

### Interoperability

Within the Dendron Discord, users have mentioned their interest in _interoperability_: they want a single source that they export/import their notes to/from. Different tools co-exist in workflows and can be used concurrently.

Our users continue to integrate information managed by Dendron with **pods** or their own tooling. In Dendron, [pods](https://wiki.dendron.so/notes/66727a39-d0a7-449b-a10d-f6c438185d7f/) refer to any tool or location that contains information and how Dendron manages that information: [Markdown files](https://wiki.dendron.so/notes/13c4a608-0a32-4c62-9c7e-2b7f9f2d18bf/), [GitHub issues](https://wiki.dendron.so/notes/PuDUEyUAPmvpBvaFWHDOS/), [Notion](https://wiki.dendron.so/notes/eOw3TC9KgdbBvhyU7pyGl/), and social media (Twitter, Facebook, etc.) are pod examples.

Internally, the Dendron team makes extensive use of pods. For example, all tasks are [exported with the Airtable Pod](https://wiki.dendron.so/notes/c8ljkYY3eVkkmTNumc0C7/) so we can utilize alternative views such as Kanban and better task querying (eg. all bugs that have had no updates in the last 7 days).

### Publishing

Dendron stands out compared to other SSGs due to our UX/DX in _creating and managing_ notes, in addition to the actual _publishing_ of notes. For the 75% of users curious about or interested in publishing: we maintain GitHub Templates for easier, more automated publishing on popular platforms:

- [Dendron publishing with Netlify](https://wiki.dendron.so/notes/yetuum6o9wZi6eVJQBbQb/)
- [Dendron publishing with GitHub Pages and GitHub Actions](https://wiki.dendron.so/notes/FnK2ws6w1uaS1YzBUY3BR/)

We, ourselves, have had a journey of publishing within the Dendron tool chain. We've gone from [Jekyll](https://jekyllrb.com/), to [11ty](https://www.11ty.dev/), and eventually to [Next.js](https://nextjs.org/) (a story for another time!). Using Dendron's built-in publishing provides the best experience, publishing our blogging and documentation sites, but users can make use of other SSGs with their favorite themes by [exporting Dendron notes](https://wiki.dendron.so/notes/ccab31c4-e9ca-4ee8-b754-f786a3f3be6e/).

## Last words

We've set aside the majority of this quarter to iterate on the feedback you've given us and are committed to making Dendron the absolute best tool (and community) for thought for 2022 and beyond!

![[blog.community#details,1]]

---

![[Subscribe|dendron://dendron.blog/blog.subscribe]]
