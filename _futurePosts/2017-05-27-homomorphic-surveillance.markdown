---
layout:     post
title:      "Safe Crime Prediction"
subtitle:   "Homomorphic Encryption and Deep Learning for More Effective, Less Intrusive Digital Surveillance"
date:       2017-05-27 12:00:00
author:     "iamtrask"
header-img: "img/nasa-43563.jpg"
---

<!-- Proposal: More Privacy and More Surveillance -->

<!-- http://bigthink.com/think-tank/pre-crime-detection-system-now-being-tested-in-the-us
http://abcnews.go.com/Technology/minority-report-precrime-real-house-bill-online-life/story?id=14258575
https://www.wired.com/2011/10/pre-crime-detection/
https://www.intellihub.com/pennsylvania-to-become-first-state-to-use-precrime-statistics-in-criminal-sentencing/
https://arstechnica.com/information-technology/2016/03/china-is-building-a-big-data-plaform-for-precrime/
https://www.forbes.com/sites/kalevleetaru/2017/02/18/zuckerbergs-letter-and-will-facebook-make-minority-reports-precrime-a-reality/#6304e1d66ee0
https://www.newscientist.com/article/mg22530123-600-pre-crime-software-recruited-to-track-gang-of-thieves/ -->

<p><b>TLDR:</b> What if it was possible for surveillance to only invade the privacy of criminals or terrorists, leaving the innocent unsurveilled?</p>
<!-- 
<ul>
	<li>Perhaps Privacy vs Safety is a false choice from a tech standpoint. If true, we wouldn't need to sacrifice our personal data for the sake of national security.</li>
	<li>Perhaps safety can be enforced as a social contract. People buy their own fire alarms. What if they purchased their own "murder alarms" or "terror alarms" which were backed by peer-to-peer, Homomorphically Encrypted AI.</li>
</ul>
 -->
<p><b>Abstract:</b> Modern criminals and terrorists hide amongst the patterns of innocent civilians, exactly mirroring daily life until the very last moments before becoming lethal, which can happen as quickly as a car turning onto a sidewalk or a man pulling out a knife on the street. As police intervention of an instantly lethal event is impossible, law enforcement has turned to prediction based on the surveillance of public and private data streams, facilitated by legislation like the <a href="https://en.wikipedia.org/wiki/Patriot_Act">Patriot Act</a>, <a href="https://en.wikipedia.org/wiki/USA_Freedom_Act">USA Freedom Act</a>, and the UK's <a href="https://en.wikipedia.org/wiki/Counter-Terrorism_Act_2008">Counter-Terrorism Act</a>. This legislation sparks a heated debate (and rightly so) on the tradeoff between privacy and security. In this blogpost, we explore whether much of this tradeoff between privacy and security is <b>merely a technological limitation</b>, overcommable by a combination of Homomorphic Encryption and Deep Learning. We supplement this discussion with a tutorial for a working prototype implementation and further analysis on where technological investments could be made to mature this technology. I am optimistic that it is possible to re-imagine the tools of crime prediction such that, relative to where we find ourselves today, citizen privacy is increased, surveillance is more effective, and the potential for mis-use is mitigated via modern techniques for <a href="http://iamtrask.github.io/2017/03/17/safe-ai/">Encrypted Artificial Intelligence</a>.</b> 

<p>I typically tweet out new blogposts when they're complete <a href="https://twitter.com/iamtrask">@iamtrask</a>. If these ideas inspire you to help in some way, a share or upvote is the first place to start as a <b>lack of awareness</b> of these tools is the greatest obstacle at this stage. Thank you for your time and attention.
</p>
<!-- 
<p><b>Disclaimer:</b> I make some assumptions about the way in which government surveillance is currently performed based on my knowledge of what is the publicly known state-of-the-art in terms of technology. Any assertions to the ways in which surveillance is performed are based on my limited knowledge of what is in the public domain. Furthermore, I do not consider myself to be a conspiracy theorist, and my attempts to innovate in this space in no way reflect a negative view on law enforcement or public surveillance. It is my opinion that law enforcement is largely made up of individuals of extremely high integrity who are ultimately interested in the public good as citizens themselves. This proposal seeks to aid them in that effort while reducing the need to compromise citizen privacy along the way.</p>
 -->
<!-- <h2 class="section-heading">Part 1: The Challenge of Crime Prediction</h2>

<p>At the time of writing, over 50 people have been killed by terror attacks in the last two weeks alone in Manchester, London, Egypt, and Afghanistan. My prayers go out to the victims and their families, and I deeply hope that we can find more effective ways to keep people safe. This mission is increasingly difficult as modern criminals and terrorists hide amongst the patterns of innocent civilians, exactly mirroring daily life until the very last moments before becoming lethal, which happens as quick as a car turning onto a sidewalk or a man pulling out a knife on the street. Often there is simply no time for victims to even dial 911, much less for police to respond and intervene within mere seconds.</p>

<p>In these cases where there is no time for intervention, it follows that deterrence, prediction and prevention are the only viable options for preventing the damage of a crime. In short, we need to detect the WHO and the HOW ahead of time because the criminal damage itself often occurs within mere seconds. Furthermore, as the HOW is increasingly done using common items (a car on the street, or bomb with widely available construction materials), detecting the WHO becomes the primary first strategy and detecting the HOW is a matter of surveilling the WHO during the planning and co-ordination of an attack.</p>

<p><b>Detecing the WHO:</b> However, almost every <b>public</b> characteristic of these individuals (race, gender, religion, occupation, address, citizenship) has tremendous and controversial collateral damage which modern societies pride themselves on ignoring when judging another person's value or guilt. Perhaps the only distinguishing characteristic of these individuals is their radicalized belief that some segment of a population (one individual or many) deserves death. Detecting this malicious intent with exact precision is the key to detecting criminals and terrorists without implicating the innocent who just happen to share characteristics with the truly guilty.</p>

<p><b>Detecting the Belief of the WHO:</b> This is a belief that is undoubtedly expressed in private circles, as humans tend to develop beliefs and values as a factor of their social group. However, these ideas are kept from the public eye, from the public data stream. Instead, the ideas remian hidden, often via technology. For example, attacks are co-odinated using 

	such as the attack on Westminster are <a href="http://uk.businessinsider.com/westminster-terror-attacks-encryption-whatsapp-messaging-uk-2017-3?r=US&IR=T">co-ordinated using tools such as end-to-end encrypted chat systems like WhatsApp</a>.</p>
 -->
<h2 class="section-heading">Part 1: The Challenge of Crime Prediction</h2>

<p>At the time of writing, over 50 people have been killed by terror attacks in the last two weeks alone in Manchester, London, Egypt, and Afghanistan. My prayers go out to the victims and their families, and I deeply hope that we can find more effective ways to keep people safe.  I am also reminded of the recent terror attack in Westminster, which claimed the lives of <a href="https://en.wikipedia.org/wiki/2017_Westminster_attack">4 people and injured over 50</a>. The investigation into the attack in Westminster revealed that the attack was <a href="http://uk.businessinsider.com/westminster-terror-attacks-encryption-whatsapp-messaging-uk-2017-3?r=US&IR=T">coordinated on WhatsApp</a>. This has revived a heated debate on the tradeoff between privacy and safety. Governments want <a href="https://www.theguardian.com/technology/2017/mar/27/amber-rudd-call-backdoor-access-hazy-grasp-encryption">back-doors into apps like WhatsApp</a> (which constitutes unrestricted READ access to a live data stream), but many are concerned about trusting big brother to self-regulate the privacy of WhatsApp users. Furthermore, installing open backdoors makes these apps vulnerable to criminials discovering and exploiting them, further increasing risks to the public.</p>


<p>While terrorism is perhaps the most discussed domain in the tradeoff between privacy and safety, it is not the only one. Crimes such as murder take the lives of hundreds of thousands of individuals around the world. The US alone averages around <a href="https://www.reference.com/government-politics/many-people-murdered-day-united-states-4ce42c4182d89232">16,000 murders per year</a>, which oddly can be abstracted to a logistical issue: Law enforcement does not know of a crime far enough in advance to intervene. On average, 16,000 Americans simply call 911 too late, if they manage to call at all.</p>

<p><b>The Chicken and Egg Problem of "Probable Cause":</b> The challenge faced by the FBI and local law enforcement is incredibly similar to that of terrorism. There is a chicken and egg problem between observing "probable cause" for a crime (subsequently obtaining a warrant), and having access to the information indicative of "probable cause" in the first place. Thus, unless victims can somehow know (predict) they are about to be murdered far enough in advanced to send out a public cry for help, law enforcement is often unable to prevent their death. Viewing crime prediction from this light is an interesting perspective, as it moves crime prediction from something a citizien must invoke for themselves to a public good that justifies public funding and support. The same is true for a myriad of other crimes, but murder is perhaps the most severe.</p>

<p><b>Bottom line:</b> the cost of this chicken-and-egg "probable cause" issue is not only the invasion of citizen privacy, it is an extremely large number of human lives owing to the inability for people to predict when they will be harmed far enough in advance for law enforcement to intervene. Dialing 911 is often too little, too late.</p>

<h2 class="section-heading">Part 2: Crime Prediction as a Public Service</h2>

<p>Curiously, there is actually significant precedent for widely accepted, automated invasion of privacy when danger is certain: fire alarms. These are a the ideal state of surveillance because they only send information to the government when danger to life or property is very likely. Furthermore, it's based on an identical inability of citizens to predict their own death far enough in advance to save themselves (often because they're asleep). Thus, we purchase devices that implement a single piece of intelligence: "if the house is about to burn down, invade my privacy and call the Fire Department." Note, prior to this device, fire prevention would require someone <a href="https://en.wikipedia.org/wiki/History_of_firefighting">sitting in/near your home</a> waiting for it. Thus, the device actually creates more privacy and more effective surveillance by reducing the need for humans to watch your home while increasing the adoption (affordability) of fire detection. This begs the question, what makes this (the first wave of IoT) so ubiquitously acceptable while other invasions of privacy are not? I believe it comes down to several main properties of fire alarms:</p>

<ul>
	<li>Privacy is only invaded if danger is probable above a certain percentage. For the U.S., <a href="http://www.nfpa.org/news-and-research/fire-statistics-and-reports/fire-statistics/the-fire-service/fire-department-calls/false-alarm-activity-in-the-us">a fire alarm indicates danger with ~91% accuracy</a> (Also, it's a more complicated issue than simply device accuracy, but I'd expect similar complications with any system of its kind).</li>
	<li>Those with access to the device (homeowners) aren't explicitly trying to fool it. Thus, its inner workings can be made public, allowing it's protection of privacy to be fully known / auditable (no need for self-regulation of fire alarm manufacturers)</li>
	<li>Furthermore, fire alarms don't require software updates to discover "new kinds of fires". This allows auditability to be scalable (once for many, many devices) because there are rarely updates.</li>
</ul>

<p>In a perfect world, there would be a "Fire Alarm" device for activities involving irreversible, heinous crimes such as assault, murder, or terrorism, which:</p> 

<ul>
	<li>only invaded the privacy of an individual if they were in extreme danger or actively commiting a violent crime</li>
	<li>used technology that was independently auditable for privacy protection (maybe even open source?)</li>
	<li>did not reveal so much as to deem it foolable by the villains of the world (hmm...maybe not <i>totally</i> open source).</li>
</ul>
<p>The goal of this blogpost is to lay out a potential blueprint for such a device alongside a small prototype to demonstrate how it could work in production. It is my hope to inspire conversation around this topic as well as identify prime targets for further research and development.</p>
<p>That being said, this proposed technological innovation is only half the battle, as I believe it opens up the potential for interesting social structures around public safety that may be more optimal than ONLY "top down government surveillance", especially in the prevention of common crimes. Perhaps the infrastructure necessary for crime detection could be an opt-in social contract, wherein people had the technology available to simply avoid individuals who were not opting-in while receiving full protection from those who do opt-in by virtue of the device's predictive abilities (while preserving privacy of course). That being said, this blogpost is primarily about a technological device, and I will leave further analysis of proper social structures around this device to a later date. For the purposes of exposition, I'll use the current legal structures of law enforcement (obatining warrants, etc.) but this technology is in no way tied to them and I welcome more creativity in this space.</p>


<h2 class="section-heading">Part 3: The Role of Machine Learning</h2>

<p>Fortunately, the R&D investment into devices for this kind of detection by commerical entities has been massive. To be clear, this investment hasn't been driven by the desire for consumer privacy. On the contrary, these devices were developed to achieve scale. Consider developing Gmail and wanting to offer a feature that filters out SPAM. You could invade people's privacy and read all their emails by hand, but it would be faster and cheaper to build a machine that can simply detect SPAM such that you can filter through hundreds of millions of emails per day with a few dozen machines. Given that law enforcement seeks to protect such a large population (presumably filtering through rather massive amounts of data looking for criminals/terrorists), it is not hard to expect that there's a high degree of automation in this process. Bottom line, <a href="http://www.darpa.mil/news-events/2016-06-17">Machine Learning is probably involved</a>.</p>

<p>So, conveivably, when law enforcement performs surveillance over a large data stream, it's probably not hiring a team of 100,000 people to read through each and every datapoint, it's probably so that they can use a <a href="https://www.splunk.com/pdfs/presentations/govsummit/machine-learning-applications-for-federal-government.pdf">sophisticated Machine Learning classifer</a> that, at the end of the day, makes 2 predictions "FOUND IT" or "NOPE". One of my absolute favorite publicly discussed uses of this flavor of tech by law enforcement is at <a href="http://www.digitalreasoning.com/partnering-to-combat-human-trafficking">Digital Reasoning</a> where they have partnered with Ashton Kutcher and Thorn to build "an artificial intelligence tool called Spotlight that helps law enforcement identify both victims and perpetrators of human trafficking". According to their website, this tech has helped identify "6,325 victims and 2,186 traffickers", a rather incredible feat. (You can watch <a href="https://www.youtube.com/watch?time_continue=2&v=DOc-SjcR6Eo">Ashton Kutcher talking about it to Congress here.</a>)</p> 

<p>I say all this to drive home a point. Fire Detectors for particular patterns of data (such as detecting "victims and perpetrators of human trafficking") already exist in the form of Machine Learning, particularly Machine Learning over human language such as social media, email, and other messaging systems. The core issue is not the lack of tech around the device. The core issue is that, unlike fire alarms, the <b>capabilities</b> and <b>predictions</b> of this tech can't live out in the open. If the capabilties were made public, people would reverse engineer and circumvent them. If the predictions were made public, criminals would get a "heads up... you've been caught" ahead of law enforcement in addition to an increased risk of prediction spoofing. Furthermore, if the machine learning was handed to...say... a chat application, there's no way to know if that chat application is actually running it on all messages or if their "no dangerous messages today!" is simply to keep their name out of the news. As a result, proper surveillance requires aggregating data into secure facilities wherein algorithms and their predictions are kept secret from villains who would want to circumvent them, and independent corporations who would have incentive to ignore them. </p>

<p>So, given that the raw technology for "Fire Detectors" already exists in the form of Machine Learning (and is improving every day), what we really lack is an ability to transform our Machine Learning agents such that:</p>

<ul>
	<li>they can be audited by a trusted party for privacy protection</li>
	<li>they can't be reverse engineered when deployed</li>
	<li>their predictions can't be read without a secret key</li>
	<li>their predictions can't be falsified by the deploying party (such as a chat application)</li> 
	<li>reasonably efficient and scalable</li>
</ul>

<p>In order to fully define this idea, we will be building a prototype "Fire Detector" for crime. In the next section, we're going to build a basic version of this detector using a 2 layer neural network. After that, we're going to upgrade this detector so that it meets the requirements listed above. For the sake of exposition, this detector is going to be trained on a SPAM dataset and thus will only detect SPAM, but it could conceivably be trained to detect any particular event you wanted (i.e., murder, arson, etc.). I only chose SPAM because it's relatively easy to train and gives me a simple, high quality network with which to demonstrate the methods of this blogpost.

<h2 class="section-heading">Part 4: Building a SPAM Detector</h2>

 <p>So, our demo use case is that a local law enforcement officer (we'll call him "Bob") is hoping to crack down on people sending out SPAM emails. However, instead of reading everyone's emails, Bob only wants to detect when someone is sending SPAM so that he can file for an injunction and acquire a warrant with the police to further investigate. The first part of this process is to simply build an effective SPAM detector.</p>

<!-- p>In order to fully define this idea, we will be building a prototype "Fire Detector" for crime using a neural network. For the sake of exposition, let's say that Police Officer "Bob" is trying to detect a nefarious, evil, serial killing SPAMMER who has been sending hundreds of SPAM messages to everyone in a city, threatening their lives. He wants to detect this person's identity by detecting when the killer is about to send one of these SPAM messages. However, instead of having to READ everyone's emails before they send them (a hugely time consuming and privacy invading task), Bob only wants to DETECT when someone is sending SPAM so that he can file for an injunction and acquire a warrant with the police to further investigate. The first part of this process is to simply build an effective SPAM detector.</p>

<p>In this section, we're going to build a SPAM detector using a neural network.</p> -->

 
<!-- <p>Now, you may be thinking "woah... law enforcement shouldn't have the ability to detect SPAM emails! I love sending those to my co-workers and it's my right to do so!" I want to remind you, this is just a demo use case. Firstly, a real law enforcement officer wouldn't likely get a warrant for this Replace detecting "SPAM" with detecting "homicidal language". This technology is based on the underlying assumption that sometimes it is justified for certain activities to be detectable by law enforcement. If your argument is that surveillance should never happen, that laws shouldn't exist, and that the government shouldn't have the ability to enforce anything (aka... you're an anarchist), just click away. This blogpost isn't for you. However, if you think </p>
 -->
<center>
<img src="{{ site.baseurl }}/img/spam_meme.jpeg" />
</center>

<p><b>The Enron Spam Dataset:</b> In order to teach an algorithm how to detect SPAM, we need a large set of emails that has been previously labeled as "SPAM" or "NOT SPAM". That way, our algorithm can study the dataset and learn to tell the difference between the two kinds of emails. Fortunately, a prominent energy company called <a href="https://en.wikipedia.org/wiki/Enron_scandal">Enron committed a few crimes</a> recorded in email, and as a result a rather large subset of the company's emails were made public. As many of these were SPAM, a dataset was curated specifically for building SPAM detectors called the <a href="http://www2.aueb.gr/users/ion/data/enron-spam/">Enron Spam Dataset</a>. I have further pre-processed this dataset for you in the following files: <a href="{{ site.baseurl }}/data/ham.txt">HAM</a> and
<a href="{{ site.baseurl }}/data/spam.txt">SPAM</a>. Each line contains an email. There are 22,032 HAM emails, and 9,000 SPAM emails. We're going to set aside the last 1,000 in each category as our "test" dataset. We'll train on the rest.</p>

<p><b>The Model:</b> For this model, we're going to optimize for speed and simplicity and use a simple bag-of-words Logistic Classifier. It's a neural network with 2 layers (input and output). We could get more sophisticated with an LSTM, but this blogpost isn't about filtering SPAM, it's about making surveillance less intrusive, more accountable, and more effective. Besides that, bag-of-words LR works really well for SPAM detection anyway (and for a surprisingly large number of other tasks as well). No need to overcomplicate. Below you'll find the code to build this classifier. If you're unsure how this works, feel free to review my previous post on <a href="http://iamtrask.github.io/2015/07/12/basic-python-network/">A Neural Network in 11 Lines of Python</a>.</p>
<center>
(fwiw, this code works identically in Python 2 or 3 on my machine)
</center>
<pre class="brush:python">

import numpy as np
from collections import Counter
import random
import sys

np.random.seed(12345)

f = open('spam.txt','r')
raw = f.readlines()
f.close()

spam = list()
for row in raw:
    spam.append(row[:-2].split(" "))
    
f = open('ham.txt','r')
raw = f.readlines()
f.close()

ham = list()
for row in raw:
    ham.append(row[:-2].split(" "))
    
class LogisticRegression(object):
    
    def __init__(self, positives,negatives,iterations=10,alpha=0.1):
        
        # create vocabulary (real world use case would add a few million
        # other terms as well from a big internet scrape)
        cnts = Counter()
        for email in (positives+negatives):
            for word in email:
                cnts[word] += 1
        
        # convert to lookup table
        vocab = list(cnts.keys())
        self.word2index = {}
        for i,word in enumerate(vocab):
            self.word2index[word] = i
    
        # initialize decrypted weights
        self.weights = (np.random.rand(len(vocab)) - 0.5) * 0.1
        
        # train model on unencrypted information
        self.train(positives,negatives,iterations=iterations,alpha=alpha)
    
    def train(self,positives,negatives,iterations=10,alpha=0.1):
        
        for iter in range(iterations):
            error = 0
            n = 0
            for i in range(max(len(positives),len(negatives))):

                error += np.abs(self.learn(positives[i % len(positives)],1,alpha))
                error += np.abs(self.learn(negatives[i % len(negatives)],0,alpha))
                n += 2

            print("Iter:" + str(iter) + " Loss:" + str(error / float(n)))

    
    def softmax(self,x):
        return 1/(1+np.exp(-x))

    def predict(self,email):
        pred = 0
        for word in email:
            pred += self.weights[self.word2index[word]]
        pred = self.softmax(pred)
        return pred

    def learn(self,email,target,alpha):
        pred = self.predict(email)
        delta = (pred - target)# * pred * (1 - pred)
        for word in email:
            self.weights[self.word2index[word]] -= delta * alpha
        return delta
    
model = LogisticRegression(spam[0:-1000],ham[0:-1000],iterations=3)

# evaluate on holdout set

fp = 0
tn = 0
tp = 0
fn = 0

for i,h in enumerate(ham[-1000:]):
    pred = model.predict(h)

    if(pred < 0.5):
        tn += 1
    else:
        fp += 1
        
    if(i % 10 == 0):
        sys.stdout.write('\rI:'+str(tn+tp+fn+fp) + " % Correct:" + str(100*tn/float(tn+fp))[0:6])

for i,h in enumerate(spam[-1000:]):
    pred = model.predict(h)

    if(pred >= 0.5):
        tp += 1
    else:
        fn += 1

    if(i % 10 == 0):
        sys.stdout.write('\rI:'+str(tn+tp+fn+fp) + " % Correct:" + str(100*(tn+tp)/float(tn+tp+fn+fp))[0:6])
sys.stdout.write('\rI:'+str(tn+tp+fn+fp) + " Correct: %" + str(100*(tn+tp)/float(tn+tp+fn+fp))[0:6])

print("\nTest Accuracy: %" + str(100*(tn+tp)/float(tn+tp+fn+fp))[0:6])
print("False Positives: %" + str(100*fp/float(tp+fp))[0:4] + "    <- privacy violation level out of 100.0%")
print("False Negatives: %" + str(100*fn/float(tn+fn))[0:4] + "   <- security risk level out of 100.0%") 

</pre>


<pre>
Iter:0 Loss:0.0455724486216
Iter:1 Loss:0.0173317643148
Iter:2 Loss:0.0113520767678
I:2000 Correct: %99.798
Test Accuracy: %99.7
False Positives: %0.3    <- privacy violation level out of 100.0%
False Negatives: %0.3   <- security risk level out of 100.0%
</pre>

<p><b>Feature: Auditability: </b> a nice feature of our classifier is that it is a highly auditable algorithm. Not only does it give us accurate scores on the testing data, but we can open it up and look at how it weights various terms to make sure it's flagging emails based on what officer "Bob" is specifically looking for. It is with these insights that officer "Bob" seeks permission from his superior to perform his <i>very limited surveillance</i> over the email clients in his jurisdiction. Note, Bob has no access to read anyone's emails. He only has access to detect <u>exactly what he's looking for</u>. The purpose of this model is to be a measure of "probable cause", which Bob's superior can make the final call on given the privacy and security levels indicated above for this model.</p>

<p>Ok, so we have our classifier and Bob gets it approved by his boss (the chief of police?). Presumably, law enforcement officer "Bob" would hand this over to all the email clients within his jurisdiction. Each email client would then use the classifier to make a prediction each time it's about to send an email (commit a crime). This prediction gets sent to Bob, and eventually he figures out who has been anonymously sending out 10,000 SPAM emails every day within his jurisdiction.</p>

<p><b>Problem 1: His Predictions Get Faked</b> - after 1 week of running his algorithm in everyone's email clients, everyone is still receiving tons of SPAM. However, Bob's Logistic Regression Classifier apparently isn't flagging ANY of it, even though it seems to work when he tests some of the missed SPAM on the classifier with his own machine. He suspects that someone is intercepting the algorithm's predictions and faking them to look like they're all "Negative". What's he to do?</p>

<p><b>Problem 2: His Model is Reverse Enginered</b> - Furthermore, he notices that he can take his pre-trained model and sort it by its weight values, yielding the following result.

<center>
<img src="{{ site.baseurl }}/img/sorted_weights.png" />
</center>

<p>While this was advantageous for auditability (making the case to Bob's boss that this model is going to find only the information it's supposed to), it makes it vulnerable to attacks! So not only can people intercept and modify his model's predictions, but they can even reverse engineer the system to figure out which words to avoid. In other words, the model's <b>capabilities</b> and <b>predictions</b> are vulnerable to attack. Bob needs another line of defense.</p>

<h2 class="section-heading">Part 5: Homomorphic Encryption</h2>

<p>In my previous blogpost <a href="http://iamtrask.github.io/2017/03/17/safe-ai/">Building Safe A.I.</a>, I outlined how one can train Neural Networks in an encrypted state (on data that is not encrypted) using Homomorphic Encryption. Along the way, I discussed how Homomorphic Encryption generally works and provided an implementation of <a href="https://courses.csail.mit.edu/6.857/2015/files/yu-lai-payor.pdf">Efficient Integer Vector Homomorphic Encryption</a> with tooling for neural networks based on <a href="https://github.com/jamespayor/vector-homomorphic-encryption">this implementation</a>. However, as mentioned in the post, there are many homomorphic encryption schemes to choose from. In this post, we're going to use a different one called Paillier Cryptography, which is a <a href="https://en.wikipedia.org/wiki/Paillier_cryptosystem">probabilistic, assymetric algorithm for public key cryptography</a>. While a complete breakdown of this cryptosystem is something best saved for a different blogpost, I did fork and update a python library for paillier to be able to handle larger cyphertexts and plaintexts (longs) as well as a small bugfix in the logging here <a href="https://github.com/iamtrask/python-paillier">Paillier Cryptosystem Library</a>. Pull that repo down, run "python setup.py install" and try out the following code.</p>

<center>
<img src="{{ site.baseurl }}/img/paillier_101.png" />
</center>

<p>As you can see, we can encrypt (positive or negative) numbers using a public key and then add their encrypted values together. We can then decrypt the resulting number which returns the output of whatever math operations we performed. Pretty cool, eh? We can use just these operations to encrypt our Logistic Regression classifier after training. For more on how this works, <a href="http://iamtrask.github.io/2017/03/17/safe-ai/">check out my previous post on the subject</a>, otherwise let's jump straight into the implementation.

<pre class="brush:python">

import phe as paillier
import math
import numpy as np
from collections import Counter
import random
import sys

np.random.seed(12345)

print("Generating paillier keypair")
pubkey, prikey = paillier.generate_paillier_keypair(n_length=64)

print("Importing dataset from disk...")
f = open('spam.txt','r')
raw = f.readlines()
f.close()

spam = list()
for row in raw:
    spam.append(row[:-2].split(" "))
    
f = open('ham.txt','r')
raw = f.readlines()
f.close()

ham = list()
for row in raw:
    ham.append(row[:-2].split(" "))
    
class HomomorphicLogisticRegression(object):
    
    def __init__(self, positives,negatives,iterations=10,alpha=0.1):
        
        self.encrypted=False
        self.maxweight=10
        
        # create vocabulary (real world use case would add a few million
        # other terms as well from a big internet scrape)
        cnts = Counter()
        for email in (positives+negatives):
            for word in email:
                cnts[word] += 1
        
        # convert to lookup table
        vocab = list(cnts.keys())
        self.word2index = {}
        for i,word in enumerate(vocab):
            self.word2index[word] = i
    
        # initialize decrypted weights
        self.weights = (np.random.rand(len(vocab)) - 0.5) * 0.1
        
        # train model on unencrypted information
        self.train(positives,negatives,iterations=iterations,alpha=alpha)
        

    
    def train(self,positives,negatives,iterations=10,alpha=0.1):
        
        for iter in range(iterations):
            error = 0
            n = 0
            for i in range(max(len(positives),len(negatives))):

                error += np.abs(self.learn(positives[i % len(positives)],1,alpha))
                error += np.abs(self.learn(negatives[i % len(negatives)],0,alpha))
                n += 2

            print("Iter:" + str(iter) + " Loss:" + str(error / float(n)))

    
    def softmax(self,x):
        return 1/(1+np.exp(-x))

    def encrypt(self,pubkey,scaling_factor=1000):
        if(not self.encrypted):
            self.pubkey = pubkey
            self.scaling_factor = float(scaling_factor)
            self.encrypted_weights = list()

            for weight in model.weights:
                self.encrypted_weights.append(self.pubkey.encrypt(int(min(weight,self.maxweight) * self.scaling_factor)))

            self.encrypted = True            
            self.weights = None

            
        return self

    def predict(self,email):
        if(self.encrypted):
            return self.encrypted_predict(email)
        else:
            return self.unencrypted_predict(email)
    
    def encrypted_predict(self,email):
        pred = self.pubkey.encrypt(0)
        for word in email:
            pred += self.encrypted_weights[self.word2index[word]]
        return pred
    
    def unencrypted_predict(self,email):
        pred = 0
        for word in email:
            pred += self.weights[self.word2index[word]]
        pred = self.softmax(pred)
        return pred

    def learn(self,email,target,alpha):
        pred = self.predict(email)
        delta = (pred - target)# * pred * (1 - pred)
        for word in email:
            self.weights[self.word2index[word]] -= delta * alpha
        return delta
    
model = HomomorphicLogisticRegression(spam[0:-1000],ham[0:-1000],iterations=10)

encrypted_model = model.encrypt(pubkey)

# generate encrypted predictions. Then decrypt them and evaluate.

fp = 0
tn = 0
tp = 0
fn = 0

for i,h in enumerate(ham[-1000:]):
    encrypted_pred = encrypted_model.predict(h)
    try:
        pred = prikey.decrypt(encrypted_pred) / encrypted_model.scaling_factor
        if(pred < 0):
            tn += 1
        else:
            fp += 1
    except:
        print("overflow")

    if(i % 10 == 0):
        sys.stdout.write('\r I:'+str(tn+tp+fn+fp) + " % Correct:" + str(100*tn/float(tn+fp))[0:6])

for i,h in enumerate(spam[-1000:]):
    encrypted_pred = encrypted_model.predict(h)
    try:
        pred = prikey.decrypt(encrypted_pred) / encrypted_model.scaling_factor
        if(pred > 0):
            tp += 1
        else:
            fn += 1
    except:
        print("overflow")

    if(i % 10 == 0):
        sys.stdout.write('\r I:'+str(tn+tp+fn+fp) + " % Correct:" + str(100*(tn+tp)/float(tn+tp+fn+fp))[0:6])
sys.stdout.write('\r I:'+str(tn+tp+fn+fp) + " % Correct:" + str(100*(tn+tp)/float(tn+tp+fn+fp))[0:6])

print("\n Encrypted Accuracy: %" + str(100*(tn+tp)/float(tn+tp+fn+fp))[0:6])
print("False Positives: %" + str(100*fp/float(tp+fp))[0:4] + "    <- privacy violation level")
print("False Negatives: %" + str(100*fn/float(tn+fn))[0:4] + "   <- security risk level") 
</pre>

<pre>

Generating paillier keypair
Importing dataset from disk...
Iter:0 Loss:0.0455724486216
Iter:1 Loss:0.0173317643148
Iter:2 Loss:0.0113520767678
Iter:3 Loss:0.00455875940625
Iter:4 Loss:0.00178564065045
Iter:5 Loss:0.000854385076612
Iter:6 Loss:0.000417669805378
Iter:7 Loss:0.000298985174998
Iter:8 Loss:0.000244521525096
Iter:9 Loss:0.000211014087681
 I:2000 % Correct:99.296
 Encrypted Accuracy: %99.2
False Positives: %0.0    <- privacy violation level
False Negatives: %1.57   <- security risk level
</pre>

<p>This model is really quite special (and fast!... around 1000 emails per second with a single thread on my laptop). Note that we don't use the sigmoid during prediction (only during training) as it's followed by a threshold at 0.5. Thus, at testing we can simply skip the sigmoid and threshold at 0 (which is identical to running the sigmoid and thresholding at 0.5). However, enough with the technicals, let's get back to Bob.</p>

<p>Bob had a problem with people being able to see his predictions and fake them. However, now all the predictions are encrypted.</p>
<center>
<img src="{{ site.baseurl }}/img/encrypted_prediction.png" />
</center>

<p>Furthermore, Bob had a problem with people reading his weights and reverse engineering how his algorithm had learned to detect. However, now all the weights themselves are also encrypted (and can predict in their encrypted state!).</p>
<center>
<img src="{{ site.baseurl }}/img/encrypted_weights.png" />
</center>

<p>Now when he deploys his model, no one can read what it is sending to spoof it (or even know what it is supposedly detecting) or reverse engineer it to further avoid its detection. This model has many of the desirable properties that we wanted. It's auditable by a third party, makes encrypted predictions, and its intelligence is also encrypted from those who might want to steal/fool it. Furthermore, it is quite accurate (with no false positives on the testing dataset), and also quite fast. Bob deploys his new model, receives encrypted predictions, and discovers that one particular person seems to be preparing to send out (what the model thinks is) 10,000 suspiciously SPAMY emails. He reports the metric to his boss and a judge, obtains a warrant, and rids the world of SPAM forever!!!!</p>


<h2 class="section-heading">Part 6: Building Safe Crime Prediction</h2>

<p>Let's take a second and consider the high level difference that this model can make for law enforcement. Present day, in order to detect events such as a murder or terrorist attack, law enforcement needs unrestricted access to data streams which might be predictive of the event. Thus, in order to detect an event that may occur in 0.0001% of the data, they have to have access to 100% of the data stream by re-directing it to a secret warehouse wherein Machine Learning models are likely deployed.</p>

<p>However, with this approach the same Machine Learning models currently used to identify crimes can instead be encrypted and used as detectors which are deployed to the data stream itself (i.e., chat applications). Law Enforcement then <u>only has access to the predictions of the model</u> as opposed to having access to the entire dataset. This is similar to the use of "drug dogs" in an airport. "Drug dogs" eliminate the need for law enforcement to search everyone's bags looking for cocaine. Instead, a dog is TRAINED (just like a Machine Learning model) to exclusively detect the existence of narcotics. Barking == drugs. No barking == no drugs. POSITIVE neural network prediction means "a terrorist plot is being planned on this phone", NEGATIVE neural network prediction means "a terrorist plot is NOT being planned on this phone". Law enforcement has no need to see the data. They only need this one datapoint. Furthermore, as the model is a discrete piece of intelligence, it can be independently evaluated to ensure that it only detects what it's supposed to (just like we can independently audit what "drug dogs" are trained to detect). However, unlike drug dogs, Encrypted Artificial Intelligence could provide this ability for any crime that is detectable through digitial evidence.</p>

<p><b>Ethical Concerns:</b> Notably, literary work provides commentary around the ethical and moral implications of crime predictions <i>leading to a conviction directly</i>, (such as in the 1956 short story "Minority Report", the origin of the term "precrime"). However, the primary value of crime prediction is not efficient punishment and inprisonment, it's the prevention of harm. Accordingly, there are two trivial ways to avoid this moral dilemma. First, the vast majority of crimes require smaller crimes in advance of a larger one (i.e., conspiracy to commit), and simply predicting the larger crime by being able to more accurately detect the smaller crimes of preparation avoids much of the moral dilemma. Secondly, pre-crime technology can simply be used as a method for how to best allocate police resources as well as a method for triggering a warrant/investigation (such as Bob did in our example). This latter use inparticular is perhaps the best use of crime prediction technology if the privacy security tradeoff can be mitigated (the topic of this blogpost). A positive prediction should launch an investigation, not put someone behind bars directly.</p>

<p><b>Legal Concerns:</b> While earlier I spent most of my time discussing "Fire Alarms" as a useful social analogy, another widely accepted form of surveillance widely used by law enforcement is the "drug dog", which offers a very interesting social and legal precedent for the invasion of privacy in the detection of a crime.  <a href="https://en.wikipedia.org/wiki/United_States_v._Place">United States v. Place</a> ruled that because drug dogs are able to exclusively detect the odor of narcotics (without detecting anything else), they are not considered a "search". In other words, because they are able to classify only the crime without requiring a citizen to divulge any other information, it is not considered an invasion of privacy. Furthermore, I believe that the general feeling of the public around this issue reflects the law. A fluffy dog coming up and giving your rolling bag a quick sniff at the airport is a very effective yet privacy preserving form of surveillance. Curiously, the dog un-doubtedly could be trained to detect the presence of any number of embarassing things in your bag. However, it is only TRAINED to detect those indicative of a crime. In the same way, Artificial Intelligence agents can be TRAINED to detect signs indicative of a crime without detecting anything else. As such, for models that achieve a sufficiently high accuracy rate (and more importantly a sufficiently low "False Positive" rate), these models could obtain a similar legal status as drug dogs.</p>

<p><b>Authoritarian Corruption Concerns:</b> Perhaps you're wondering, "Why innovate in this space? Why propose new methods for surveillance? Aren't we being surveilled enough?". My answer is this: It should be impossible for those who do NOT harm one another (the innocent) to be surveilled by corporations or governments. Inversely, we want to detect anyone about to injure another human far enough in advance to stop them. Before recent technological advancements, these two statements were clearly impossible to achieve together. The purpose of this blogpost is to make one point: I believe it is technologically plausible to have both perfect safety and perfect privacy. By "perfect privacy", I mean privacy that is NOT subject to the whims of an authoritarian government, but is instead limited by <u>auditable</u> technology like Encrypted Artificial Intelligence. How do we audit that technology without revealing its techniques to terrorists? I'm not sure. Perhaps it's 3rd party watchdog organizations. Perhaps it's instead a system people opt-in to (like Fire Alarms) and there's a social contract established such that people can avoid those who do not opt in (because... why would you?). Perhaps it's developed entirely in the open source but is simply so effective that it can't be circumvented? Again, there are still unanswered questions.</p>

<p>This blogpost is not the whole solution. Social and government structures would undoubtedly need to adjust to the advent of this kind of tool. However, I do believe it is a significant piece of the puzzle, and I look forward to the conversations it can inspire.


<h2 class="section-heading">Part 7: Future Work</h2>

<p>First and foremost, we need modern float vector Homomorphic Encryption algorithms (FV, YASHE, etc.) supported in a major Deep Learning framework (PyTorch, Tensorflow, Keras, etc.). Furthermore, exploring how we can increase the speed and security of these algorithms is an actively innovated and vitally important line of work. Finally, we need to imagine how social structures could best partner with these new tools to protect people's safety without violating privacy (and continue to reduce the risk of authoritarian governments misusing the technology).</p>


<h2 class="section-heading">Part 8: Let's Talk</h2>

<p>At the end of May, I had the pleasure of meeting with the brilliant <a href="https://www.fhi.ox.ac.uk/team/carrick-flynn/">Carrick Flynn</a> and a number of wonderful folks from the <a href="https://www.fhi.ox.ac.uk">Future of Humanity Institute</a>, one of the world's leading labs on A.I. Safety. We were speaking as they have recently become curious about Homomorphic Encryption, especially in the context of Deep Learning and A.I. One of the use cases we explored over Indian cuisine was that of Crime Prediction, and this blogpost is an early derivative of our conversation (hopefully one of many). I hope you find these ideas as exciting as I do, and I encourage you to reach out to Carrick, myself, and FHI if you are further curious about this topic or the Existential Risks of A.I. more broadly. To that end, if you find yourself excited about the idea that these tools might reduce government surveillance down to only criminals and terrorists, don't just click on! <u>Help spread the word!</u> (upvote, share, etc.) Also, I'm particularly interested in hearing from you if you work in one of several industries (or can make introductions):</p>

<ul>

	<li><b>Law Enforcement:</b> I'm very curious as to the extent to which these kinds of tools could become usable, particularly for local law enforcement. What are the major barriers to entry to tools such as these becoming useful for the triggering of a warrant? What kinds of certifications are needed? Do you know of similar precedent/cases? (i.e., drug dogs)</li>
	<li><b>DARPA / Intelligence Community / Gov. Contractor:</b> Similar question as for local law enforcement, but with the context being the federal space.</li>
	<li><b>Legislation / Regulation:</b> I envision a future where these tools become mature enough for legislation to be crafted such that they account for improved privacy/security tradeoffs (reduced privacy invasion but expedited warrant triggering procedure). Are there members of the legislative body who are actually interested in backing this type of development?</li>

</ul>

<p>I typically tweet out new blogposts when they're complete <a href="https://twitter.com/iamtrask">@iamtrask</a>. As mentioned above, if these ideas inspire you to help in some way, a share or upvote is the first place to start as a <b>lack of awareness</b> of these tools is the greatest obstacle at this stage. All in all, thank you for your time and attention, and I hope you enjoyed the post!</p>


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