---
layout:     post
title:      "Distributing a Fully Connected Neural Network Across a Cluster"
subtitle:   "My senior paper, what I believe to be a novel (untested) approach."
date:       2014-11-24 12:00:00
author:     "iamtrask"
header-img: "img/measuring.jpeg"
---

<a href="http://prezi.com/hdctecihctdr/?utm_campaign=share&utm_medium=copy&rc=ex0share">Slides Showing the Process Graphically</a>

<p><b>Introduction:</b> Recent work in unsupervised feature learning and deep learning has shown that training larger simple models on more data can often outperform more complicated models over smaller amounts of data [1]. Artificial neural networks have a special need in this area due to their significant computational cost, especially if they are fully connected (which has been shown to be useful in many problems) [4]. Some approaches duplicate the entire network on several machines, speeding convergence by sharing relative information [1][3]. However, work on distributing (instead of duplicating) data has been relatively sparse. This is in part due to the globally iterative nature of neural networks, which makes them inefficient on more popular distributing algorithms such as (Hadoop) MapReduce. This paper seeks to design and test a novel approach to distributing artificial neural networks. This paper's approach is to ship only even layers of nodes instead of all edges across the cluster, reducing network overhead by an order of magnitude due to the fact that fully connected artificial networks have an order of magnitude fewer nodes than edges between them.</p>

<p><b>Neural Network Topology:</b> A fully connected n-layer neural network is formed as a n-partite graph, where each layer of nodes has an edge connecting to every node in the following layer. Furthermore, each layer can only be fully computed after its preceding layer has been fully computed. This is the iterating scope of an n-layer neural network. Thus, by making the computation more efficient between two layers, we can generalize to as many layers as are inside the network. This paper will be focusing on increasing the efficiency of computation from one layer to the next. This first and second layer will be referred to as layer P and layer Q respectively.</p>

<p><b>The Naive Approach:</b>As we scale the communication in a neural network, we eventually reach a point where no single layer can fit inside the memory of one machine. Furthermore, it is advantageous to distribute the computation of a neural network across many processors. It follows that distributing a neural network across enough machines such that all data can be stored in RAM and processors can work together is a desirable approach.</p>

<p>A naive approach partitions P and Q such that we have a group of machines holding P and a group of machines holding Q. This brings us to our bottleneck. For the iteration required to progress the data from one layer to another, each node must send a message to every other node in the next layer. If layers P and Q are on separate machines, this constitutes length(P) * length(Q) network overhead. This can be generalized to be an N^2 operation for layers that are of similar size.</p>

<p><b>The State of the Art Approach:</b> A slight improvement to this approach brings us to the state-of-the-art model, where each machine contains several layers, in our case half of layer P and half of layer Q [1]. This changes our network IO complexity to be (where M is the number of machines) length(P)*length(Q)*(1-M)/M. Intuitively, if we only have 1 machine, there is no network overhead. If we have 2, then half of our nodes in the next layer are local, and half are on the other machine. However, as the number of machines approaches infinity, our complexity still approaches N^2.</p>
	
<p><b>The Novel Approach:</b> If you look closely at the former models, they are similar in that they partition only nodes across the cluster, and communicate only edge values over the network. Instead of partitioning nodes across the cluster, this paper proposes to partition some nodes and all edges statically. No edges will be communicated over the network, only half of the nodes. 
The formal models have enough machines to fit both all node values and all edge values in memory. This model assumes the same machines and partitions P,Q, and the edges between them (E) in an ordered fashion across the cluster, such that P is co-located with every edge leaving it. </p>
	
<p>It then follows that every edge value may be computed without requiring any network IO. The only network IO that would be required would be sending each edge value to its respective node in Q. This would constitute the same network complexity as the state of the art approach. However, Q is taking its input edge values and adding them together. This is an associative join. Furthermore, the sum of two edge values is just a number. This means that the “size” (measured by the amount of memory required to store or transfer over the network) of the sum of all the edges going into Q stays constant throughout the computation. This associative property and natural compression combines to create an unexploited advantage in the state of the art model.</p>

<p>Since each edge value can be computed without network IO, a “pre sum” can also be calculated. This takes each edge that is headed to the same Q node, and sums their values. Each node then has two values: it’s local edge sum for every node in Q, and a subset of the nodes Q.</p>

<p>Assume that the machines are laid out as a ring topology. For each subset of nodes Q on a single machine, that machine then adds its local edge sum for that node to the node’s value. It then sends these node values to the next in the ring, and receives a set of nodes from the previous. This iteration continues until each machine has added its local edge sum to every node in the network. </p>

<p>At this point, distributed across the cluster, every node equals the sum of all its edges, and the network has iterated. Since only the second layer of nodes was communicated over the network M times (each node travelling to each machine), the network IO was length(Q)*M. Since each machine is independently communicating to only two other machines, there is no need for a network switch. They can simply be daisy chained to their own network cards. This simulates having the speed of M networks working in parallel, dropping our network complexity back down to the length(Q), which is an order of magnitude more efficient than length(P)*length(Q). </p>

<p>
(brief)Reference List <br />
<br />
[1] J. Dean, G. Corrado, R. Monga, K. Chen, M. Devin, Q. Le, M. Mao, M. Ranzato, A. Senior, P. Tucker, K. Yang and A. Ng, "Large Scale Distributed Deep Networks", NIPS, 2012. <br />
[2] Q. Le, M. Ranzato, R. Monga, M. Devin, K. Chen, G. Corrado, J. Dean and A. Ng, "Building high-level features using large-scale unsupervised learning", ICML, 2012.<br />
[3] K.P. Unnikrishnan, and K.P. Venugopal, “Alopex: A Correlation-Based Learning Algorithm for Feed-Forward and Recurrent Neural Networks”<br />
[4] Tomas Mikolov, Kai Chen, Greg Corrado, and Jeffrey Dean. Efficient Estimation of Word Representations in Vector Space. In Proceedings of Workshop at ICLR, 2013.<br />
</p>