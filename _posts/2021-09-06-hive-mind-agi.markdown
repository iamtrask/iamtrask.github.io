---
layout:     post
title:      "Theory: Hive-mind AGI will outperform single-model AGI"
subtitle:   ""
date:       2017-06-19 12:00:00
author:     "iamtrask"
header-img: "img/earthrise.jpg"
---

<p>One plausible description for "the goal of the AI community" goes like this: to build automated systems which solve all of humanity's problems both now and in the future. In the first order, this is based on the well founded belief that our lives would be better if our problems were solved. This is closely realted to the somewhat obvious observation that (nearly) all of humanity is in some way taking part in helping to solve humanity's present or future problems. This is what we're all doing, so wouldn't it be great if AI could help in the most general possible way?</p>

<p>An interesting tangent is to observe that if we simply had more humans to help we would make faster progress on solving humanity's problems. However, adding more humans also makes many of the problems harder (hunger, war, global warming, etc.). Thus, it's important to consider that some plausible solutions to "all of humanity's problems" are net-negative in their approach, causing more problems than they fix. But beyond observing that net-nevative solutions exist, let's set this aside for the moment.</p>

<p>For anyone else who also learned AI from Russell and Norvig's influential book, it's often useful to think about AI form the perspective of a database and a search algorithm. If your live-updating database contains the answer to any question, and you have enough compute to query it fast enough, then you have AGI and in theory all of humanity's problems are solved. Pick any problem, ask for the solution, and do it. This could be high level questions ("What is the meaning of life?") or low-level questions ("Should my car turn 3 degrees to the left?"), but as long as they're all in the database then you're good.</p>

<p>However, no such database exists for a multitude of reasons, such as:</p>

<ul>
  <li>we don't have that much data collected anywhere, or the means to collect it</li>
  <li>if we did have that much data, we wouldn't have enough compute</li>
  <li>even if we had enough compute, we wouldn't have enough energy to run that compute</li>
</ul>

<p>That is to say, from this perspective, solving AGI is mostly about enegy efficiency. We can group energy efficiency into useful groups such as:</p>


<ul>
  <li><b>Information re-use</b> (generalization, convolution, shared weights, etc.): learning something once in one area and then re-using it elsewherex.</li>
  <li><b>information priority</b> (attention, regularization, etc.): being able to know when information is simply irrelevant to you and not worth encoding or propagating at all (such as random noise, or parts of an image that simply aren't relevant to the task at hand).</li>
</ul>


<p>So if the ultimate fallback towards AGI is just data collection (memorization, like in a database), AI is trying to give us more efficient methods than simply collecting everything under the sun. Information re-use and prioritization schemes are plausibly the most popular strategies.</p>

<p>In short - we live in a world of finite resources, so solving AGI is actually about saying "How far can we get with the smallest amount of <x resource>?" Given fixed supply, whomever can be the most efficient can be the most intelligent. In a world with limited energy, efficiency is intelligence.</p>

<p>So what type of AGI will be the most intelligent? Hive-mind or single-model?</p>

<p>First, let's define the difference:</p>


<ul>
  <li><b>Single-model:</b> a model wherein a large group of parameters are always entirely used for every prediction.</li>
  <li><b>Hive-mind:</b> a group of models wherein only models which are relevant to a problem are used to make a prediction.</li>
</ul>

<p>So for example, single-model AGI would encode all of the world's information into one giant "blob" of parameters. This would include information about chess, checkers, romantic relationships, klingon curse words, nuclear launch codes, brownie baking instructions, and the number of freckles on your dead gradmother's right earlobe.</p>

<p>But a hive-mind AGI would separate each of these discplines into sub-models dedicated to each specific area. There might be a recipes model, a dating model, a proliferation model, etc. And while they could certainly communicate with each other if necessary, they are under no obligation to. Meaning the overal system is organized into these distinct groups, subsets of which are only activated if the topic at hand is relevant to them.</p>

<p>Note that whether something is a single-model or hive-mind AGI is totally orthogonal to whether the model is running on a single compute system owned by a single organization. A hive-mind could all be run by one corporation, and a single-model could be co-run by many corporations. This is largely orthogonal, although it's probably easier to decentralize governance over a hive-mind, but that's not what this post is about.</p>

<p>The key premise is this - if we buy the id that efficiency is intelligence, the hive-mind style of AGI should (in the long run) strongly out-compete single-model AGI on every intelligence task it faces. Why? Because it doesn't need to activate parameters on totally irrelevant tasks. And because it's using inforamtion more efficiently, it can outperform other models which were using information less efficiently.</p>

<p>Put another way, if it takes 100 billion parameters to do one weight update and learn one paragraph of a recipe book, you're not going to learn as many recipes as the model which can do the same with 100 million parameters focused exclusively on cooking. The latter will simply learn way more recipes a lot faster.</p>

<p>Now, it's essential that the hive-mind be able to share inforamtion across specialty areas. And the AI community really hasn't cracked this approach yet which is why single-model (massive models) seem to be doing so well. But if we zoom out and look at ML fundamentals, this advantage will probably be short-lived. Models are going to have specialized sub-components. Single-model approaches might be winning a couple battles, but hive-minds will win the war.</p>

<b>Related: </b>

<ul>
  <li>superhuman models on board games aren't trained on medical tasks, and there's little to indicate doing so would be helpful to the board game performance.</li>
  <li>superhuman models on medical tasks aren't trained on driving cars, and there's little to indicate that being able to drive better would help one with medical tasks.</li>
</ul>







