
![Several plants in various stages of early growth and seedlings](https://org-dendron-public-assets.s3.amazonaws.com/images/markus-spiske-4PG6wLlVag4-unsplash.jpg)


## Summary
Dendron is the note-taking tool that helps **people** manage **any amount of information**. 

Today, we are announcing the preview of the Seed Bank - a public registry for general knowledge. 

If you're familiar with package managers like npm, it's kind of like that but for any sort of information, not just code.

The seed bank makes it easy to **discover, reference, and grow** information on things that you care about. This could be a guide on [personal knowledge management](http://pkm.dendron.so/) or a reference to everything [AWS](https://aws.dendron.so/)

With the seed bank, you no longer need to start from zero when looking stuff up - rather, you have a single source of reference that you can grow over time.

## Use Case

This is best demonstrated with an example. You are Jenny, a DevOps engineer that is responsible for managing all deployments, ETL pipelines, and general *backend-ish things* at a recently funded tech startup. 

You live in the shell and dream in POSIX but even you don't remember all the arcane incantations to command the shell in all situations.

![I don't know what's worse--the fact that after 15 years of using tar I still can't keep the flags straight, or that after 15 years of technological advancement I'm still mucking with tar flags that were 15 years old when I started.](https://imgs.xkcd.com/comics/tar.png)
> "[tar](https://xkcd.com/1168/)", by Randall Munroe, licensed under Creative Commons Attribution-NonCommercial 2.5 License

You already use Dendron as a daily journal to track your tasks and you are tired of using google to find the same `curl` option to `POST` data that you looked up at least a dozen times before. You take a visit to the seed bank. 

Because the seed bank is currently in preview, you open up a shell and navigate to your workspace. Since you already have dendron open in vscode, you run `> Create new Integrated Terminal` to open up a shell. 

Because you already have the [dendron-cli](https://wiki.dendron.so/notes/23a1b942-99af-45c8-8116-4f4bb7dccd21.html) installed, you can run the following command

```
dendron seed add dendron.tldr
```

This adds [tldr](https://github.com/tldr-pages/tldr), "collaborative cheatsheets for console commands", to your workspace. 

Adding `tldr` triggers a re-indexing of the newly added files  - the first-time installation will take some time but subsequent initializations will be instant. Once indexing is done, you can now reference `tldr` content in a few keystrokes. 

![tldr tar and curl](https://org-dendron-public-assets.s3.amazonaws.com/images/tldr-lookup.gif)

You can create [wiki links](https://wiki.dendron.so/notes/3472226a-ff3c-432d-bf5d-10926f39f6c2.html) of commonly used commands in your daily journal for even easier access.

Over time, this will create a list of backlinks that will show you the commands you lookup the most often.

![tldr backlinks with tar commands](https://org-dendron-public-assets.s3.amazonaws.com/images/tldr-backlinks.gif)

Your colleagues are flabbergasted at the speed at which you diagnose network issues. They ask you for help and you respond with a series of links. These links are generated with a shortcut and link out to the published version of the TLDR seed. 


![](https://org-dendron-public-assets.s3.amazonaws.com/images/tldr-share-link.gif)

The story doesn't stop here. Over time, you end up publishing your own seeds on what you learned about scaling microservices. There are picked up by engineers from other companies and soon become the go-to guide for anyone doing microservices. 

## Next

It is still early days for the seed bank but hopefully, the above scenario was enough to give you some ideas. You can find the documentation to get started with the seed bank [here](https://wiki.dendron.so/notes/6ff8cbb6-e4b8-449b-a967-277b76e4ecef.html)

With Dendron, we took elements of programming tools (eg. lookup, refactor, schemas) and applied it to the organization of general knowledge. With the seed bank, we are taking aspects of programming languages themselves (eg. composability, modularity) and applying it to knowledge. 

Our mission is to help **people** organize and make sense of any amount of information.  We are doing this by building the [IDE](https://en.wikipedia.org/wiki/Integrated_development_environment) for general knowledge.

Please give it a try and let us know what you think on [discord](https://discord.gg/AE3NRw9), [twitter](https://twitter.com/dendronhq) or [github](https://github.com/dendronhq/dendron/discussions).

---

![[blog.subscribe]]