---
title: viewport units are design gold
date: 2014-06-09
author: Jørgen
categories: design
meta: viewport units, the fold, proportions
layout: post
---
I don't know much about print design, but printing something means giving it fixed dimensions. That's a constraint. Nor am I an academic when it comes to graphic design, but print designers have been basing beautiful designs on this constraint for centuries, presumably shortly after the print press. Since the iPhone, even native app designers enjoy a relatively very limited constraint on the physical dimensions of their work, as seen by the end user. Beyond the mild, superficial advantages of those constraints (notably, the ease of creating a design that doesn't break), great designers have achieved mastery with designs that incorporate the dimensions of the canvas into the geometry of the graphic elements on the canvas. In these masterful, perhaps obsessive designs, how big the elements are, and where they are placed on the canvas, are relative to the height and width of the piece of paper or the iPhone that they're printed on. Their proportions and proximity to one another are connected to the edges, unifying the graphics and the canvas. Unity, as described something like this, leaves me with the impression of a beautiful metaphor for the work of a designer.

Web designers know that we don't have such easy access to this potential expression of mastery. Our canvas is infinite. Much better then to design from the inside out, upwards from the smallest element to the whole. Best then, to design with em units. Fortunately for us though, we can actually start designing from the outside in, if we want, thanks to viewport units. Geometric unity between elements and canvas, without javascript, is within our reach. But of course, not *really*. You can't use viewport units on an iPhone, which totally blows. The way in which vw (viewport width) and vh (viewport height) break in iOS Safari versions 6–8 is actually pretty ridiculous, you should check it out. Of course, vendor prefixes are *for* developing features that aren't ready for production. The impulse to complain comes front using them in our work so often, without fully understanding them. Also, good luck convincing clients, developers, managers, stakeholders, or even creators within other media to give a hoot about some high-in-the-sky ideal of the perfectly unified layout. You've got to be practical.

One very practical case that would be impossible to achieve without either viewport units or javascript is designing with what you might call “the fold”. In this case, we want an element to occupy the entire portion of the screen that is initially visible to the end user. Combining viewport units with another fancy CSS property, flex, you can get a good result with a small amount of simple code.

http://codepen.io/JorgenScott/full/Egsni/

The nice thing about this pattern is that we can carefully design the very beginning of the user's experience of a page, and how it transforms into the next thing when the user scrolls. The example shows a full-screen introduction with elements position at the top, centre and bottom of the viewport that transitions into written content directly below the fold. This type of thing will be much easier to achieve practically in the near future thanks to viewport units.

We fang et a little bit more advanced by basing further elements of the design on the dimensions of the viewport. The big headline is a good candidate, because it only really works in on reasonably large screen in the first example. We could use multiple media queries to assign font-sizes that fit multiple breakpoints, or we could just use viewport units.

http://codepen.io/JorgenScott/full/rqfDx/

By using vw units instead of ems, the headline will now always fit, based on the width dimension of the viewport.

I'm very pleased with viewport units, and I'm looking forward to when they have better browser support. I hope that browser vendors make this a priority, the utility here feels on par with flex and box-sizing (two other excellent additions to CSS!)