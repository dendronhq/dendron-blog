---
id: 7h7zZkjF4Yqz8XSrHS1je
title: "Share Your Notes Online: Publish Dendron with Netlify and GitHub"
desc: ''
updated: 1639005598136
created: 1638387034460
image:
  url: >-
    https://org-dendron-public-assets.s3.amazonaws.com/images/blog-header-dendron-netlify.png
  alt: Logos for Dendron, GitHub, and Netlify
date: '2021-12-08'
excerpt: >-
  Publishing Dendron notes, using Netlify and GitHub, can be done quickly with the Dendron publishing template!
author: Derek Ardolf
published: true
---

![Logos for GitHub, Netlify, and Dendron](https://org-dendron-public-assets.s3.amazonaws.com/images/blog-header-dendron-netlify.png)

[Dendron](https://dendron.so) helps people and products organize with notes, docs, and knowledge of all the things. Let's see how easy it is to publish and have a static site hosted on [Netlify](https://www.netlify.com/)!

You'll learn how to publish your Dendron notes using Netlify and GitHub, which looks like [this demo website](https://link.dendron.so/netlify-demo). This tutorial assumes that you have basic knowledge of GitHub and Visual Studio Code (VSCode).

- [Join GitHub](https://github.com/join)
  - [Learn: Git and GitHub](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/GitHub)
- [Join Netlify](https://app.netlify.com/signup)
- [Download Visual Studio Code](https://code.visualstudio.com/)

> This uses a brand new Dendron Workspace you can later configure to work with your own vaults. Do you already have a workspace you'd prefer using? Reference the Dendron docs for in-depth details on how the template, and other workspaces, can publish to Netlify: [Publishing with Netlify](https://wiki.dendron.so/notes/yetuum6o9wZi6eVJQBbQb/).

## Part 1: GitHub

When logged into GitHub, [click here](https://link.dendron.so/6WuJ) to generate a new Dendron Workspace pre-configured for Netlify publishing. If you're wondering, we're using [this template](https://link.dendron.so/6WuI) on GitHub.

![Generating a new GitHub repo from the Dendron Netlify template](https://org-dendron-public-assets.s3.amazonaws.com/images/github-create-workspace-netlify.gif)

Nice! That's all we need to do for this minimal Dendron setup. To understand what is going on behind the scenes, you can read the [template README](https://link.dendron.so/6WuI).

> Note that this tutorial will work with both private and public repositories.

## Part 2: Netlify

The rest of the steps are done in the Netlify portal.

### Step 1: Import your repository

When logged into Netlify, you start on your `Team Overview` page.

- Click `New site from Git`
- Under `Connect to Git provider`, select `GitHub`
  - You'll be asked configure Dendron for permissions. It's best practice to go with `Only select repositories`, and selecting the repository you made from the template

Once permissions are configured, select the repository in Netlify. There is no need to change any of default values, since the GitHub template is providing them from [`netlify.toml`](https://link.dendron.so/6WuS). Scroll to the bottom, and click `Deploy site`.

![Selecting the GitHub repository in the Netlify import wizard](https://org-dendron-public-assets.s3.amazonaws.com/images/netlify-import-git-repo.gif)

Your website should now be building!

> For more information on Netlify app permissions, to GitHub, refer to [Netlify Docs: Authentication with the Netlify GitHub App](https://docs.netlify.com/configure-builds/repo-permissions-linking/#authentication-with-the-netlify-github-app)

### Step 2: Configure your website name

By default, Netlify generates a random combination of strings. In the example so far, the website is named `elastic-hugle-37bfd5.netlify.app`. If you don't want to own your own domain name, you can at least change the `elastic-hugle-37bfd5` section.

- `Site settings`
- Under `Site information`, click `Change site name`
- Enter new name, and if it is available, click `Save`

![Changing the Netlify App subdomain name](https://org-dendron-public-assets.s3.amazonaws.com/images/netlify-change-site-name.gif)

> For more information on custom domains, beyond the above, refer to [Netlify Docs: Custom domains](https://docs.netlify.com/domains-https/custom-domains/)

### Step 3: View deploy status

Under the `Deploys` tab, in Netlify, you can view the status of your website. This is where build information will be posted whenever new commits are posted to the `main` branch of your repository on GitHub.

This is a great way to check whether build have failed, or are still in progress. If you run into any errors, and aren't sure what to do next, jump into the [Dendron Discord](https://link.dendron.so/discord) where we have a `#questions` channel.

## Summary

You're done! From now on, all new commits you make to your repository on GitHub will trigger a new publishing update to your website.

In this tutorial, you learned how to:

- Create a pre-configured, minimal Dendron Workspace from a template
- Import a repository into Netlify
- Create a custom name for your Netlify website
- View deploy status in Netlify

## Next steps

Now what? Publishing is set, but Dendron isn't just for what you want to share with the world. It's an open source, local-first knowledge management solution that scales as you do.

* [Dendron Getting Started Guide](https://wiki.dendron.so/notes/678c77d9-ef2c-4537-97b5-64556d6337f1/)
* [Dendron Publishing Guide](https://wiki.dendron.so/notes/4ushYTDoX0TYQ1FDtGQSg/)
* [Dendron FAQ](https://wiki.dendron.so/notes/683740e3-70ce-4a47-a1f4-1f140e80b558/)
* [Dendron Concepts](https://wiki.dendron.so/notes/c6fd6bc4-7f75-4cbb-8f34-f7b99bfe2d50/)
* [Netlify Docs Home Page](https://docs.netlify.com/)

---

![[blog.subscribe]]
