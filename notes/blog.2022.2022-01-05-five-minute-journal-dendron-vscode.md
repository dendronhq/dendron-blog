---
id: P1DL2uXHpKUCa7hLiFbFA
title: The Five Minute Journal with Dendron and Visual Studio Code
desc: >-
  The five minute journal (5MJ) is a simple but effective way to get started
  with note taking. We'll go over a daily template that you can use to add some
  structure to your days.
updated: 1655505292011
created: 1640790736919
image:
  url: >-
    https://org-dendron-public-assets.s3.amazonaws.com/images/journal-with-laptop.png
  alt: Journal sitting up against a laptop
date: '2022-01-05'
excerpt: >-
  Add some structure to your days using five minute journals (5MJ) schemas, and VSCode
author: Derek Ardolf
published: true
---

![Journal sitting up against a laptop](https://org-dendron-public-assets.s3.amazonaws.com/images/journal-with-laptop.png)

It's 2022 and you're looking to start off the year right by keeping a journal. Where to start? _The Five Minute Journal_ (5MJ)[^1] is a simple but effective way to get started with note taking.

## The Five Minute Journal

Tim Ferriss,[^2] world-famous entrepreneur and author of books such as _Tribe of Mentors_,[^3] uploaded a video in 2020 all about his approach to note taking with physical notebooks.[^4] 5MJ helps him express gratitude, make days better, and focus on mindfulness.

In this post, we'll be going over how to create your own 5MJ using [Dendron](https://www.dendron.so/). Dendron is a structured note taking tool for developers that is open source, local first, and integrated with Visual Studio Code (VS Code).

## Prerequisites

This post expects that you've gone through the [Dendron Getting Started Guide](https://wiki.dendron.so/notes/678c77d9-ef2c-4537-97b5-64556d6337f1/) and have a workspace opened to work with. If you're new to Dendron, make sure to take a look.

## Concepts

### Daily journal notes

Daily journal notes are special notes meant to easily track your everyday life. Dendron also has a built-in [Calendar View](https://wiki.dendron.so/notes/25287595-96bb-410b-ab46-eb9a26b0e259/#calendar-view) that helps you visually navigate and create new journal entries.

### Templates

Templates are notes with pre-outlined content meant for reuse. Templates can either be inserted into an open note with the `Dendron: Apply Template` command, or automatically applied at note creation with [Schemas](https://wiki.dendron.so/notes/c5e5adde-5459-409b-b34d-a0d75cbb1052/). These are meant to reduce friction in the creation of new content, providing standardized outlines to your notes.

### Schemas

As you end up creating more notes, it can be hard to keep track of them all. This is why Dendron has **schemas** to help you manage your notes at scale. Think of schemas as an **optional type system** for your notes. They describe the hierarchy of your data and are themselves, represented as a hierarchy.

## Steps

### Create 5MJ template

- Open [lookup](https://wiki.dendron.so/notes/a7c3a810-28c8-4b47-96a6-8156b1524af3.html) (`Ctrl+L` / `Cmd+L`)

- Type `templates.daily-5mj` in the text prompt and hit enter to create the template

- Copy and paste the following markdown:

```markdown
<!--
Based on the journaling method created by Intelligent Change:
- [Intelligent Change: Our Story](https://www.intelligentchange.com/pages/our-story)
- [The Five Minute Journal](https://www.intelligentchange.com/products/the-five-minute-journal)
-->

## Morning

<!-- Fill out this section after waking up -->

### Gratitude

I am grateful for:

1.
2.
3.

### What would make today great?

1.
2.
3.

### Daily affirmations

I am...

## Evening

<!-- Fill out this section before going to sleep, reflecting on your day -->

### Amazing things that happened today

1.
2.
3.

### How could I have made today even better?

I could have made today better by
```

- Save the file.

You now have a new template with the 5MJ outline.

### Create 5MJ schema

> Templates can be used with or without schemas. Run [Insert Note](https://wiki.dendron.so/notes/eea2b078-1acc-4071-a14e-18299fc28f47.html#insert-note) to insert a template into a currently opened note.

- Open [schema lookup](https://wiki.dendron.so/notes/60c03500-98e4-4a02-a31e-2702b4068a88.html) (`Ctrl+Shift+L` / `Cmd+Shift+L`)
- Type `5mj` in the text prompt and hit enter to create the schema, which should look like the following:

```yml
version: 1
imports: []
schemas:
  - id: 5mj
    children: []
    title: 5mj
    parent: root

```

### Update 5MJ schema contents

We are going to use [Inline Schema](https://wiki.dendron.so/notes/c5e5adde-5459-409b-b34d-a0d75cbb1052.html#inline-schema-anatomy), a simpler schema format that takes less lines and uses indentation for visual understanding.

- Replace the content of `5mj.schema.yml` with the following:

```yml
version: 1
schemas:
# Daily is the top most schema since its parent is 'root' it must have an identifier
# this identifier 'daily' will be used when using 'Lookup (schema)' command.
- id: daily
  parent: root
  title: daily
  desc: ""
  # Children of the top most schema do not need to contain identifier and just 
  # require a 'pattern' to be set to match the hierarchy of notes.
  children:
    - pattern: journal
      children:
          # This pattern matches the YYYY (year) child hierarchy
        - pattern: "[0-2][0-9][0-9][0-9]"
          children:
              # This pattern matches the MM (month) child hierarchy
            - pattern: "[0-1][0-9]"
              children:
                  # This pattern matches the DD (day) child hierarchy
                - pattern: "[0-3][0-9]"
                  # As with regular schema we can set the template to be used with
                  # the match of our notes. Below is an example usage of shorthand template
                  # definition (which defaults to type: note). 
                  desc: Five Minute Journal
                  template: templates.daily-5mj
```

The `pattern` attribute is using a [Glob Pattern](https://wiki.dendron.so/notes/c6fd6bc4-7f75-4cbb-8f34-f7b99bfe2d50.html#glob-pattern), which is an expression used to match ranges and combinations of characters.

To match with the daily journal structure:

- Example: `daily.journal.2021.12.31`
- Patterns:
  - Year: `[0-2][0-9][0-9][0-9]` means match the range `0000 - 2999`
  - Month: `[0-1][0-9]` means match the range `00 - 19`
  - Day: `[0-3][0-9]` means match the range `00 - 39`

This means all new daily journal notes are within pattern ranges.

### Create a new daily journal

Creating a daily journal entry results in the `templates.daily-5mj` template automatically inserted.

- Run `Create Daily Journal Note` (`Ctrl+Shift+I` / `Cmd+Shift+I`)

You should see a new daily journal note with the 5MJ template inserted.

![Create 5MJ Daily Journal from Schema and Template](https://org-dendron-public-assets.s3.amazonaws.com/images/5mj-new-daily-journal.gif)

## Congratulations!

### Key takeaways

After doing this, you've now:

- Created a 5MJ template
- Created a 5MJ schema
- Created your first daily journal with the 5MJ template applied via schema

### Next steps

Now what? You have daily journals using templates, but Dendron can do much more. It's an open source, local-first knowledge management solution that scales as you do.

- Learn to [swiftly create schema by targeting existing note hierarchies](https://wiki.dendron.so/notes/gHERCRoEXzASfXorBgZN0.html)
- Learn to level-up your daily life with [the bullet journaling workflow](https://wiki.dendron.so/notes/e65dfe53-41f7-4b16-b870-dadec1775497.html)
- Learn to explore your schema visually using the [schema graph](https://wiki.dendron.so/notes/587e6d62-3c5b-49b0-aedc-02f62f0448e6.html#schema-graph)
- Check out an end-to-end workstyle, managing 20k notes, using schemas and daily journals from [A Day in Dendron](https://wiki.dendron.so/notes/fzHazEFWTpUVexmv/)
- [Dendron FAQ](https://wiki.dendron.so/notes/683740e3-70ce-4a47-a1f4-1f140e80b558/)
- [Dendron Concepts](https://wiki.dendron.so/notes/c6fd6bc4-7f75-4cbb-8f34-f7b99bfe2d50/)

---

![[blog.subscribe]]

[^1]: [_The Five Minute Journal_](https://www.intelligentchange.com/pages/customers#journal), by [Intelligent Change](https://www.intelligentchange.com/pages/our-story)
[^2]: It's hard to use one sentence to describe all the things Tim Ferris does. He has one of the most popular podcasts in the world, and has authored several books from all of his notes and interview content. He seems shorter in person. Anyway, learn more [at his website](https://tim.blog/)!
[^3]: For a list of books, see [Books by Tim Ferriss](https://tim.blog/tim-ferriss-books).
[^4]: The video: [How I Journal and Take Notes: Brainstorming + Focusing + Reducing Anxiety](https://youtu.be/UFdR8w_R1HA). For a companion guide to the video, take a look at _[How Tim Ferriss Uses The Five Minute Journal: 6 Tips For New Journalers](https://www.intelligentchange.com/blogs/read/how-tim-ferriss-uses-the-five-minute-journal-6-tips-for-new-journalers)._
