---
id: 072ed07tikrhv6e4ilwcv2q
title: Growing Knowledge Bases from the Bottom Up
desc: >-
    We can think about growing our knowledge bases from two directions: top-down structure or bottom-up connections. In cases where we are unsure how to organize new knowlege, we can use bottom-up connections like tags and links to help us create hierarchies. 
updated: 1650341062098
created: 1649116001263
image:
  url: https://org-dendron-public-assets.s3.amazonaws.com/images/bottom-0.jpg
  alt: Photo looking up the trunk of a tree
date: '2022-04-05'
excerpt: >-
    An exploration in expanding knowledge bases with new information
author: John Knowles
publish: true
---

![Photo looking up the trunk of a tree](https://org-dendron-public-assets.s3.amazonaws.com/images/bottom-0.jpg)

We can sort information in [top-down and bottom-up](https://en.wikipedia.org/wiki/Top-down_and_bottom-up_design) ways. Like peanut butter and jelly, each is great on its own, but when we bring them together—we make something *magic*. 

However, when we are learning something new or seeing something for the first time, the process of sorting through this information can feel very *un-magical*. 

In this post, we’ll outline a process for intaking new information into our knowledge bases and explore a simple way we can use a bottom-up approach to achieve top-down organization.

### Top-Down Organization
In order to make use of top-down organization, we need to define categories to sort our information into. In addition to our units of information, we need an *external structure* to facilitate their organization. 

Consider the ways libraries sort books using the [Dewey Decimal System](https://en.wikipedia.org/wiki/Dewey_Decimal_Classification). By using an *external* system of categorization–*call numbers*–it becomes simple and easy to find a book in its unique place on the shelves.

### Bottom-Up Organization
In contrast, in bottom-up organization, we rely on *internal connections* between our units of information to express organizational structure. For example, the Internet is organized in a bottom-up fashion. Through [hyperlinks](http://wikipedia.org/wiki/Hyperlink), each page can link to any other page. 

We can think of top-down organization as breaking down larger concepts into smaller concepts, while we can think of bottom-up organization as piecing together larger concepts from smaller concepts.  

Because we need to know the categories in advance to use top-down organization, it can be hard to make use of structures like hierarchies when we are learning something new.

Instead, we ought to take a different approach. 

### Amoeba Pattern
The Amoeba pattern offers us guidance in situations where we don’t know how to sort information. It tells us to store our information in the **simplest** form at first, and **reshape** it in iterations, as categories become obvious. 

In knowledge bases like Dendron, this means that we should start with a single note, **lumping** all of our incoming information here. As we fill this note with content, we can **reshape** when we have a group of information that is obvious. We can add these as new notes, or link to them from old notes. 

In order to help us manage this reshaping process, our knowledge bases provide us with inline tools like headers and [tags](https://wiki.dendron.so/notes/8bc9b3f1-8508-4d3a-a2de-be9f12ef1821/), and inter-note tools like [links](https://wiki.dendron.so/notes/3472226a-ff3c-432d-bf5d-10926f39f6c2/) and [hierarchies](https://wiki.dendron.so/notes/f3a41725-c5e5-4851-a6ed-5f541054d409/). 

### Algorithms and Expanding Algorithms
Let’s explore an example of how we might apply the Amoeba pattern to add new information to our knowledge bases. Suppose we are working on a Python project in which we need to implement a search algorithm, and we know nothing about the topic of *algorithms*. 

Let’s also suppose we already have information about programming in our knowledge base, like the knowledge base shown in A Hierarchy First Approach to Note Taking, reproduced below. 

![dendron python hierarhcy](https://org-dendron-public-assets.s3.amazonaws.com/images/bottom-1.png){max-width: 300px}

This top-down form allows us to sort information into different *levels of specificity*, while also giving us an *externalized mental model* of our domain. 

How should we go about adding expanding this mental model?

We can follow these steps:

- Acquire a source of information (like  [*Introduction to Algorithms*](https://mitpress.mit.edu/books/introduction-algorithms-third-edition))
- Lump content in a single source note
- Break down lump into (obvious) pieces
- Sort pieces into knowledge base

### Lump Content Together
Before opening up our textbook, we need to make a note to lump the incoming information. We can simple sort this source note under the **books** hierarchy:  **books.introduction-to-hierarchies**.

A reliable strategy for setting up the initial pieces is to follow the model presented in the source information. In our case, Introductions to Algorithms is divided into named sections and chapters, which we can use to create the initial header structure. 

```markdown
## I Foundations
### Chapter 1: The Role of Algorithms in Computing
### Chapter 2: Getting Started
### Chapter 3: Growth of Functions
…
```
Our first move is to use the shape of the incoming material to create high-level separation of content. Our next move will be to shape the low-level chunks of content.

### Break Content Apart
Bottom-up organization doesn’t require we have categories, but it does require we have a set of informational units. As we take notes, we design these units. Using bullet lists, paragraphs, subheadings and separators, we create **pieces** within our lump.

Below is a sample of notes from Chapter 12 on Binary Search Trees:

```markdown
### Chapter 12: Binary Search Trees
Motivation: Fast insertion into sorted list

Operations: 
- insert(value)
- find(value)
- findmin()
- next-larger(node)

Complexity: O(h), where h = height
```
As we create these pieces, we might ask ourselves questions like: Are Binary Search Trees members of a large family of trees? Are there other data-structures used for finding or searching? 

It would be useful if we had a way to keep track of what groups each piece might belong to inline with the content. We do! We call this form of annotating content tagging. 

We can add tags related to the potential groupings for Binary Search Trees.

```markdown
### Chapter 12: Binary Search Trees #tree #search #data-structure 
```
As we intake and process content, we can maintain a set of tags–potential groupings–across all our incoming information for a particular topic. When we are intaking new content, we can use these tags to model how we will reshape our content into a top-down structure.

### Piece Content Together
Recall the Amoeba pattern: lump content, and wait until the groupings are obvious to reshape. 

Tags let us track when these groupings become obvious by letting us decorate a unit of information with multiple labels, and reuse labels across all of our information.

In Dendron, we can view all the content tagged by a particular label under a Tag Note. This lets us both collect cross-note information into one note, but also gives us a perspective on the coverage, or weight of a particular tag. 

A form of [Goldilocks](https://en.wikipedia.org/wiki/Goldilocks_and_the_Three_Bears) thinking is useful here–is the weight of our tag too heavy, too light, or just right? If a tag is too heavy, it might be a good candidate to be broken down further. If a tag is too light, it might not be a useful sorting in our knowledge base. 

As we move to integrate these tags into our knowledge base, we return to the problem at hand: we want to implement a search algorithm in Python. As we look through content tagged with `#search`, we notice a pattern–we commonly see the tags `#data` and `#tree` on the same content as `#search`. Why is this?

Aha! We commonly implement search algorithms using tree data structures. Using the bottom-up structure of tags, we’ve pieced together knowledge that we can use this to expand our Python hierarchy. We already have a place in our hierarchy for data-structures, so we can add a note under this hierarchy as a type of data-structure–a **tree**. 

After creating the note `lang.python.data.tree`, we may even decide that we have obvious groupings, like Binary Search Trees, AVL Trees, and 
B-trees, and create sub-notes for these. 

![algo to hierarchy](https://org-dendron-public-assets.s3.amazonaws.com/images/bottom-2.png)

Tags are a common bottom-up structure in knowledge bases that allow us to build distributed groups. 

As we move to integrate these tags into our knowledge base, we return to the problem at hand: we want to implement a search algorithm in Python. We realize the binary search tree is exactly what we need. We create a note with the implementation that we end up using.

```markdown
<!-- lang.python.data.tree -->

## Summary

An example of a ![[tags.tree]]

## Example
class Node:
    def init(self, val): 
        self.l_child = None 
        self.r_child = None 
        self.data = val 

def binary_insert(root, node): 
    if root is None: 
        root = node
    else: 
         if root.data > node.data:
              if root.l_child is None: 
                  root.l_child = node 
              else: 
                 binary_insert(root.l_child, node) 
         else: 
             if root.r_child is None: 
                root.r_child = node 
             else: 
                binary_insert(root.r_child, node)

- Example from [here](stackoverflow.com/questions/5444394/how-to-implement-a-binary...)
```

The [note reference](https://wiki.dendron.so/notes/f1af56bb-db27-47ae-8406-61a98de6c78c/) `![[tags.tree]]` will show embed the contents of the `#tree` note, rendering as: 

```markdown
## Summary

Trees are ...
```

This allows us to connect our specific Python implementation with the general knowledge we are accumulating about trees. If we navigate to the `tag.tree` note, we also can access everywhere the tag is used in our knowledge base through [backlinks](https://pkm.dendron.so/notes/0486be25-19e4-4fc6-98f6-e5c9908d1161/).

![backlinks](https://org-dendron-public-assets.s3.amazonaws.com/images/bottom-3.png)

With tags, we can work up from our informational units, forming clusters of content as we go. We form groups, then we define categories. In doing so, we extend our top-down structure using bottom-up structures. 

Peanut Butter, meet Jelly.

![[blog.subscribe]]
