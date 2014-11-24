---
layout:     post
title:      "Word2Vec Analysis of Harry Potter"
subtitle:   "Some fun cosine similarities of words and characters in the 7 Harry Potter Books."
date:       2014-11-23 12:00:00
author:     "iamtrask"
header-img: "img/typewriter.jpg"
---

Word2vec is a very cool algorithm that uses neural networks to map words to feature vectors. Those vectors then have interesting properties. You can use these vectors to cluster words into groups... find words that are most similar in an unsupervised fashion.

I ran <a href="https://code.google.com/p/word2vec/">word2vec</a> on the 7 harry potter books and ran some cosine similarities on words i thought might be interesting. (using the open source <a href="http://radimrehurek.com/gensim/">Gensim</a> library I love) My favorite is the word "password" below... which revealed a list of passwords to the Gryffendor Common Room. 

The top word of each list is the focus word... and then a list of the most similar words thereafter.

(64 dimensions : 1 epoch)<br />
<b>1.0000000000000002:<expecto</b> <br />
0.8790060473734644:<patronum <br />
0.755879251292692:<pettigrews <br />
0.6931649914220047:<scabbers <br />
0.6921019768155199:<pettigrew <br />
0.6854965539870754:<lumos <br />
0.6800035990521911:<groped <br />
0.664763725362591:<buckbeaks <br />
0.6386204400460198:<lupins <br />
0.6368874336372525:<forcing <br />
<br />
(256 dimensions : 10 epochs)<br />
<b>1.0000000000000002:<expecto</b> <br />
0.881676712172453:<patronum <br />
0.66633365764735:<expec <br />
0.5100899639798923:<patrono <br />
0.4183506799917183:<poppy <br />
0.4151233329572086:<wailed <br />
0.4093665595659816:<nicknamed <br />
0.3973543132151556:<riddikulus <br />
0.3944545196592748:<fistbeating <br />
0.39103755743544927:<bristling <br />
 
 
(256 dimensions : 10 epochs)<br />
<b>1.0:<lumos</b> <br />
0.42209239730743003:<imperio <br />
0.40507159450163904:<ignited <br />
0.3758083182732268:<tergeo <br />
0.3744004687853999:<episkey <br />
0.3658264199741773:<portus <br />
0.35926607923955595:<uhoh <br />
0.3574845249683229:<serpensortia <br />
0.35644744188201566:<wandtip <br />
0.3503601500539219:<dissendium <br />
 
 
(64 dimensions : 1 epoch)<br />
<b>1.0:<weasley</b> <br />
0.7899136471577068:<cole <br />
0.7580984973288645:<weasleys <br />
0.704308962845765:<cattermole <br />
0.696147590313737:<figg <br />
0.6615516871288135:<bill <br />
0.5775892972766857:<mr <br />
0.5623844627363042:<mrs <br />
0.547272989628803:<crouch <br />
0.5346744691953205:<brightly <br />
<br />
(256 dimensions : 10 epochs)<br />
<b>1.0:<weasley</b> <br />
0.5571492216402788:<mrs <br />
0.525661506461713:<mr <br />
0.5122609732187181:<redheads <br />
0.47470149235833253:<greatauntie <br />
0.4636894081306857:<basil <br />
0.4615857402277965:<wwhats <br />
0.44954942844918266:<whew <br />
0.44593325992665894:<pranksters <br />
0.4366713328133361:<weasleys <br />
 
 
(64 dimensions : 1 epoch)<br />
<b>1.0000000000000002:<potter</b> <br />
0.7040619432963181:<severus <br />
0.6994994807105462:<thank <br />
0.6875348923351211:<sir <br />
0.6822709821434811:<please <br />
0.632136736822497:<may <br />
0.6291806648311767:<cannot <br />
0.6284403688596681:<yes <br />
0.624241093676769:<kindly <br />
0.6217287188964961:<will <br />
<br />
(256 dimensions : 10 epochs)<br />
<b>0.9999999999999999:<potter </b><br />
0.3901893042844876:<humble <br />
0.38913611920424174:<rotter <br />
0.36768347738598195:<heed <br />
0.3666138243923663:<heroworshipped <br />
0.3587120147197108:<woooooooo <br />
0.34933445012876724:<characters <br />
0.3440882110680894:<dunderbore <br />
0.344022635479845:<questionall <br />
0.34103571192794435:<pining <br />
 
 
(64 dimensions : 1 epoch)<br />
<b>1.0000000000000002:<gryffindor</b> <br />
0.74139062089133:<team <br />
0.734880573018089:<tower <br />
0.7231970430099021:<slytherin <br />
0.7021615040969098:<common <br />
0.7018928824840882:<ravenclaw <br />
0.6585783668158374:<points <br />
0.6540640450146518:<spinnet <br />
0.64507063817762:<bell <br />
0.6289645923037345:<goal <br />
<br />
(256 dimensions : 10 epochs)<br />
<b>1.0:<gryffindor</b> <br />
0.4581853977277023:<hufflepuff <br />
0.4420478362268596:<tower <br />
0.44149319299048684:<points <br />
0.4410251892894441:<slytherin <br />
0.4188516239321704:<ravenclaw <br />
0.3600329597460896:<gryffindors <br />
0.35418207017889025:<team <br />
0.34891474092816965:<wellearned <br />
0.3404098626732141:<penalty <br />
 
 
(64 dimensions : 1 epoch)<br />
<b>0.9999999999999999:<ravenclaw</b> <br />
0.781214400477696:<hufflepuff <br />
0.7512446691492253:<slytherin <br />
0.7254427881734692:<captain <br />
0.7208340720937167:<oclock <br />
0.7147691706800555:<lee <br />
0.7147331227062966:<montague <br />
0.7018928824840882:<gryffindor <br />
0.697691445889272:<team <br />
0.6839508546137936:<wednesday <br />
<br />
(256 dimensions : 10 epochs) <br />
<b>1.0:<ravenclaw</b> <br />
0.5732267167869871:<hufflepuff <br />
0.43935832571981465:<slytherin <br />
0.43555165040705907:<rowena <br />
0.4188516239321704:<gryffindor <br />
0.407678924818592:<turpin <br />
0.38709404961590305:<helga <br />
0.3708434204576607:<seeker <br />
0.35874384841804063:<huffepuff <br />
0.35602194786273583:<loses <br />
 
 
(64 dimensions : 1 epoch)<br />
<b>1.0:<hufflepuff</b> <br />
0.7921196174194491:<fifth <br />
0.7848088164254446:<seventh <br />
0.781214400477696:<ravenclaw <br />
0.7780135594276192:<fourth <br />
0.7568581966579454:<hufflepuffs <br />
0.7452088578170768:<slytherin <br />
0.7329618627066322:<slytherins <br />
0.7241609971259948:<thursday <br />
0.7202963910695652:<gryffindors <br />
<br />
(256 dimensions : 10 epochs) <br />
<b>1.0:<hufflepuff</b> <br />
0.5732267167869871:<ravenclaw <br />
0.560598634502152:<slytherin <br />
0.4581853977277023:<gryffindor <br />
0.41404169865069024:<points <br />
0.41335251749481483:<helga <br />
0.40705600406104697:<pushover <br />
0.3964490683438199:<applauding <br />
0.39567843096475613:<loses <br />
0.39244432848771427:<match <br />
 
 
(64 dimensions : 1 epoch)<br />
<b>1.0000000000000002:<slytherin</b> <br />
0.7512446691492253:<ravenclaw <br />
0.7452088578170768:<hufflepuff <br />
0.7238327202395243:<team <br />
0.7231970430099021:<gryffindor <br />
0.7165509326427633:<captain <br />
0.7030698136643037:<bell <br />
0.6922161358648197:<goal <br />
0.6914818449404438:<montague <br />
0.6612854741883617:<pucey <br />
<br />
(256 dimensions : 10 epochs) <br />
<b>1.0:<slytherin</b> <br />
0.560598634502152:<hufflepuff <br />
0.44370546214405354:<slytherins <br />
0.4410251892894441:<gryffindor <br />
0.43935832571981465:<ravenclaw <br />
0.4111100118874837:<team <br />
0.3960522941982452:<captain <br />
0.3834171440911241:<gains <br />
0.3816636526374869:<pushover <br />
0.37815919943099136:<fen <br />
 
 
(64 dimensions : 1 epoch)<br />
1.0:<hermione <br />
<b>0.6373033872867323:<she</b> <br />
0.5360344746735539:<neville <br />
0.5274756001139249:<he <br />
0.5214301504925287:<ginny <br />
0.5109574888160943:<ron <br />
0.4999163834053927:<luna <br />
0.49574563180394704:<harry <br />
0.451967913703171:<romilda <br />
0.446476077232399:<her <br />
<br />
(256 dimensions : 10 epochs) <br />
<b>1.0000000000000002:</b><hermione <br />
0.5042554769286905:<ron <br />
0.4808255935304602:<she <br />
0.3717110232643911:<ginny <br />
0.35913453543144513:<acidly <br />
0.35306516236363134:<ermyknee <br />
0.3515929674760651:<encouragingly <br />
0.35124423149024275:<uhoh <br />
0.3455436053959502:<grabbing <br />
0.34365264010683094:<lavender <br />
 
 
(64 dimensions : 1 epoch)<br />
<b>1.0:<dumbledore</b> <br />
0.7867909396010355:<snape <br />
0.652590036205367:<slughorn <br />
0.6378681113816113:<voldemort <br />
0.6120050198022656:<aberforth <br />
0.6019010767912868:<he <br />
0.5929735071374835:<scrimgeour <br />
0.5840436894354705:<sirius <br />
0.5553253520856778:<dumbledores <br />
<br />
(256 dimensions : 10 epochs) <br />
<b>1.0:<dumbledore</b> <br />
0.49688884807669753:<snape <br />
0.43320641875023586:<fudge <br />
0.42104734145946027:<voldemort <br />
0.409769764165034:<corpses <br />
0.40586327560858065:<lupin <br />
0.3992514094799346:<dumbledores <br />
0.3984795966379898:<headmaster <br />
0.36481567503440565:<devastating <br />
0.35980117000272555:<riddle <br />
 
 
(64 dimensions : 1 epoch)<br />
<b>1.0000000000000002:<spell</b> <br />
0.5705834288105536:<jinx <br />
0.5528068188658538:<clear <br />
0.5308173140619804:<however <br />
0.5256446406146716:<crumplehorned <br />
0.5217704552103746:<hit <br />
0.5214290685798957:<latter <br />
0.5210853653286843:<sectumsempra <br />
0.5204984581955842:<dolohov <br />
0.5172019428367624:<made <br />
<br />
(256 dimensions : 10 epochs) <br />
<b>0.9999999999999999:<spell</b> <br />
0.45622019920423756:<spells <br />
0.38503414331623603:<charm <br />
0.3744579769148505:<retaliate <br />
0.3365386087137521:<stunning <br />
0.31299212123460146:<fourpoint <br />
0.3047318421865308:<defensive <br />
0.3018663449722407:<jinx <br />
0.2986278064898596:<practicing <br />
0.29811271395978733:<hit <br />
 
 
(64 dimensions : 1 epoch)<br />
<b>1.0:<chamber</b> <br />
0.7516236239509654:<staffroom <br />
0.7097278407351896:<basilisk <br />
0.6396829682468098:<secrets <br />
0.6303229904669257:<messages <br />
0.6292212718692173:<pages <br />
0.6255458905896577:<gargoyle <br />
0.623691053534629:<stage <br />
0.6189105698380645:<sealed <br />
0.6165084868604697:<hilt <br />
<br />
(256 dimensions : 10 epochs) <br />
<b>1.0:<chamber</b> <br />
0.527350716695893:<secrets <br />
0.45803538999265264:<forsaken <br />
0.4509279299021009:<fanciful <br />
0.3937455721042796:<unseal <br />
0.3737416685904814:<roosters <br />
0.35312885285278145:<drawingroom <br />
0.3358263562408226:<unleash <br />
0.32925459347667607:<daubed <br />
0.32405200326296857:<runin <br />
 
 
(128 dimensions : 1 epoch)<br />
<b>1.0:<black</b> <br />
0.7090495706356712:<thick <br />
0.6825056469408932:<silver <br />
0.6687549059638025:<white <br />
0.6671827818068091:<thin <br />
0.6595272052625423:<green <br />
0.6559287359085553:<tiny <br />
0.6520876963925315:<glass <br />
0.6499197812776186:<bright <br />
0.6376775975420493:<hair <br />
<br />
(256 dimensions : 10 epochs) <br />
<b>1.0000000000000002:<black</b> <br />
0.4187862746289444:<ravaged <br />
0.41376806599272925:<bald <br />
0.3964342510912526:<silky <br />
0.39399279699897416:<stripes <br />
0.3782092012451359:<broadshouldered <br />
0.3779053329184092:<graying <br />
0.37579439331917774:<paleeyed <br />
0.3734468240600482:<atop <br />
0.37307859100552243:<leathery <br />
 
 
(128 dimensions : 1 epoch)<br />
<b>1.0:<requirement</b> <br />
0.6805251004125765:<common <br />
0.58822928078406:<detail <br />
0.5869718509295418:<gaunts <br />
0.5677933609626798:<portrait <br />
0.5612000668830176:<rest <br />
0.5611572795099765:<space <br />
0.5554348127278043:<marquee <br />
0.5519591805530948:<middle <br />
0.5455370331332081:<slightest <br />
<br />
(256 dimensions : 10 epochs) <br />
<b>0.9999999999999998:<requirement</b> <br />
0.4016798211784335:<unknowable <br />
0.3867069097055046:<jampacked <br />
0.37050061385790234:<room <br />
0.3616482568609007:<partlife <br />
0.3557306897710399:<assaulted <br />
0.35489547684406436:<compression <br />
0.33972003944909956:<common <br />
0.32747964915808203:<upholstery <br />
0.3205128295096265:<reliving <br />
 
 
(128 dimensions : 1 epoch)<br />
<b>1.0000000000000002:<voldemort</b> <br />
0.6883758949036237:<voldemorts <br />
0.6882314118148244:<bellatrix <br />
0.6687046547843726:<sirius <br />
0.6456113933094144:<dumbledores <br />
0.6378681113816113:<dumbledore <br />
0.6198750862701423:<lord <br />
0.601800677476979:<prophecy <br />
0.5979378004431092:<connection <br />
0.5976976164728673:<ariana <br />
<br />
(256 dimensions : 10 epochs) <br />
<b>1.0:<voldemort</b> <br />
0.5231034885732724:<lord <br />
0.4949022273659753:<voldemorts <br />
0.42104734145946027:<dumbledore <br />
0.40269571073980126:<kill <br />
0.39346439983965364:<inindeed <br />
0.3625195714553203:<snape <br />
0.36251702487473614:<elm <br />
0.35635136288239055:<merciful <br />
0.35450715479438577:<prostrate <br />
 
 
(128 dimensions : 1 epoch)<br />
<b>1.0:<snape</b> <br />
0.7867909396010355:<dumbledore <br />
0.7602249542226724:<slughorn <br />
0.6055605238284325:<bellatrix <br />
0.6030688726296658:<mcgonagall <br />
0.5929395283735124:<phineas <br />
0.5913798507548866:<umbridge <br />
0.5626612723245389:<narcissa <br />
0.5592886705523973:<horace <br />
0.5535260402939475:<dumbledores <br />
<br />
(256 dimensions : 10 epochs)<br />
<b>1.0:<snape </b><br />
0.49688884807669753:<dumbledore <br />
0.39141319194131824:<snapes <br />
0.3788874389546836:<severus <br />
0.3625195714553203:<voldemort <br />
0.3602838216909781:<malfoy <br />
0.3495411504557353:<mcgonagall <br />
0.3432543679925834:<heroworshipped <br />
0.3407031113901212:<silkily <br />
0.3385766904895776:<bbbut <br />
 
 
(128 dimensions : 1 epoch)<br />
<b>1.0000000000000002:<password</b> <br />
0.6759946677363984:<lady <br />
0.6260981919566827:<north <br />
0.6258023922269232:<tower <br />
0.6253624288287926:<owlery <br />
0.6189141007115594:<fat <br />
0.6020323426260975:<afterward <br />
0.5984440756682315:<waking <br />
0.5788408987574969:<cave <br />
0.5730507346420423:<heading <br />
<br />
(256 dimensions : 10 epochs) <br />
<b>1.0:<password</b> <br />
0.47446983465719267:<fritters <br />
0.4712847308362276:<lady <br />
0.4654321201001382:<banana <br />
0.4440026686633822:<flibbertigibbet <br />
0.37558294153078775:<ladys <br />
0.3705196683435887:<abstinence <br />
0.36897045258759176:<fat <br />
0.3470203296601344:<portrait <br />
0.3172485840936194:<festive <br />
 
 
(128 dimensions : 1 epoch)<br />
<b>1.0:<chocolate</b> <br />
0.7724365211403441:<frog <br />
0.7337068328667901:<mug <br />
0.7211389912598347:<squeak <br />
0.7203372114689538:<mouthful <br />
0.7123522162102919:<meat <br />
0.7110375068682293:<male <br />
0.7029104114344779:<swig <br />
0.6955470835808224:<drops <br />
0.6901040539654248:<blew <br />
<br />
(256 dimensions : 10 epochs) <br />
<b>0.9999999999999999:<chocolate </b><br />
0.5475055711590749:<frog <br />
0.5431921714687046:<frogs <br />
0.47751803650826924:<cards <br />
0.45420825957039807:<cakes <br />
0.43692834317867524:<marmalade <br />
0.4356386019624927:<tarts <br />
0.43098893267906485:<abbot <br />
0.41999201661912083:<chopped <br />
0.4170767831464866:<pasties <br />
 
 
(128 dimensions : 1 epoch)<br />
<b>1.0:<phoenix</b> <br />
0.6477570284902336:<wizengamot <br />
0.611456341909926:<order <br />
0.601307062292621:<recent <br />
0.5894212574676222:<warlock <br />
0.5777717037132631:<educational <br />
0.5672181094594285:<charges <br />
0.5577200810058244:<mysteries <br />
0.5560769924913356:<ministers <br />
0.5528013856762239:<quibbler <br />
<br />
(256 dimensions : 10 epochs) <br />
<b>0.9999999999999998:<phoenix</b> <br />
0.44566492530943996:<feather <br />
0.4307836965454031:<order <br />
0.41943464449038814:<maple <br />
0.34291846139813786:<fawkes <br />
0.33463728125471814:<cuttlebone <br />
0.3323033150650069:<headquarters <br />
0.33116604341560135:<brethren <br />
0.31389382936668453:<tto <br />
0.305949945529935:<cores <br />