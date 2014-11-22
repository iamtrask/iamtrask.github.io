---
layout:     post
title:      "Spark-GPU Development in a Notebook"
subtitle:   "A tutorial on ad-hoc, distributed GPU development on any Macbook Pro"
date:       2014-11-22 12:00:00
author:     "iamtrask"
header-img: "img/post-bg-06.jpg"
---

<p>Speed, Quality, Dev Time... pick two. This has been an age-old tradeoff in software development. The goal of this blog post is to create a local dev environment for ad-hoc gpu-cluster computing using Apache Spark, iPython Notebook (scala version), and the GPU in your Macbook Pro's display.</p>

<blockquote>Make it work... then make it fast... then make it beautiful -- Matthew Russell</blockquote>

<h2 class="section-heading">Part 1: Spark-Notebook</h2>

Apache Spark can be controlled by notebooks from several languages. I'm going with Scala for several reasons. First, it allows me to have access to the full Spark API (Graphx support is a dealbreaker for me). Secondly, the only GPU library that allowed me to compile for the GPU without writing C code myself is in Java (which I can call from scala). Even with these limitations, there were still several to choose from. The options were:

<a href="http://zeppelin-project.org/">Zeppelin</a> -> buggy API after I imported classes <br />
<a href="https://github.com/andypetrella/spark-notebook">Spark-Notebook</a> -> headache to import dependencies <br />
<a href="https://github.com/hohonuuli/sparknotebook">Sparknotebook</a> -> Winner!!! Killer app. <br />

After cloning the Sparknotebook repo and following its instructions (downloading the IScala.jar...etc), with a single command I could open the notebook on top of a standalone spark cluster... easy peasy... 

Please go like the REPO... I'd like to see it get some love....

<h2 class="section-heading">Part 2: GPU on the JVM</h2>

The inspiration for this came from a rather impressive library called ScalaNLP (http://www.scalanlp.org/). They claimed to have a parser that could parse half a million words per minute on one core!

<p>There can be no thought of finishing for ‘aiming for the stars.’ Both figuratively and literally, it is a task to occupy the generations. And no matter how much progress one makes, there is always the thrill of just beginning.</p>

<p>There can be no thought of finishing for ‘aiming for the stars.’ Both figuratively and literally, it is a task to occupy the generations. And no matter how much progress one makes, there is always the thrill of just beginning.</p>

<blockquote>The dreams of yesterday are the hopes of today and the reality of tomorrow. Science has not yet mastered prophecy. We predict too much for the next year and yet far too little for the next ten.</blockquote>

<p>Spaceflights cannot be stopped. This is not the work of any one man or even a group of men. It is a historical process which mankind is carrying out in accordance with the natural laws of human development.</p>

<h2 class="section-heading">Reaching for the Stars</h2>

<p>As we got further and further away, it [the Earth] diminished in size. Finally it shrank to the size of a marble, the most beautiful you can imagine. That beautiful, warm, living object looked so fragile, so delicate, that if you touched it with a finger it would crumble and fall apart. Seeing this has to change a man.</p>

<a href="#">
    <img class="img-responsive" src="{{ site.baseurl }}/img/post-sample-image.jpg" alt="">
</a>
<span class="caption text-muted">To go places and do things that have never been done before – that’s what living is all about.</span>

<p>Space, the final frontier. These are the voyages of the Starship Enterprise. Its five-year mission: to explore strange new worlds, to seek out new life and new civilizations, to boldly go where no man has gone before.</p>

<p>As I stand out here in the wonders of the unknown at Hadley, I sort of realize there’s a fundamental truth to our nature, Man must explore, and this is exploration at its greatest.</p>

<p>Placeholder text by <a href="http://spaceipsum.com/">Space Ipsum</a>. Photographs by <a href="https://www.flickr.com/photos/nasacommons/">NASA on The Commons</a>.</p>
