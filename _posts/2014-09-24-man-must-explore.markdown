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

<p>In the spirit of my mentor, we will start by getting each part "working" individually. Fortunately, the second part (speed) sortof falls out of the first (GPU clusters are like that). Then, we'll integrate these parts into something beautiful... a scalable, ad-hoc environment.</p>

<h2 class="section-heading">Part 1: Spark-Notebook</h2>

<p>Apache Spark can be controlled by notebooks from several languages. I'm going with Scala for several reasons. First, it allows me to have access to the full Spark API (Graphx support is a dealbreaker for me). Secondly, the only GPU library that allowed me to compile for the GPU without writing C code myself is in Java (which I can call from scala). Even with these limitations, there were still several to choose from. The options were:</p>

<p>
<a href="http://zeppelin-project.org/">Zeppelin</a> -> buggy API after I imported classes <br />
<a href="https://github.com/andypetrella/spark-notebook">Spark-Notebook</a> -> headache to import dependencies <br />
<a href="https://github.com/hohonuuli/sparknotebook">Sparknotebook</a> -> Winner!!! Killer app. <br /></p>

<p>After cloning the Sparknotebook repo and following its instructions (downloading the IScala.jar...etc), with a single command I could open the notebook on top of a standalone spark cluster... easy peasy... </p>

<p>Please go like the REPO... I'd like to see it get some love....</p>

<h2 class="section-heading">Part 2: GPU on the JVM</h2>

<p>The inspiration for this came from a rather impressive library called <a href="http://www.scalanlp.org/">ScalaNLP</a>. They claimed to have a parser that could parse half a million words per minute on one machine! Given that I work in R&D at a "Big-Data NLP" firm, this peaked my interest. Scalanlp on a 100 node cluster seems.... rather disgustingly awesome.</p>

<p>ScalaNLP Leverages the java opencl library, <a href='https://code.google.com/p/javacl/'>JavaCL</a>. The decision to use OpenCL, as opposed to CUDA, means that the code runs on non-NVIDIA graphics cards. All Apple's can use OpenCL. Therefore, I can prototype on my Macbook's GPU. I like that.... i like that a lot. </p>

<p>However, what I don't like is writing C code. It slows me down and isn't portable. I need my code to be both enterprise-ready and, "we don't want to buy GPUs" ready. This is where <a href="https://code.google.com/p/aparapi/">Aparapi</a> comes in. It compiles Java code down to OpenCL, and runs it in a Java Thread Pool if a GPU isn't available. Also, it's made by AMD... which means you can trust it. Those guys are total bosses. <a href="http://www.amd.com/en-us/press-releases/Pages/amd-fx-8370-2014sep02.aspx">AMD Claims New World Record</a></p>

<p>I downloaded the AparaPi Mac OS Zip... although all these are available.</p>

<a href ="https://code.google.com/p/aparapi/downloads/detail?name=Aparapi_2012_01_23_MacOSX_zip&can=2&q=">Aparapi_2012_01_23_MacOSX_zip</a><br />
<a href="https://code.google.com/p/aparapi/downloads/detail?name=Aparapi_2013_01_23_linux_x86.zip&can=2&q=">Aparapi_2013_01_23_linux_x86.zip</a><br />
<a href ="https://code.google.com/p/aparapi/downloads/detail?name=Aparapi_2013_01_23_windows_x86.zip&can=2&q=">Aparapi_2013_01_23_windows_x86.zip</a><br />

<p>I unzipped the download into a folder on my machine, and it created a folder called "Aparapi_2012_01_23_MacOSX_zip". <br /><br />
<b>Executions:</b>
<blockquote>cd Aparapi_2012_01_23_MacOSX_zip/samples/squares/ <br />
sh squares.sh</blockquote>
<b>Output Sample:</b>
<blockquote>Execution mode=GPU
     0        0 <br />
     1        1<br />
     2        4<br />
     3        9<br />
     4       16<br />
     5       25<br />
     6       36<br />
     7       49<br />
     8       64<br />
     9       81<br />
    10      100
</blockquote>
</p>
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
