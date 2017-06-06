---
layout:     post
title:      "Prototype: A.I. Blockchain"
subtitle:   "Proof-of-Intelligence: Minimizing Counterparty Risk"
date:       2017-03-05 12:00:00
author:     "iamtrask"
header-img: "img/northern-lights.jpg"
---

In this post, we're going to prototype an <b>A.I. Blockchain</b>, for the purpose of understanding the current challenges to distributed intelligence. (In case you're wondering, that's a spoiler, there are some challenges we need to solve.). Before we jump into the methods, however, let's first start with the reasons why (other than "why not?").

Other than being two of the most (over?)hyped technologies of the decade, Blockchain and A.I. typically have almost nothing in common. Blockchain is a means of facilitating trust between two parties such that high degrees of (digital) value may be exchanged between anonymous entities. A.I. is a suite of methods for the automation of intelligence, or more broadly, A.I. is a suite of methods for the collection, storage, and use of intelligence.

In short, blockchain transacts digital value and A.I. creates digital value. Perhaps you see where I'm going here.

<h2 class="section-heading">A.I. Learns by Collecting Intelligence</h2>

Pragmatically speaking, A.I. in it's current form is implemented via Machine Learning, and Machine Learning is broadly divided into two big categories: 

<center>
<b>Unsupervised Learning</b>: "This data has groups!"<br />
<b>Supervised Learning</b>: Monkey See Monkey Do. 
</center>

I find that it's more intuitive to describe Machine Learning (and by extension, A.I.) as a suite of methods for the <i>collection</i> of intelligence. The tools by themselves aren't smart. A pickaxe is not gold. It lets you harvest gold. The real value is buried in the ground somewhere. In this analogy, the "ground" is data. Notice the two big classes of Machine Learning. Unsupervised learning groups data. Supervised learning tries to imitate data (given identical inputs, generate identical outputs). A.I./M.L. is the pickaxe. Data is the dirt. Patterns are the gold. Are you with me so far?

When you collect intelligence, you store it in what's called a <b>Model</b>. It's typically just a big blob of numbers representing what a given algorithm has learned. <u>Models are the digital value.</u> Data Scientists and ML practitioners spend their days building these models (and getting paid pretty pennies to do so). They're the gold miners of the 21st century. Coincidentally, much of this gold rush is in California and India, but I digress.

So on any given day in Silicon Valley, a data scientist sits down at his laptop, opens up his favorite Deep/Machine Learning toolkit (aptly named DeepTensorMindFlameThrower.io) and a dataset provided by his company (probably extracted from customers or purchased from someone else who extracted it from their customers). This scientist then mines the data for patterns that are useful for the company. When some patterns are found, the scientist produces a model to store them. This model is then used to create or improve a product or service the company offers.

The tools for A.I. are all free and open source online. The data, however, must be extracted. This should highlight the two most valuable resources of the A.I. industry: data and talent. Finding talent is a matter of great branding, interesting problems, culture, and compensation. Acquiring data, however, is a bit different.

<h2 class="section-heading">A Plausible App: CalmYoself</h2>

Let's say you want to build an app ("CalmYoself.io") that can predict what people's moods are about to be based on the audio in their car or home, most specifically when they're about to begin yelling/screaming at each other in anger or fear. Your hope is that you can then have your device start playing soothing/comedic music through the loudspeakers whenever a home's occupants need to calm down.

At first you think about simply recording all the audio in people's homes for a few years and stockpiling all the data on a cloud node you've rented online. Such an environment would make training a machine learning model cheap and efficient. Furthermore, you could probably look through it for more potential use cases. Then you think to yourself, "Wow, that's really creepy. There's no way that I want to invade people's privacy by setting up a device that listens to them all the time and sends the data to my data warehouse. That's unethical!"

Instead, you look for an alterantive.

<h2 class="section-heading">Private, Consumer Data as a Service</h2>

Imagine instead that an ecosystem existed wherein people have subscribed certain aspects of their lives for scientific study and open source product development (and get paid for it) under the contractual and technical limitation that their data never leaves their home/control in any way. (In fact, they have "opt in" authority to any project that wants to learn from their lives). As luck would have it, one of the available datasets is an audio feed from an in-home listening device also used for ordering products from a prominent online retailer! This feed has over 300,000 users worldwide with transcripts already generated from the onsite technology. That's perfect!

An interesting sidenote: these people are basically "professional humans", getting paid to live normal lives.

So, for a fee, you can train a machine learning model on a large, distributed repository of personal data. "Sounds promising!", you think. However, you notice a few challenges.

<h2 class="section-heading">Counterparty Risks</h2>

• Consumers have an incentive to just provide random data. Why allow your model to train on their REAL data when you aren't allowed to look at the data either way. It's easy for them to cheat the system and pretend to have way more datasets than they actually do. They collect more money from more projects and no-one's the wiser.

• You have an incentive to just tell them "hey... your data is no good... my model isn't training and it's your fault" and then they don't get paid. The only way for them to disprove you is to compromise their privacy!

• Even if they actually participate in good faith, they might just be a household that never loses their temper (or nobody's ever home) such that their data doesn't help your model at all! You shouldn't have to pay for irrelevant data (and you can't really know in advance without looking, which of course you cannot do).

In short, both sides have counterparty risk. They might not provide good data, and you might not provide proper credit for payment. If only there was a platform that could mitigate this risk simultaneously between you and thousands of potential data providers. Enter the A.I. Blockchain, a Blockchain that rewards data "subscribers" for valuable gradient updates while protecting their privacy, facilitating the training of open source models.

<h2 class="section-heading">A.I. Blockchain</h2>

Perfect Scenario:

- Scientist and Consumer team up to build a machine learning model.
	- Training and Evaluation happens efficiently.
	- Scientist never sees the consumer's data.

- Model gets deployed such that people pay a fee for its use without having the ability to steal it.
	- What I know:
		- "one time use" models don't exist, because models don't change when you predict with them. If it can predict over one datapoint, it can predict over many. THUS:	
			- model is held by a private 3rd party
			- model is public but data must be translated/encrypted by a private 3rd party (BEST OPTION)
	Process:
		- given a model that requries data encrypted in a certain way.
		- Buyers send data to Scientist/Consumer to have their data converted so that it can be used by a public model. A Scientist or Consumer could try to undercut the other members of the group, but this would just set the new market price for the model.
		- PROBLEM: a buyer could just label some of his data and become a Consumer, get access to keys for discount.
		- SOLUTION: only the scientist has access to the final model.
		- PROBLEM: scientist doesn't feel the need to pay consumers.
		- SOLUTION: scientist only pays consumers to retrain models, not to sell them.

	Refined process:
		- given a model that requires data encrypted in a certain way, solely owned by a Scientist.
		- scientist sets up a service wherein people send him homorphically encrypted data and he sends them 

	Questions:
		- who should run the model?
			- can't be 

- Scientist and Consumer collect payment based on the model they create.








I'm going to describe this platform (and prototype) in the context of a Neural Network, however the principal isn't necessarily constrainted to this particular machine learning algorithm. Furthermore, others are working on the problem of restoring training data from a trained neural network (or preventing such behavior, rather). This work will not address that problem but is instead focused on counterparty risks between data scientists and those with data. Differential Privacy in Deep Learning is a decoupled, yet related problem.

<h3>Definitions:</h3>

• "Scientist" - the data scientist instigating the training of the model

• "Consumer" - an individual with a dataset hosted on their own hardware.

• "Task" - the trainer proposes a new "task" in order to gather Consumers to ultimately train a model. This task is merely a theme of data with a particular schema, such as "household transcript".

• The Blockchain - at the beginning of training, a random neural network is initialized and loaded into a blockchain. During training, gradient updates are loaded into the blockchain such that an immutable record of subscriber contributions (gradients) exists until the end of training. The blockchain also contains "votes of accuracy" from "Consumers", documenting the affect that each gradient has on their local training data (measured by the loss function). At the end of training, this list of gradients and votes is used to document which Consumers provided beneficial gradients, distributing payment accordingly.

<h3>Setup: CalmYoself</h3>

1) A Scientist at CalmYoself.io wants to train a model. To do so, the Scientist randomly initializes a neural network and loads it into a blockchain.

2) The Scientist curates a "Validation Dataset" made up of transcripts from his/her own home and a small handful of others he/she could get full licenses to. This was perhaps more expensive to procure because it had to be anonymized by hand, but it only had to be done for a little bit of data (validation datasets can be orders of magnitude smaller than training datasets) so it was ok. The Scientist then performs a cryptographic hash of each validation example and loads those into the blockchain. These hashes will later prove that the Scientist had these exact validation examples before training began (proof of ownership).

3) The Scientist submits a Gas Reward as well as a Trainer Security Deposit to be held in trust by a smart contract (perhaps on Ethereum). Gas will be paid to the subscribers upon completion of training. Gas will be returned to the Trainer as a reward for concluding training and reporting accurate validation scores.

<h3>One Iteration of Training:</h3>

1) Each Subscriber downloads the blockchain (including the model) and trains a pass on their data, publicizing its gradient updates to the network of subscribers.

2) Each Subscriber then receives all weight updates from the other Subscribers and orders them by their affect on its local accuracy. It then publishes the resulting loss of each gradient update to the blockchain, which every other node can then use to come to a concensus on which gradient(s) is/are included in the updated model (See: Proof-of-Intelligence).

3) The model is updated by selecting the most beneficial gradient of the group.

4) Subscribers then wait for the Trainer to release an updated validation score. All parties have the option to continue or not continue training at this point.

<h3>End of Training + Payment:</h3>

• To conclude training, the Trainer publishes validation examples to the network, allowing each node to look back over the history of gradient updates and come to identical conclusions about which gradient updates lead to which amounts of increased accuracy and as a result, how much gas is allocated to each subscriber. For example, if gradients for Subscriber A were responsible for reducing the validation loss 5% (measured as a percentage from the starting valiation score down to 0), then Subscriber A receives 5% of the gas. If the Trainer ever published false validation scores, the Trainer forefits all Gas and it's Deposit to the Subscribers. 

<h2 class="section-heading">Proof-of-Intelligence</h2>


Given a model in a blockchain, subscribers will vote on the next "block" based on which candidate chain is most accurate for a given task. Each node determines "training accuracy" by looking at its own data (while it also trains the model). It's a method of training models that are mutually beneficial for everyone without requiring the centralization of data. Furthermore, just like in a distributed ledger, only gradient updates are sent to the blockchain. 

To submit a model to the blockchain to be trained, it must be given a certain amount of "gas" for training from the Trainer, as well as validation hashes (one per validation example). Training ensues once this (and a randomized model) have been submitted. The trainer, however, must submit twice as much gas, the latter half of which will be held in trust until the trainer calls for a completed training example.

After each weight update, validation is re-calculated by the training node so it can decide when to cease training. Furthermore, each weight update requires an additional transaction fee, which is held in trust and distributed in proportion to the gas reward.

At any time, the trainer can stop training by releasing all validation examples, triggering gas to be distributed accordingly (which all nodes agree upon independently based on gradient updates). If 10% of possible convergence has been achieved, only 10% of gas is distributed and the remaining 90% returned to the trainer. If 0% convergence has been achieved, no gas will be distributed.

To reduce space in the blockchain, hashes of gradient updates may be sent as proxy, with the actual gradient values sent via peer-to-peer network to relevant parties involved (everyone sends it to 2 others in a defined pattern such that everyone receives each gradient once).

Thus, training ensues in a somewhat interesting way. Given 1024 subscribers, when each operates on the randomized model, there are 1024 new gradients submitted to the blockchain. 





<link rel="stylesheet" type="text/css" href="{{ site.baseurl }}/css/shCore.css">
<link rel="stylesheet" type="text/css" href="{{ site.baseurl }}/css/shThemeDefault.css">
<script src="{{ site.baseurl }}/js/shCore.js"></script>
<script src="{{ site.baseurl }}/js/shLegacy.js"></script>
<script src="{{ site.baseurl }}/js/shBrushPython.js"></script>
<script type="text/javascript">
	// SyntaxHighlighter.config.bloggerMode = true;
	SyntaxHighlighter.config.toolbar = true;
    SyntaxHighlighter.all();
</script>