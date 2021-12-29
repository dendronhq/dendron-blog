---
id: P1DL2uXHpKUCa7hLiFbFA
title: 'Grow with Gratitude and Mindfulness: Using The Five Minute Journal template in Dendron'
desc: >-
  Start your day, and end your day, with a simple journal method. The Five
  Minute Journal (5MJ) helps you express gratitude, make your days better, and
  focus on mindfulness.
updated: 1640793363102
created: 1640790736919
date: '2021-10-25'
excerpt: >-
  Start your day, and end your day, with a simple journal method. The Five
  Minute Journal (5MJ) helps you express gratitude, make your days better, and
  focus on mindfulness.
author: Derek Ardolf
image:
  url: #todo
  alt: #todo
publish: false
---

> Banner image #todo
> - Ref https://www.intelligentchange.com/pages/press
> - Five Minute Journal images: https://drive.google.com/drive/folders/1D8KtyXDvsyL7BTqmZ336Lukzxwx1jeDr

[Dendron](https://dendron.so) helps people and products organize with notes, docs, and knowledge of all the things. A way to make life easier is to use templates. But where to start?

## The Five Minute Journal

One of the most common ways of note taking is in the form of a journal. Let's make it easier for daily use with a template based off of a popular journaling format: [_The Five Minute Journal_](https://www.intelligentchange.com/pages/customers#journal), by [Intelligent Change](https://www.intelligentchange.com/pages/our-story).

The Five Minute Journal helps you express gratitude, make your days better, and focus on mindfulness. For an example of journaling with this method, Tim Ferriss talks uploaded a video in 2020 all about his approach.

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/UFdR8w_R1HA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

> For a related blog post, take a look at _[How Tim Ferriss Uses The Five Minute Journal - 6 Tips For New Journalers](https://www.intelligentchange.com/blogs/read/how-tim-ferriss-uses-the-five-minute-journal-6-tips-for-new-journalers)._

Five minutes a day, that's all we need to start. We'll be going the digital route with Dendron.

## Prerequisites

This post expects that you've at least gone through the [Dendron Getting Started Guide](https://wiki.dendron.so/notes/678c77d9-ef2c-4537-97b5-64556d6337f1/), and have a workspace opened to work with. If you're new to Dendron, make sure to take a look.

## Templates in Dendron

This blog post will walk through the ease of using **templates**.
 
- [**Dendron Templates**](https://wiki.dendron.so/notes/861cbdf8-102e-4633-9933-1f3d74df53d2/): Markdown files with pre-outlined content meant for reuse. Why copy and paste from previous notes, when you can have an outline ready and waiting with templates?

## Create the 5MJ Template

- Open Lookup (`Ctrl+L` on Windows/Linux, or `Cmd+L` on MacOS)
- Enter `templates.daily.journal.5mj`

This should create a new note. Add the following Markdown:

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

You now have a 5MJ template! In any note, you can now run `Dendron: Insert Note` to insert the 5MJ template contents.

## Create a Daily Journal Note

Let's create a new 5MJ for today.

> Add gif/screenshot #todo

- Run `Create Daily Journal Note` (`Ctrl+Shift+I` on Windows/Linux, or `Cmd+Shift+I` on MacOS)
- Open the command palette (`Ctrl+Shift+P` on Windows/Linux, or `Cmd+Shift+P` on MacOS)
- Enter `Dendron: Insert Note`
- Enter `templates.journal.daily.5mj`

You should see your daily journal now populated with the 5MJ template.

### Calendar View

Daily journals can also be navigated to, and created, within the Calendar View.

> Add gif/screenshot #todo

## Summary

You're done! From now on, all new daily journals will use this template.

In this blog post, you learned how to do the following in Dendron:

- Create a 5MJ template
- Create a daily journal note
- Use the 5MJ template in a note

## Next steps

Now what? You have daily journals using templates, but Dendron can do much more. It's an open source, local-first knowledge management solution that scales as you do.

- Learn more about [templates in Dendron](https://wiki.dendron.so/notes/861cbdf8-102e-4633-9933-1f3d74df53d2/)
- [Learn to use the 5MJ template with schemas]() #todo
  - [**Dendron Schemas**](https://wiki.dendron.so/notes/c5e5adde-5459-409b-b34d-a0d75cbb1052/): Configuration files that tell Dendron when a template should _automatically_ pre-populate a new note. What's cool about this: a new note, following the naming scheme of choice, will automatically import a template of your choosing. This is perfect for a daily journal, and can be used for any other type of documentation.
* [Learn more about Lookup](https://wiki.dendron.so/notes/a7c3a810-28c8-4b47-96a6-8156b1524af3/)
* [Learn more about Special Notes like Daily Journal](https://wiki.dendron.so/notes/5c213aa6-e4ba-49e8-85c5-1bdcb33ce202/)
* [Dendron FAQ](https://wiki.dendron.so/notes/683740e3-70ce-4a47-a1f4-1f140e80b558/)
* [Dendron Concepts](https://wiki.dendron.so/notes/c6fd6bc4-7f75-4cbb-8f34-f7b99bfe2d50/)

---

![[blog.subscribe]]