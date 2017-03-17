---
layout:     post
title:      "Tutorial: when Numpy isn't fast enough..."
subtitle:   "A tutorial on using fortran/blas under the hood of your python program for a 6x speed pickup."
date:       2014-11-23 12:00:00
author:     "iamtrask"
header-img: "img/typewriter.jpg"
---

<p><b>Summary:</b> a demo on how to use fortran/blas libraries under the hood of your python program's vector operations to squeeze out extra speed over Numpy.</p>

<p>Yesterday, I posted a on how to use Apache Spark with GPUs from a notebook. To my joy, it reached the first page of Hacker News (while serving the Scala community!!!). Using Spark from one of the iPython notebooks has become a real passion of mine... and whereas yesterday I focused on Scala/JVM/GPU operations, today I want to offer a bit up to the scientific Python community. These discoveries are from studying a wonderful codebase by Radim Rehurek called <a href="https://github.com/piskvorky">Gensim</a>... specifically the word2vec implementation. </p>

<p>You might be wondering why I would cover CPU based speedups following GPU based... and the truth is that sometimes lighter weight optimiations are a better fit... especially when dealing with smaller batches of vectors at a time or when GPUs simply aren't available.</p>

<hr />
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- Part 1 -->
<ins class="adsbygoogle"
     style="display:inline-block;width:728px;height:90px"
     data-ad-client="ca-pub-6751104560361558"
     data-ad-slot="2365390629"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
<hr />


<h2 class="section-heading">Part 1: iPython-Notebook Cython Magic</h2>

<p>Install <a href="http://stackoverflow.com/questions/2213551/installing-scipy-with-pip">Numpy,Scipy</a>,<a href="http://brewformulas.org/Gfortran">GFortran</a>,<a href="http://docs.cython.org/src/quickstart/install.html">Cython</a>, and <a href="http://scikit-learn.org/stable/install.html">scikit-learn</a> packages. I <i>HIGHLY</i> recommend sticking to easy_install, brew (apt-get), and pip. In my experience, macports has some real trouble with these packages. Also, of course, you need to have ipython notebook installed for these examples to work, but technically it can work for normal cython too.</p>

<p>With Cython you'll get the "Cython" magic as well. The following command should work in your notebook.</p>

<img class="img-responsive" src="{{ site.baseurl }}/img/sampleCython.png" alt="">

<p>Notice that you load the cython magic using "%load_ext cythonmagic" and then compile cython using "%%cython" at the top of the cell containing cython code. You can then call your cython functions (or classes... etc) from python. It's a neat system. :) </p>

<h2 class="section-heading">Part 2: Scipy Fortran-Blas in Cython</h2>

<p>Below you'll see the core code that we need to get our superfast blas operations. After the first few imports, you'll see a "cdef extern from" import from a file called voidptr.h. This file allows us to cast a numpy array to its pointer without copying any data.... a key part of the code. The contents of that file are also below.</p>

<img class="img-responsive" src="{{ site.baseurl }}/img/fasterThanNumpyCode.png" alt="">

<a href="https://github.com/klb3713/sentence2vec/blob/master/voidptr.h"><b> voidptr.h code on Github</b></a>

<p>Next, you'll also see six function types and their implementations. There is a whole suite of these funky-named fortran functions in the <a href="http://docs.scipy.org/doc/scipy-0.12.0/reference/generated/scipy.linalg.blas.html">Scipy Blas/Fortran Documentation</a> I also write a simple dot-product function leveraging the dsdot (double dot product... as opposed to float) called pubDotty.</p> 

<img class="img-responsive" src="{{ site.baseurl }}/img/fasterThanNumpyDemo.png" alt="">

<p>In this example, I create two numpy vectors of length 32. (one full of ones and another full of threes). I then benchmark and show how the cython/fortran version is <b>5.8x faster</b>. It should be noted that this is still passing in a python object... this efficiency gain increases when everything stays in cython for several progressive operations.</p>

<hr />
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- Part 1 -->
<ins class="adsbygoogle"
     style="display:inline-block;width:728px;height:90px"
     data-ad-client="ca-pub-6751104560361558"
     data-ad-slot="2365390629"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
<hr />

