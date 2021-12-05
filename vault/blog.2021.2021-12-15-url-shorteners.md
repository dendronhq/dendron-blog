---
id: BaA0ZOGlMmQePdynOaZ3a
title: "Better Your Links with The Best URL Shorteners"
desc: 'Comparing options for URL shortener services, including open source options for hosting your own.'
updated: 1638684769147
created: 1638683039838
image:
  url: >-
    https://org-dendron-public-assets.s3.amazonaws.com/images/blog-url-shorteners.png
  alt: Visual Studio Code logo
date: '2021-12-15'
excerpt: >-
  Comparing options for URL shortener services, including open source options for hosting your own.
author: Derek Ardolf
published: false
---

![Logos of URL shorteners surrounding a tall mannequin next to a shorter mannequin](https://org-dendron-public-assets.s3.amazonaws.com/images/blog-url-shorteners.png)

At Dendron, we wanted to get a better idea of how people use our documentation and discover our community. One way to get insight is via _URL shorteners_.

## Benefits of URL shorteners

**Analytics:** How many clicks? From what geographic regions? On what dates? From what location? Sharing links out in the world doesn't show how much actual engagement occurs, unless things like clicks are trackable.

**[UTM parameters](https://blog.hootsuite.com/how-to-use-utm-parameters/)**: Custom parameters can be used without lengthening your URLs. People use UTM parameters as an additional way to track where clicks come from.

**Easier to read and share:** Instead of having a large link, such as the Dendron links using their custom `id` values, shortlinks can make things "prettier" and more identifiable.

**Shorter URLs:** This is _why_ they are called _URL shorteners_. Does this even have to be said? Links can get very long, depending on the link being shared. Are you sharing Google Doc links, links with UTM parameters, or just otherwise long links? Why not shorten it?

**Moving targets:** Pages move. Endpoints for shortened URLs might migrate, and certain URL link shorteners allow you to modify the destination, maintaining link health.

**Branding:** Custom domains, or subdomains, can be used with link shortener services. For Dendron, as an example, we use `links.dendron.so/*`.

## Comparing services

There are many services out there for achieving this goal.

### Switchy

![Screenshot of Switchy landing page](https://org-dendron-public-assets.s3.amazonaws.com/images/blog-urls-switchy.png)

> _"Shorten, customize and track your links with A/B testing, retargeting pixels, etc."_

- **Open Source:** No
- **Subscription Service:** Yes
  - **Cost:** Both subscription and one-time-purchase options
    - _Recommended:_ One-time-purchase options, starting at **$39**, on [AppSumo](https://appsumo.com/products/switchy/)
    - _Not recommended:_ Plans ranging from **$47/mo** to **$119/mo**

Looking at [Switchy](https://switchy.io), I've become a fan. This is a newer service that looks to compete very well when it comes to provided features. They have a nice list of perks:
- [API Docs](https://developers.switchy.io/), if wanting to create custom tooling.
- The AppSumo route feels like a huge win, cost-wise, compared to other big-name managed services.
- Team members: this means no shared login!
- Support for custom domain(s), with easy-to-follow documentation on implementation.

![Screenshot of Switchy smartpages wizard](https://org-dendron-public-assets.s3.amazonaws.com/images/blog-urls-switchy-smartpages.png)

A differentiator: Switchy bundles in an additional perk called [Smartpages](https://blog.switchy.io/what-are-smartpages-and-why-you-should-use-them/). These work similar to services like [Linktree](https://linktr.ee/) and [SleekBio](https://sleekbio.com/), being optimized landing pages for mobile viewing. People use these in their social media profiles, as a gateway to all the things: latest blog posts, projects, other social media, etc. One page to rule them all. Gaining this as a bundled option is an excellent bonus, given that people would otherwise need to signup for (and potentially pay for) this as a single service provided elsewhere.

Other link shorteners, for comparison, on AppSumo:
- [LinxShort: Branded Link Shortener](https://appsumo.com/products/marketplace-branded-link-shortener/)
- [T2M URL Shortener](https://appsumo.com/products/t2m-url-shortener/)
- [MicroLinks](https://appsumo.com/products/microlinks-url-shortener/)
- [Minilinq](https://appsumo.com/products/marketplace-minilinq-complete-premium-url-link-shortener/)

### Bitly

![Screenshot of Bitly landing page](https://org-dendron-public-assets.s3.amazonaws.com/images/blog-urls-bitly.png)

> _"A URL shortener built with powerful tools to help you grow and protect your brand."_

- **Open Source:** No
- **Subscription Service:** Yes
  - **Cost:** Subscription
    - Free plan (limited features)
    - Paid plans ranging from **$29/mo** to greater than **$199/mo**

[bitly](https://bitly.com/) is one of the most well-known services. The free plan allows you to get some minimal analytics (number of clicks and geographic origin counts), using the default shortlink domain of `bit.ly` (example: https://bit.ly/dendron-lookup), and you can create up to 100 links per month. For a free plan, this is a pretty great service.

Once you want additional features, like custom domains or more detailed analytics, the paid options will be needed to achieve those goals. Many of the services I see out there seem to work the same way, providing a very similar experience.

### Kutt

![GIF scrolling view of Kutt landing page](https://org-dendron-public-assets.s3.amazonaws.com/images/blog-urls-kutt-it.gif)

> _"**Kutt** your links shorter. Manage links, set custom domains and view stats."_

- **Open Source:** [MIT](https://github.com/thedevs-network/kutt)
  - [On GitHub](https://github.com/thedevs-network/kutt)
- **Managed/Hosted Option:** Yes. Though, their website says, `"(Signup has been disabled temporarily.)"`
  - **Cost:** N/A

_[Kutt](https://kutt.it/)_ is a self-hosted, open source option written in TypeScript. This looks to be one of the few non-PHP options I could find. The example website looks unavailable for testing out, at the moment, with sign-ups currently disabled.

Another open source alternative, which looks sleek and well maintained, would be _[Shlink](https://shlink.io/)_ (written in PHP). Kutt and Shlink would be the two services, based on modernization and active contributors, that I'd be comparing if looking to go DIY.

![Screenshot of Shlink landing page](https://org-dendron-public-assets.s3.amazonaws.com/images/blog-urls-shlink.png)

## Final Thoughts

There are a ton of services out there, all vying for your attention, when it comes to URL shorteners. This is just a snapshot. Switchy may also be taken down from the AppSumo deals site in the future, which would make the decision harder since it would become a subscription-based service (like Bitly and Rebrandly).

There are more that I haven't covered, that are quite popular, like:

- [`bl.ink`](https://www.bl.ink/)
- [`tiny.url`](https://tinyurl.com/app)
- [`Rebrandly`](https://www.rebrandly.com/)

Some people experiment with low-maintenance, limited-feature, DIY setups like the [`GitHub Pages URL Shortener`](https://github.com/nelsontky/gh-pages-url-shortener): a link shortener that can run on GitHub Pages. Though, this doesn't give you the analytics data you may be seeking. For more links, there is a [URL Shorener Awesome List](https://github.com/738/awesome-url-shortener) that I hope continues to grow and catalog all of the options.

In the end, it depends on what users are looking for. **At Dendron, we're going with [`Switchy`](#switchy).** The overall features, along with continuous updates completed throughout their [public roadmap](https://trello.com/b/VS8SXCnC/switchyio-transparent-public-roadmap), have made it the most attractive option. It should be a great option for individuals and businesses alike without the **~$600/yr** costs of other services, nor the continual maintenance costs associated with self-hosting open source options.