---
title: Why and How I built Frontend Exposed with Jekyll, Grunt and Github Pages
date: 2014-06-07 14:00
author: Jørgen
categories: development
meta: blogging, jekyll, static sites, github pages
layout: post
---

The [portfolio site](http://jorgen.co) I created when I was in university hasn't changed in two years. In my imagination, an endless directory could be filled like sites like mine. Each of them broke down the wall between observer and active participant in the industry. Now that they've served their purpose, they're the rubble. They're neglected artefacts that will be buried in time, never to be seen again—except as hosting fees on our credit card statements. Our attention turned instead to the companies we work for, and *their* goals. Nowadays, we sacrifice our precious time and energy to build them up, but we used to be building *ourselves*.

So I decided to create a new outlet for myself. I want it to be very simple, but I still want to have some fun building it. That means having my hands on code. I enjoy the familiar feeling of HTML and CSS, and I believe there's always going to be new things to make with them. I had heard of static site generators many times, but never explored them until this past week. I've now spent around 10 hours researching, testing out different options and customizing the current iteration of this site.

My first Google searches were something like “static site heroku” and “statec site node”. I wanted to get away from the VPS hosting that I'm still using to host my old portfolio. That style of hosting seems antiquated to me. From 22:00–03:00 one night this week, I became intrigued by these static site generators:

- [Wintersmith](http://wintersmith.io/) (javascript)
- [Assemble](http://assemble.io/) (javascript)
- [Jekyll](http://jekyllrb.com/) (ruby)

*Wait, [what's a static site generator?](#)*

I prefer javascript. Jekyll is clearly the most well known project in the list, and perhaps best supported, but I was drawn to the javascript options. I wanted my workflow to include grunt (or gulp, which I have yet to experiment with.)

While I was reading about how other people do these static site generators, I learned about Github Pages. They're a free hosting option, built in to Github, that have incredible symmetry with static site generators. Amazing! I see why Ashley Baxter called static site generators “her jam” in the [latest episode](http://unfinished.bz/71) of [Unfinished Business](http://unfinished.bz). The workflow seems tight, customizable, and reasonably powerful.

I worked for an hour or so with Assemble before I backed out. A few things influenced that decision. I was primed by [this article](#) to be wary of Assemble. The documentation felt sporadic. My impression is that it's a little disorganized,  leaves out important information and doesn't really “get” what I was trying to do (build and deploy a simple site with a blog post or two.) I eventually deployed an Assemble repo to github pages based on a grunt-init generator, but it wasn't straight forward. This was my first contact with grunt-init. It got the job done, but I found it confusing that the grunt team would fragment the tooling landscape with a tool that basically already exists in [Yeoman](http://yeoman.io). After that, I still had to find a custom Makefile that performed a bit of magic before I got my site on the internet. I was frustrated enough by this time that when it wasn't obvious how to make a blog post I dropped Assemble to try something else out.

This is when I started working with grunt-jekyll, which is what I've settled with for now. It suits my affinity for javascript, and jekyll is an established, well documented project. I recommend it for anyone who's doing static site generators for the first time. If you prefer Ruby, then you're in luck. If you prefer javascript, I can say that grunt-jekyll is working well for me so far. Here's what I did to get up and running.

I'm very excited about the potential for flow-inducing workflows with static site generators. I would encourage any and all frontend folks to give them a shot.