---
layout:     post
title:      "The Deep Learning Cheatsheet"
subtitle:   "Fantastic Deep Learning tools and where to find them..."
date:       2017-04-14 12:00:00
author:     "iamtrask"
header-img: "img/northern-lights.jpg"
---

<p><b>TLDR:</b> A simple, laymen's reference of the most popular neurons, layers, and architectures with simple analogies for what each does. It's intended to be a reference for when you don't have time to learn 'how' each part does what it does, but instad only need to get the job done.</p>

<p>Deep Learning Frameworks provide a powerful abstraction over the techniques of Deep Learning. In my opinion, they're reaching a powerful inflection point. Much like compilers provide the ability for most computer programmers to ignore the 1s and 0s of computation, deep learning frameworks are allowing people to use very advanced tools with only the knowledge of <i>what</i> each tool does without necessarily needing to know <i>how</i> the tool does it.</p>

<b>Neuron:</b> at the simplest level, a neuron is used to encode the absence or presence of a pattern. A neuron is typically either binary (1 or 0) or continuous on a range, with the range endpoints being -inf, -1, 0, 1, or +inf. Thus, a neuron could be from -1 to 1 or from 0 to +inf, or really any other permuation thereof. A neuron's value is either determined by the parts of the neural network before it OR it's pre-set based on outside data (such as training data). In some cases, neurons will also be set to a specific value regardless of the training data or the rest of the network (such as a bias neuron, which is always set to 1). That's pretty much all you need to know about a neuron!

<b>Synapse:</b> A synapse, otherwise known as a <b>weight</b>, or more simply an <b>edge</b> is a weighted, directional connection between exactly 2 neurons (an input neuron and an output neuron). In almost all cases, they are represented by a real valued number with a range from -inf to +inf, and they have exactly one job. Each weight takes the value of the input neuron, multiplies it by a number, and adds that to the value of the output neuron (which accumulates signal from multiple other weights as well). 

While a weight is rarely pre-set by hand, a weight can sometimes be fixed to values that were trained by a different neural network. 