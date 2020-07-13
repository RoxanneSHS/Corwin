CHAIN
IF~Global("EEOwnHouse","Locals",1)~THEN BDCorwiJ Home1
~This is my street, <CHARNAME>, I mean the street where I live.~
DO~SetGlobal("EEOwnHouse","Locals",2)~
=~That house over there is where my daughter and my father and me reside.~
END
++~You are on duty, officer...(grin) but under my command. Let's see who's at home.~+ Home3
++~You are on duty, officer, and under my command. Don't forget that.~+ Home2
++~I see that there is something more important even to you than a blind obedience to duty. Good to see, Corwin.~ + Home3

CHAIN
IF~~THEN BDCorwiJ Home2
~You are right, <CHARNAME>, (sigh).~EXIT

CHAIN
IF~~THEN BDCorwiJ Home3
~You are right, <CHARNAME>, (grin). Thank you.~EXIT

CHAIN
IF WEIGHT #-1~InParty("Corwin")~THEN Taxek Bigshit
~You there, stand where you are! Dammit, Michael, someone's walked in on us. Okay you, we don't want any trouble. Maybe this is your house, but right now all we want to do is leave. Don't give us any trouble, and you'll walk away from this a little poorer. Otherwise...gosh it's the Flaming Fist.~
==BDCorwiJ~You broke into my house! You think I'm going to let you go on this one?! THINK AGAIN!~
==Taxek~Okay, okay, here's everything we took, plus some more. ~
==BDCorwiJ~You think I can be bribed...my little girl's upstairs and I hope she's not awake yet. You'd be dead already if not for her. I want to spare her the sight of your guts all over the floor. GET OUT!~
==Taxek~Michael! Let's get outta here 'fore they change their minds.~DO~GiveGoldForce(210) ActionOverride("MICHAEL",EscapeArea()) EscapeArea()~EXIT

CHAIN
IF~Global("EEMetRohma","Global",2)~THEN BDCorwiJ Home10
~Rohma, my darling! Greetings, daddy.~
DO~SetGlobal("EEMetRohma","Global",3)~
==BDAudam~See who's there, how unexpected, Schael.~
==BDRohma IF~Gender(Player1,MALE)~THEN~Mama! Who is that? Is that the Duke?~
==BDRohma IF~Gender(Player1,FEMALE)~THEN~Mama! Who is that? Is that the Duke's wife?~
END
++~Captain Corwin, who is this delightful child?~EXTERN BDRohma Home11
++~You have children, Captain?~EXTERN BDCorwiJ Home13

CHAIN
IF~~THEN BDRohma Home11
~I'm not a child. I'm-one-two-three-four-five-five years old.~
END
++~I stand corrected. ~EXTERN BDCorwiJ Home12
++~Treasure your years, whatever their number, child - for they will pass quickly.~EXTERN BDRohma Home14

CHAIN
IF~~THEN BDCorwiJ Home13
~Just one. Feels like more than that sometimes.~
==BDRohma~I'm a handful. That's what Grandpa says, anyway. His hands aren't that big, though. I'd say I'm at least... six handfuls. Six of his hands, I mean.~
END
++~I see...~EXTERN BDCorwiJ Home12

CHAIN
IF~~THEN BDRohma Home14
~You talk funny.~
END
++~Sometimes.~EXTERN BDCorwiJ Home12

CHAIN
IF~~THEN BDCorwiJ Home12
~<CHARNAME>, this is my daughter, Rohma. Rohma, this is <CHARNAME>.~
==BDRohma~Will you help her defeat Sarevok and the iron bastards...?~
==BDCorwiJ~Rohma! Not such words. And I told you not to talk to strangers about these things.~
==BDRohma~But <PRO_HESHE>'s no stranger, it's <CHARNAME>.~
==BDAudam~My daughter, I told you to be more careful with your words in front of the child. She is like you were, she understands too much for her age.~
==BDRohma~Will you kill Sarevok?~ 
END
++~...I think your mother should probably answer that.~EXTERN BDCorwiJ Home15
++~I'm hoping it won't come to that.~EXTERN BDCorwiJ Home15

CHAIN
IF~~THEN BDCorwiJ Home15
~They'll do what they have to.~
==BDRohma~Just like you?~
==BDCorwiJ~Exactly like that.~
=~Now, you do what your grampa says while I'm gone, all right?~
==BDRohma~I will, Mama.~DO~EscapeAreaDestroy(25)~
==BDAudam~Take care, daughter, don't worry about us. We wanted go to the Hall of Wonders, Rohma. Forgot already?~DO~EscapeAreaDestroy(25)~EXIT

CHAIN
IF~OR(2) Global("EECorDpl","%SWBaldursGate_MerchantLeague_L2%",1) Global("EECorDpl","%SWBaldursGate_SevenSuns_Cellar%",1)~THEN BDCorwiJ Sardpl1
~Once more those doppelgangers...there is a pattern here and it's not the first time my suspicions have been proven right.~
DO~SetGlobal("EECorDpl","%SWBaldursGate_SevenSuns_Cellar%",2) SetGlobal("EECorDpl","%SWBaldursGate_MerchantLeague_L2%",2)~
END
++~You're supposed to be my advisor of those secrets of your town, so?~+ Sardpl2
++~Let's compare notes, then, Captain.~+ Sardpl2
IF~InParty("CVSandr")~THEN REPLY~If I need someone to state the bloody obvious, I'll just let Sandrah chime in.~+ Sardpl2
++~I don't need you to state the bloody obvious, so shut up already.~EXIT

CHAIN
IF~~THEN BDCorwiJ Sardpl2
~Several times when I ran investigations concerning the Iron Throne I found this pattern. They seem to have an endless supply of these creatures. Now when I find a trace of their kin, I'm pretty sure the Iron Throne is behind the operation.~
END
++~Makes sense to me, Corwin.~+ Sardpl3
++~Not bad, Captain, it explains some encounters we had in the past.~+ Sardpl3

CHAIN
IF~~THEN BDCorwiJ Sardpl3
~There must be some foul magic involved with it, those creatures seldom cooperate with humans but I doubt they act here without someone pulling the strings.~
=~We know enough of the internal structures of the Throne to anticipate who's the guy in charge of the more sinister, illegal and despicable actions of that League.~
END
++~That Sarevok we heard about, but who is he?~+ Sardpl4
++~Winski Perorate, is that who?~+ Sardpl5
++~Isn't that describing everyone in that foul bunch of a merchants league?~+ Sardpl6

CHAIN
IF~~THEN BDCorwiJ Sardpl4
~He's the stepson of Rieltar Anchev, the local leader of the Iron Throne. His stepson is rarely acting officially for the organisation but seems to have a lot of connections to the darker circles of town. He has been seen with magic users of suspicious origins and he often leaves town for days at a time doing whatever.~
=~I'm not even sure if the other leaders of the Iron Throne know all that silent schemer does.~
END
++~I have good reason to think that he murdered Gorion.~EXIT
++~I suspect he's the one who sends all those assassins after me.~EXIT
++~Sheds some light I needed. Let's go and see Scar to report what we found.~EXIT

CHAIN
IF~~THEN BDCorwiJ Sardpl5
~Winski? Yes, that makes sense. The Rashemi is Sarevok's teacher. Sarevok Anchev, I mean.~
END
++~That Sarevok we heard about, but who is he?~+ Sardpl4

CHAIN
IF~~THEN BDCorwiJ Sardpl6
~Most of them are spiteful but still acting somehow within the law. I suspect Sarevok Anchev to venture further than the rest.~
END
++~That Sarevok we heard about, but who is he?~+ Sardpl4

CHAIN
IF~Global("EECorwoodland","LOCALS",1)~THEN BDCorwiJ woodl1
~I do better in the city than the woods but it's been a lifetime since I last left Baldur's Gate.~
DO~SetGlobal("EECorwoodland","LOCALS",2)~
END
++~I grew up behind the walls of Candlekeep. Compared to that, your city is a small universe in itself.~+ woodl2
++~You sound like a drow out on the surface. These are just trees instead of bricks.~+ woodl2

CHAIN
IF~~THEN BDCorwiJ  woodl2
~Did I sound like complaining? I was just considering the lifestyle I have adjusted to. Rohma makes everything bearable. Trees and grass are fine, but she's what I really have trouble being away from.~
END
++~(Grin) I do anything to entertain my troops and keep the spirit up.~+ woodl3
++~You're a city child and a family woman. Something rare in my experience. Not bad.~+ woodl3
++~Inevitably our course will lead us back to your home town sooner or later. So much is for sure.~+ woodl3

CHAIN
IF~~THEN BDCorwiJ  woodl3
~In your special way, you make a good officer, <CHARNAME>.~EXIT

CHAIN
IF~Global("EECorFriend","Locals",1)~THEN BDCorwiJ Howcome1
~I'm wondering how you became involved in this adventure in the first place, <CHARNAME>?~
DO~SetGlobal("EECorFriend","Locals",2)~
=~Scar and me heard about your deeds but we were not sure about your motivation. We only found that you'd be a most welcome ally.~
END
++~And that's probably all you need to know about it, Captain.~+ Howcome2
++~This is a long story by now, Corwin, and most likely one to end with Sarevok.~+ Howcome3
IF~CheckStatGT(Player1,11,INT)~THEN REPLY~Maybe telling all that has happened in such a short time to an unbiased listener helps both of us. We may both see clearer afterwards. Looking back at it in context may make us all aware of details we could have missed.~+ Howcome3

CHAIN
IF~~THEN BDCorwiJ Howcome2
~Just as you like, <PRO_SIRMAAM>, I'm sure our comrades can answer this just as well as yourself.~DO~RealSetGlobalTimer("EECorBanT","Locals",2800)~
==Bimoen IF~InParty("Imoen2")~THEN~Sure, Cory, I'll tell you things about <PRO_HIMHER> that <PRO_HESHE> might wish nobody knows, ha.~
==BJAhei IF~InParty("Jaheira")~THEN~There's no reason to hide these things from a comrade. We may spend some time this evening, Captain, and I'll gladly answer your questions.~
EXIT

CHAIN
IF~~THEN BDCorwiJ Howcome3
~I'm a pretty good listener and this story is one to interest me personally.~
END
++~It all started with my foster father Gorion notifying me one morning that we immediately had to leave our home at Candlekeep...(You tell her your story.)~DO~RealSetGlobalTimer("EECorBanT","Locals",2800)~+ Howcome4

CHAIN
IF~~THEN BDCorwiJ Howcome4
~I see. Thank you, I almost feel like we travel together since significant time.~EXIT

CHAIN
IF~Global("EECorFriend","Locals",4)~THEN BDCorwiJ Friend10
~I've made a preliminary decision, <CHARNAME>, your recent conduct has assured me of your alignment.~
DO~SetGlobal("EECorFriend","Locals",5) ~
END
++~What are you up to, Captain?~+ Friend11
++~This is an ambiguous statement, can you explain what you mean?~+ Friend11

CHAIN
IF~~THEN BDCorwiJ Friend11
~I want you to see past my appointment as local guide to your quest.~
=~<CHARNAME>, I have to dedicate my attention to your cause - ah, to our cause, that is. I'm serving my home town and the Fist, but for the moment I'm also your comrade just like <PLAYER2>, <PLAYER3>, <PLAYER4>, <PLAYER5>, and <PLAYER6>.~
END
++~Doesn't that put you into some dilemma, Corwin?~+ Friend12
++~I hope you set your priorities right, Captain, we may not always be able to act to your codex.~+ Friend12

CHAIN
IF~~THEN BDCorwiJ Friend12
~It's not easy for me to forget my officer's duty at one or the other occasion, but my foremost duty is to our final success. I hope I make no mistake when I think that your actions and fate are essential for a higher goal for Baldur's Gate, far more important than the individual deeds.~
=~Just know that if you betray my trust, you will make yourself a mighty foe.~
=~Otherwise...you will find me a loyal companion...maybe a friend in the end.~DO~RealSetGlobalTimer("EECorBanT","Locals",3600)~EXIT

CHAIN
IF~Global("EECorFriend","Locals",6)~THEN BDCorwiJ Friend20
~Rohma makes it easy for me and on the other side harder than for most.~
DO~SetGlobal("EECorFriend","Locals",7)RealSetGlobalTimer("EECorBanT","Locals",3700)~
END
++~Your daughter, right. It can't be easy to be mother and Flaming Fist at the same time.~+ Friend21
++~Your private life is just that, Captain - private. Keep it that way.~DO~SetGlobal("EECorFriend","Locals",77)~+ Friend22
++~Your father and your task being in your home town give you a chance to be both, isn't it true?~+ Friend21

CHAIN
IF~~THEN BDCorwiJ Friend22
~You're right, <CHARNAME>, forget I mentioned it.~EXIT

CHAIN
IF~~THEN BDCorwiJ Friend21
~My current task makes the practical aspects bearable and my father is a great help with taking care of her. There are surely mothers in worse circumstances.~
=~What I meant is that her existence gives my life the necessary focus it was missing before her birth. And on the other hand gives me more responsibility than being officer already gives me.~
END
++~Sounds like you grew up by becoming a mother.~+ Friend23
++~It doesn't give me responsibility to listen to your laments, woman. It was your choice after all.~DO~SetGlobal("EECorFriend","Locals",77)~+ Friend22
++~It's hard to imagine that officer Corwin was once a rascal of sorts.~+ Friend23

CHAIN
IF~~THEN BDCorwiJ Friend23
~It may not have been the best idea at the time to have a child with a father like...Fanari. But it has changed me and I'm happy it did.~
=~Anyway - thanks for listening. It's better to move on now. My considerations can wait another day. It's important that we get this job done. And done well.~EXIT

CHAIN
IF~Global("EECorBeno","%WSewers%",1)~THEN BDCorwiJ Beno1
~(Corwin has grabbed your arm and causes you to stop and face her. She seems to be slightly agitated.)~
DO~SetGlobal("EECorBeno","%WSewers%",2)~
=~Listen for a minute, <CHARNAME>, I need to tell you something about my past...it may become relevant pretty soon.~
END
++~You could have chosen a better place than this for conversation, Corwin.~ + Beno2
++~Your past in the...sewers of Baldur's Gate, Captain?~+ Beno2
++~Well, if you find this *location* appropriate, I will listen.~+ Beno2

CHAIN
IF~~THEN BDCorwiJ Beno2
~This is the most appropriate place for what I have to say, believe me. Somewhere around here is the entrance to the Undercellars, a lawless area of shady entertainment, and with a good chance to meet the man I need to inform you about.~
DO~SetGlobal("bd_famari_talk","locals",1)~
=~His name's Beno Famari. And it's not him I'm worried about, but you need to understand my reactions if we meet. Because if that happens, there's a better than good chance I'll kill him...again.~
END
++~I need to know exactly what's going on, Corwin.~+ Beno3
++~We'd better get out of here, then.~+ Beno4

CHAIN
IF~~THEN BDCorwiJ Beno3
~Fine. Beno and I were... together. It was a long time ago, and it didn't end well, especially for him. I got Rohma, so I'm not complaining.~[BD52083]
END
++~He fathered your daughter?~+ Beno5
++~This Beno - I take it he hasn't been much involved in Rohma's life.~+ Beno5

CHAIN
IF~~THEN BDCorwiJ Beno4
~Thank you, <CHARNAME>. I'd appreciate this. ~[BD58487]
=~I'm just afraid, I can't hide from my past without endangering our mission.~
END
++~I need to know exactly what's going on, Corwin.~+ Beno3
++~Or might you be able to gather some intelligence about the current crisis? Is he involved?~+ Beno7

CHAIN
IF~~THEN BDCorwiJ Beno5
~He was there when she was conceived. He was never her father. When I told him about Rohma...~[BD52089]
=~I was young and stupid then. Becoming a mother smartened me up fast.~[BD66687]
=~Whatever I do in this life, whatever regrets I have, Rohma's not one of them. She never will be. I love her. Which is just one of the many reasons I'd rather avoid dying here.~[BD52094]
END
++~You raised a beautiful and intelligent child. I hope that the current crisis will not take you away from her too long.~+ Beno6
++~The smart thing for us to do would be to leave this place.~+ Beno4

CHAIN
IF~~THEN BDCorwiJ Beno6
~There are three things in my life that matter to me, <CHARNAME>. My daughter, my father, and the Flaming Fist. Each saved me, in their own way. When one of them calls on me, I answer. Always.~[BD52096] EXIT

CHAIN
IF~~THEN BDCorwiJ Beno7
~I can't imagine Beno willingly telling me anything useful. There's no love for me left in his coward heart.~[BD52074]
END
++~Left? So there was love once?~+ Beno5

APPEND BDCorwiJ
IF~ Global("bd_drinks_corwin","global",1)~ THEN BEGIN nw124 
  SAY ~So. <CHARNAME>. The <PRO_MANWOMAN>. The myth. The hero of the Sword Coast. Tell me about yourself.~ 
IF ~~ THEN REPLY ~I'd rather know about you.~ DO ~SetGlobal("bd_drinks_corwin","global",2)~ GOTO nw125
IF ~~ THEN REPLY ~Gods, we don't have nearly enough time for that. Forget me. Tell me about Angelo Dosan.~ DO ~SetGlobal("bd_drinks_corwin","global",2)~ GOTO nw133
IF ~~ THEN REPLY ~Everything you've heard about me? Absolutely true.~ DO ~SetGlobal("bd_drinks_corwin","global",2)
~ GOTO nw137
IF ~~ THEN REPLY ~I don't talk about my past.~ DO ~SetGlobal("bd_drinks_corwin","global",2)~ GOTO nw142
END

IF ~~ THEN BEGIN nw125 
SAY ~What would you like to know?~ [BD35075]
IF ~~ THEN REPLY ~How did you come to join the Flaming Fist?~ GOTO nw128
IF ~~ THEN REPLY ~What's your sense of this Angelo Dosan?~ GOTO nw133
IF ~~ THEN REPLY ~Where you're planning to sleep tonight.~ GOTO nw126
END

IF ~~ THEN BEGIN nw126 
SAY ~Sleeping isn't on my agenda. Once I'm finished with you, I'll be spending what time I've got left preparing for the upcoming events.~ 
IF ~~ THEN REPLY ~There's much to do before we leave. Tell me, what are your thoughts on Angelo Dosan?~ GOTO nw133
IF ~~ THEN REPLY ~You and the rest of the Flaming Fist. Tell me, how did you come to join Duke Eltan's ranks?~  GOTO nw128
IF ~~ THEN REPLY ~If you need a break from the drudgery, you're welcome to come and not sleep in my chambers, if you know what I mean...~GOTO nw127
IF ~~ THEN REPLY~Let's not waste more time than necessary here, then.~ GOTO nw132
END

IF ~~ THEN BEGIN nw127 
SAY ~It's best relationships in the Flaming Fist remain professional.~ [BD35084] 
IF ~~ THEN REPLY ~Indeed. So what do you make of Angelo Dosan?~ GOTO nw133
IF ~~ THEN REPLY ~If you insist. How did you come to join the Fist, anyway?~ GOTO nw128
IF ~~ THEN REPLY ~I'm not in the Fist. But I take your meaning - we'd best call it a night.~ GOTO nw132
END

IF ~~ THEN BEGIN nw128 
SAY ~Ah, well, therein lies a tale, but it's a long one. My father, Audamar, was a Fist. You could say I followed in his footsteps.~ [BD35090] 
IF ~~ THEN REPLY ~Many children emulate their parents. Not me, thankfully. Say, what are your thoughts on Angelo Dosan?~ GOTO nw133
IF ~~ THEN REPLY~That's a curious way of putting things. You obviously followed in his footsteps since you enlisted.~ GOTO nw129
IF ~~ THEN REPLY ~As you wish.~GOTO nw132
END

IF ~~ THEN BEGIN nw129 
SAY ~I did, eventually. But it took me a long time to recognize the value in my father's example. When I was younger, I ran a bit wild. It took a lot of strength and patience on my father's part to set me on the right path. Things would have been much different for me if he were a lesser man.~ [BD35094] 
IF ~~ THEN REPLY ~Sounds like Duke Entar could take a lesson from your father.~ GOTO nw130
IF ~~ THEN REPLY ~A wild child, hm? Any stories you care to share?~ GOTO nw131
IF ~~ THEN REPLY ~It's good to have people you can trust in your life. What are your thoughts on Angelo Dosan?~ GOTO nw133
IF ~~ THEN REPLY ~Interesting. Well, we'd best call it a night.~ GOTO nw132
END

IF ~~ THEN BEGIN nw130 
SAY ~I wasn't so different from Skie Silvershield when I was her age - thought I deserved everything and didn't understand why I couldn't have it. With a little help from Tymora, she'll learn some lessons and grow into a good and decent person.~ [BD61800]
IF ~~ THEN REPLY ~Time will tell. What are your thoughts on Angelo Dosan?~ GOTO nw133
IF ~~ THEN REPLY ~I'm not as confident as you are, but stranger things have happened. What do you think of Angelo Dosan thus far?~ GOTO nw133
IF ~~ THEN REPLY ~We can only hope. Well, we'd best call it a night.~ GOTO nw132
END

IF ~~ THEN BEGIN nw131
SAY ~Let's keep things professional—for now, at least. Drink up. We've things to do and precious little time in which to do them.~ [BD35095] 
IF ~~ THEN DO ~AddJournalEntry(@004,INFO) Face(NE)~ EXIT
END

IF ~~ THEN BEGIN nw132 
SAY ~Drink up. We've things to do and not much time to do them in.~ [BD35097] 
IF ~~ THEN DO ~AddJournalEntry(@004,INFO) Face(NE)~ EXIT
END

IF ~~ THEN BEGIN nw134 
SAY ~My loyalty is to my home town and its people - not necessarily to each and every of its representatives. At this moment, <CHARNAME>, you may be the best option for a loyal officer serving Baldur's Gate.~
IF ~~ THEN REPLY~I won't disappoint you. I can promise you that.~ GOTO nw132
IF ~~ THEN REPLY~I won't disappoint you. I can promise you that.. So how did you come to join the Flaming Fist anyway?~ GOTO nw128
IF ~~ THEN REPLY ~We'll soon find out what the future holds. In the meantime, we should get some rest.~ GOTO nw132
END

IF ~~ THEN BEGIN nw135 
SAY ~Few knew Scar's real name, only his closest friends...I miss him...~
=~But Angelo. That's something different altogether.~
IF~~THEN GOTO nw134
END

IF ~~ THEN BEGIN nw137
SAY ~ALL of it? Impressive...~ [BD35134] 
IF ~~ THEN REPLY ~Well, maybe not all of it.~ GOTO nw138
IF ~~ THEN REPLY ~You have no idea. Now tell me what you know about Angelo Dosan.~ GOTO nw133
IF ~~ THEN REPLY ~Now it's your turn to impress me. Tell me about yourself. How did you come to join the Flaming Fist?~ GOTO nw128
IF ~~ THEN REPLY ~I'll leave you with that thought, Captain Corwin. We should turn in for the night.~ GOTO nw132
END

IF ~~ THEN BEGIN nw138
SAY ~And modest too.~ [BD35153] 
IF ~~ THEN REPLY ~That surprises you?~ GOTO nw140
IF ~~ THEN REPLY ~I've found other peoples' low expectations of me generally work to my advantage.~ GOTO nw139
IF ~~ THEN REPLY ~Not modest. Merely realistic.~GOTO nw141
END

IF ~~ THEN BEGIN nw139 
SAY ~This must be a tough time for you, then.~ [BD35157] 
IF ~~ THEN GOTO nw141
END

IF ~~ THEN BEGIN nw140 
SAY ~A little.~ [BD35159] 
IF ~~ THEN GOTO nw141
END

IF ~~ THEN BEGIN nw141 
SAY ~After the iron crisis, the city adores you. That kind of deference would go to some peoples' heads. But not yours, it seems. That's good. We'll need level heads when it comes time to face the Iron Throne.~
IF ~~ THEN REPLY ~I'll do my best to live up to your expectations. Speaking of the Iron Throne, what do you think of Angelo Dosan?~ GOTO nw133
IF ~~ THEN REPLY ~I'll keep mine as level as I can. Tell me about yourself now, Captain. How did you come to join the Flaming Fist?~ GOTO nw128
IF ~~ THEN REPLY ~Mine will be more level after a good night's sleep. We should turn in.~ GOTO nw132
END

IF ~~ THEN BEGIN nw142 
SAY ~We've a long task together ahead of us. I doubt we'll be strangers long. But it doesn't look like we're going to be friends, either. Nothing wrong with that. Probably best to keep things professional. Drink up and we'll go.~ [BD35163] 
IF ~~ THEN DO ~AddJournalEntry(@004,INFO)Face(10)~ EXIT
END

IF~Global("EECorAnm","%Nashkel%",1)~THEN BEGIN InAmn1
SAY~I know we need to be here on your task, <CHARNAME>, I just hope the presence of a Flaming Fist officer doesn't get you in trouble. Tension is growing with Amn.~
IF~~THEN REPLY~Nashkel is not Anminsh heartland, Corwin. We have a good reputation here due to our former deeds. Anyway, we will make it quick. Your concern is noted, Captain.~+ InAmn2
IF~~THEN REPLY~*Our* task, Captain, and if anyone gets into trouble it's *we*. This town owes us and I hope they don't forget it. Otherwise, *they* may get into trouble.~+ InAmn2
IF~~THEN REPLY~Afraid, Captain? Far from your base and without a squadron at your heels?~+ InAmn3
END

IF~~THEN BEGIN InAmn2
SAY~I just want to make sure *we* don't load more on our platters than we need. Let's do what must be done and don't strain Tymora too much.~
IF~~THEN DO~SetGlobal("EECorAnm","%Nashkel%",2)~EXIT
END

IF~~THEN BEGIN InAmn3
SAY~(Sarcastic) With you at my side, oh hero, how could I feel afraid...~
IF~~THEN GOTO InAmn2
END
END

CHAIN
IF ~~ THEN BDCorwiJ nw133 
~A charismatic but sleazy guy. I'm loyal to the Flaming Fist but I doubt that he is. He is supported by someone and rose pretty quick in the ranks. ~ 
==%SHARTEEL_JOINED% IF~InParty("SHARTEEL")~ THEN~ Ah, the maggot, the scum bag - that's how the *great hero* ends, a bloody traitor.~
==BDCorwiJ IF~InParty("SHARTEEL")~ THEN~ You must know him even better than I do, Shar-Teel.~
==%SHARTEEL_JOINED% IF~InParty("SHARTEEL")~ THEN~That scoundrel who copulated with that whore who called herself my mother...I have no evidence, I just know this fool too well. This Iron Throne complot is just the kind of thing he would fall for, the prospect of easy money and power and such - the whole package of pathetic male idiocy that attracts leeches like Angelo Dosan.~
==BDCorwiJ IF~InParty("SHARTEEL")~ THEN~ You are his daughter? Poor girl, it explains quite a bit of how you became.~
END
IF ~~ THEN REPLY~You mistrust your own superiors, Captain?~GOTO nw134
IF ~~ THEN REPLY~Duke Eltan shares your view on this, Captain?~GOTO nw134
IF ~CheckStatGT(Player1,18,INT)~ THEN REPLY~Hurbold Duethkatha, he did not know about this?~ GOTO nw135

CHAIN
IF~Global("EECorUnderc","%BaldursGate_Undercellars%",1)~THEN BDCorwiJ Undercel1
~They don't even need to bribe the Flaming Fist to do their business down here.~
DO~SetGlobal("EECorUnderc","%BaldursGate_Undercellars%",2)~
END
++~I was already wondering why nobody cares about a Flaming Fist officer walking into here.~+ Undercel2
++~Let me guess, it's unofficially owned by the Fist to improve their salary?~+ Undercel2

CHAIN
IF~~THEN BDCorwiJ Undercel2
~It's Duke Eltan's policy to grant the city what any city of that size needs anyway. He claims that we'd fight a useless battle if we'd try to prevent such locations, so it's better to know where it is and how things are managed and just see that it doesn't get out of bounds.~
END
++~A practical man, not bad. So the members of the Flaming Fist are admitted here?~+ Undercel3
++~No city beyond some size is free of corruption. It's a shame that the Flaming Fist doesn't intervene.~+ Undercel3

CHAIN
IF~~THEN BDCorwiJ Undercel3
~Members of the Flaming Fist are free to conduct their private hours as they want. At least within limits...an officer will not visit such a place. I've never been here before though I know pretty well what's going on here.~EXIT

CHAIN
IF~Global("EECorThNotYet","%BaldursGateDocks%",1)~THEN BDCorwiJ ThNotYet1
~The Iron Throne's headquarters, <CHARNAME>. Keep the location memorized but let's move on for now.~
DO~SetGlobal("EECorThNotYet","%BaldursGateDocks%",2)~
END
++~I can't wait to pay those bastards my visit, Captain, why wait?~+ ThNotYet2
++~What, why spare them after all they've done to the Sword Coast - and to me?~+ ThNotYet2
++~Anything I've missed , Corwin? I thought here was our goal.~+ ThNotYet2

CHAIN
IF~~THEN BDCorwiJ ThNotYet2
~I agree that we have any reason to storm this place. Just not now, please, <CHARNAME>.~
=~Eltan and Scar have their suspicion against the Iron Throne and your experience with the organisation has added more evidence, still, we need to make sure we find out everything before we make our move.~
=~I suggest to first finish the task that Scar gave us, gather more background information and report to Eltan. We should not assail this mighty organisation without the consent of Eltan and the authorities. It may backfire against us.~
END
++~Your position is noted, Captain. Must I remind you that you put yourself under my command?~+ ThNotYet3
++~Very well, let's make sure that we have enough evidence against them to make it impossible they get their heads out of the noose.~+ ThNotYet3
++~You turn out to be a nuisance and a hindrance, Captain Corwin. It's best you go back to your master Scar.~+ ThNotYet4
++~I take you along since you know this town and its proceedings better than me, Corwin. Thanks for the advice.~+ ThNotYet3

CHAIN
IF~~THEN BDCorwiJ ThNotYet3
~My advice was meant as that of a companion and, eh, a friend.~EXIT

CHAIN
IF~~THEN BDCorwiJ ThNotYet4
~Fine, I have things to do in the Fist. I will not waste my time with you any longer. You're making a mistake, but it's your mistake to make. Take care.~
DO~SetGlobal("EECorwinBG1","Global",51) EscapeAreaDestroy(50)~EXIT

CHAIN
IF~Global("EECorMoreTaskSC","%SWBaldursGate%",1)~THEN BDCorwiJ CorMoreTaskSC1
~I'm glad you accepted the additional tasks, <CHARNAME>.~
DO~SetGlobal("EECorMoreTaskSC","%SWBaldursGate%",2)~
END
++~We can really make use of that extra money.~+ CorMoreTaskSC2
++~I want to make sure that the right people are on my side when I need them.~+ CorMoreTaskSC3
++~My golden heart makes me do those deeds.~+ CorMoreTaskSC4

CHAIN
IF~~THEN BDCorwiJ CorMoreTaskSC2
~I don't doubt that you spend it well, in all our interest.~EXTERN BDCorwiJ CorMoreTaskSC5

CHAIN
IF~~THEN BDCorwiJ CorMoreTaskSC3
~I can't and won't speak for all of the Flaming Fist. The right people have already noticed your behaviour.~EXTERN BDCorwiJ CorMoreTaskSC5

CHAIN
IF~~THEN BDCorwiJ CorMoreTaskSC4
~I like that you keep your humour in these time. We need such spirit.~EXTERN BDCorwiJ CorMoreTaskSC5

CHAIN
IF~~THEN BDCorwiJ CorMoreTaskSC5
~Whatever...I don't regret my choice to follow you.~EXIT

CHAIN
IF~Global("EECorIrThr","LOCALS",1)~THEN BDCorwiJ CorInITFirst1
~Acolytes, doppelgangers...this Sarevok has established a personal cult here to replace the Iron Throne somehow.~
DO~SetGlobal("EECorIrThr","LOCALS",2)~
END
++~Without the guy himself this turns out to be a dead end.~+ CorInITFirst2
++~We have nothing to proof to the Duke, so what?~ + CorInITFirst2
++~They escaped to Candlekeep where we cannot reach them.~+ CorInITFirst3

CHAIN
IF~~THEN BDCorwiJ CorInITFirst2
~I propose we report back to Duke Eltan. There we should plan the next steps.~
=~It seems that we need to go to Candlekeep to find those Iron Throne leaders.~
END
++~They escaped to Candlekeep where we cannot reach them.~+ CorInITFirst3
++~Damned bastards, I hope your superiors won't get upset about our failure here.~+ CorInITFirst3

CHAIN
IF~~THEN BDCorwiJ CorInITFirst3
~Why can't we follow them to Candlekeep, <CHARNAME>, it's your home - or at least it was?~
END
++~They won't let anyone in there without a valuable tome to present to the library.~+ CorInITFirst4

CHAIN
IF~~THEN BDCorwiJ CorInITFirst4
~That makes it important that we consult with Scar and Eltan about it. The dukes should have the means to let us pursue those bastards to Candlekeep.~EXIT

CHAIN
IF~Global("EEBendalCorw2","Global",2)~THEN BDCorwiJ CorInShista1
~Even here he managed to get the place infiltrated with these creatures.~
DO~SetGlobal("EEBendalCorw2","Global",3) SetGlobal("EEBendalCorw3","Global",3)SetGlobal("EEBendalCorw4","Global",3)~
END
++~I know my old home and its people well enough to tell them apart from any doppelgangers, don't fear.~+ CorInShista2
++~We can't trust anyone anymore, except ourselves.~+ CorInShista2

CHAIN
IF~~THEN BDCorwiJ CorInShista2
~(She attempts a smile that ends up as a grin.) I have started to trust you, <CHARNAME>. Sometimes I trust you more than some of my comrades in the Fist by now. There is something foul in our ranks just like it is with people in this place.~EXIT

CHAIN
IF~Global("EECorwPrison","%SWBaldursGate_FlamingFistHQ_L1%",1)~THEN BDCorwiJ EECorwPrison1
~<CHARNAME>, leave this *true* murderer alone, we need no scum like this. Remember I'm still a member of the REAL Flaming Fist, not that Angelo troupe.~
=~This is MY headquarters and I get us out here while this gnome stays inside.~
END
++~No, Captain, I cannot allow you to get involved deeper with our misdeeds and compromise yourself...~+ EECorwPrison2
++~Corwin, of course, how could I forget. You know every inch of this building.~+ EECorwPrison3

CHAIN
IF~~THEN BDCorwiJ EECorwPrison2
~Oh, shut up.~EXTERN BDCorwiJ EECorwPrison4 

CHAIN
IF~~THEN BDCorwiJ EECorwPrison3
~Indeed there is a way out here unknown to Angelo and I have one of the keys for it.~EXTERN BDCorwiJ EECorwPrison4

CHAIN
IF~~THEN BDCorwiJ EECorwPrison4
~You, the Bhaalspawn criminal, you are the best option Baldur's Gate has at this moment. For my home town, I will not stand aside idle, we must go on together.~DO~SetGlobal("EECorwPrison","%SWBaldursGate_FlamingFistHQ_L1%",2) StartCutSceneMode() Wait(2) StartCutScene("Capcut02")~EXIT

CHAIN
IF~Global("EERescEltan","Locals",1)~THEN BDCorwiJ CorEltanResc1
~(Corwin has put her hand on your arm and stops you to turn to her.)~
DO~SetGlobal("EERescEltan","Locals",2)~
=~<CHARNAME>, whatever they say about you and whatever will happen...these deeds you now do for the Duke, for Baldur's Gate, ah, do I sound melodramatic already? Ehem, what I wanted to say is like, you do it for me as well. And if nobody will thank you for it and even if we fail...~
=~Thank you.~
=~(She has turned and walks ahead without waiting for your answer and all you can do is follow her.)~EXIT