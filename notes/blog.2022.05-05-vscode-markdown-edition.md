---
id: upyp4ow9fkpwvu50n8wsvnp
title: 'VSCode - Markdown Edition'
desc: 'With the latest release, markdown gains programming language like tooling in VSCode'
updated: 1652020609694
created: 1651943641756
image:
  url: >-
    https://org-dendron-public-assets.s3.amazonaws.com/images/upyp4ow9fkpwvu50n8wsvnp-pexels-neo-2653362.jpg
  alt: >-
    code editor 
date: 2022-05-08
excerpt: >
    With the latest release, markdown gains programming language like tooling in VSCode 
author: Kevin S Lin
publish: true
---

![code editor](https://org-dendron-public-assets.s3.amazonaws.com/images/upyp4ow9fkpwvu50n8wsvnp-pexels-neo-2653362.jpg)

With the [1.67 release](https://code.visualstudio.com/updates/v1_67), markdown gains programming language like tooling in VSCode 

Specifically:

- drag and drop files into the editor to create a markdown link
- find all references to header|links|files|urls inside of markdown
- rename headers|links inside markdown  (and propagate the changes to all places where the link is used)
- rename markdown files (and propagate changes to all links referencing said file)

If we move past drag and drop, it's notable that all other functions are related to referencing and renaming symbols. These are capabilities that are more commonly associated with programming languages than markdown. 

> A programming language is any set of rules that converts strings... to various kinds of machine code output
> 
> [Wikipedia](https://en.wikipedia.org/wiki/Programming_language#Static_semantics)

Programming languages generally have a strict syntax that constrains the language. IDEs leverage this strict syntax to offer features to manipulate symbols within the language. 

Markdown also has *[syntax](https://daringfireball.net/projects/markdown/syntax)* (albeit more loosely defined) . This makes it possible to introduce similar transformations onto markdown. 

The reason that this functionality is useful (and necessary) for programming languages is because codebases today can be massive, surpassing [hundreds of millions of lines of code](https://www.quora.com/How-many-lines-of-code-is-Google-Chrome). 

Repositories of markdown can also be massive. They are increasingly used to document and store general knowledge - both in the context of personal knowledge management (PKM) and team knowledge management (TKM). 

For purposes of illustration - the primary [vault](https://wiki.dendron.so/notes/6682fca0-65ed-402c-8634-94cd51463cc4) (the circle titled `private`) for the Dendron team has over **400k lines** of markdown. 

![Dendron workspace](https://org-dendron-public-assets.s3.amazonaws.com/images/upyp4ow9fkpwvu50n8wsvnp-dendron-private.png)
> The illustartion is generated using a fork of github's [repo-visualization](https://github.com/kevinslin/repo-visualizer) code, first described [here](https://githubnext.com/projects/repo-visualization/)

Running `cloc` returns the following output:

```
cloc --vcs=git .
github.com/AlDanial/cloc v 1.92  T=7.82 s (1472.4 files/s, 65739.6 lines/s)
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
Markdown                     11494         108500             19         404711
JSON                             3              5              0            369
YAML                            14              1              0            351
-------------------------------------------------------------------------------
SUM:                         11511         108506             19         405431
-------------------------------------------------------------------------------
```


Given the shared syntactical properties and problems of scale between programming languages and markdown, it makes sense that the same tooling can work for both.

VSCode, and IDEs more broadly, help developers manage large code bases by making available tools to leverage and manipulate the **syntax** of programming languages. By shifting some of this tooling to markdown, can we do the same for large markdown repositories?

[Our bet](https://blog.dendron.so/notes/N9VxT7G5SovmncezBAGO2) at [Dendron](https://www.dendron.so/) is a resounding **yes!** This is why we built our knowledge management platform inside of VSCode. By leveraging the paradigms from IDEs and applying them to [structured](https://wiki.dendron.so/notes/c5e5adde-5459-409b-b34d-a0d75cbb1052) markdown, our mission is to help **humans** [manage any amount of information](https://www.kevinslin.com/notes/e1455752-b052-4212-ac6e-cc054659f2bb).
![[blog.subscribe]]

