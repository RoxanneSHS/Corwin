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
~I'm not a child. I'm—one-two-three-four-five—five years old.~
END
++~I stand corrected. ~EXTERN BDCorwiJ Home12
++~Treasure your years, whatever their number, child - for they will pass quickly.~EXTERN BDRohma Home14

CHAIN
IF~~THEN BDCorwiJ Home13
~Just one. Feels like more than that sometimes.~
==BDRohma~I'm a handful. That's what Grampa says, anyway. His hands aren't that big, though. I'd say I'm at least... six handfuls. Six of his hands, I mean.~
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
++~..I think your mother should probably answer that.~EXTERN BDCorwiJ Home15
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
IF~OR(2) Global("EECorDpl","BG0128",1) Global("EECorDpl","BG0603",1)~THEN BDCorwiJ Sardpl1
~Once more those doppelgangers...there is a pattern here and it's not the first time my suspicions have been proven right.~
DO~SetGlobal("EECorDpl","BG0603",2) SetGlobal("EECorDpl","BG0128",2)~
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
~Most of them are despiteful but still acting somehow within the law. I suspect Sarevok Anchev to venture further than the rest.~
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
++~Inevitably our course will lead us back to your hometown sooner or later. So much is for sure.~+ woodl3

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
IF~CheckStatGT(Player1,11,INT)~THEN REPLY~Maybe telling all that has happened in such a short time to an unbiased listener helps both of us. We may both see clearer afterward. Looking back at it in context may make us all aware of details we could have missed.~+ Howcome3

CHAIN
IF~~THEN BDCorwiJ Howcome2
~Just as you like, <PRO_SIRMAAM>, I'm sure our comrads can answer this just as well as yourself.~DO~RealSetGlobalTimer("EECorBanT","Locals",2800)~
==Bimoen IF~InParty("Imoen2")~THEN~Sure, Cory, I'll tell you things about <PRO_HIMHER> that <PRO_HESHE> might wish nobody knows, ha.~
==BJAhei IF~InParty("Imoen2")~THEN~Ther's no reason to hide these things from a comrade. We may spend some time this evening, Captain, and I'll gladly answer your questions.~
EXIT

CHAIN
IF~~THEN BDCorwiJ Howcome3
~I'm a pretty good listener and this story is one to interest me personally.~
END
++~It all started with my foster father Gorion notifying me one morning that we immediately had to leave our home at Candlekkep...(You tell her your story.)~DO~RealSetGlobalTimer("EECorBanT","Locals",2800)~EXIT

CHAIN
IF~Global("EECorFriend","Locals",3)~THEN BDCorwiJ Friend10
~Friend 1~
DO~SetGlobal("EECorFriend","Locals",4)~EXIT

CHAIN
IF~Global("EECorFriend","Locals",5)~THEN BDCorwiJ Friend20
~Friend 2~
DO~SetGlobal("EECorFriend","Locals",6)~EXIT

CHAIN
IF~Global("EECorBeno","bg0224",1)~THEN BDCorwiJ Beno1
~(Corwin has grabbed your arm and causes you to stop and face her. She seems to be slightly agitated.)~
DO~SetGlobal("EECorBeno","bg0224",2)~
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
++~This Beno—I take it he hasn't been much involved in Rohma's life.~+ Beno5

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
IF ~~ THEN REPLY ~Gods, we don't have nearly enough time for that. Forget me. Tell me about Angelo Dorsan.~ DO ~SetGlobal("bd_drinks_corwin","global",2)~ GOTO nw133
IF ~~ THEN REPLY ~Everything you've heard about me? Absolutely true.~ DO ~SetGlobal("bd_drinks_corwin","global",2)
~ GOTO nw137
IF ~~ THEN REPLY ~I don't talk about my past.~ DO ~SetGlobal("bd_drinks_corwin","global",2)~ GOTO nw142
END

IF ~~ THEN BEGIN nw125 
SAY ~What would you like to know?~ [BD35075]
IF ~~ THEN REPLY ~How did you come to join the Flaming Fist?~ GOTO nw128
IF ~~ THEN REPLY ~What's your sense of this Angelo Dorsan?~ GOTO nw133
IF ~~ THEN REPLY ~Where you're planning to sleep tonight.~ GOTO nw126
END

IF ~~ THEN BEGIN nw126 
SAY ~Sleeping isn't on my agenda. Once I'm finished with you, I'll be spending what time I've got left preparing for the upcoming events.~ 
IF ~~ THEN REPLY ~There's much to do before we leave. Tell me, what are your thoughts on Angelo Dorsan?~ GOTO nw133
IF ~~ THEN REPLY ~You and the rest of the Flaming Fist. Tell me, how did you come to join Duke Eltan's ranks?~  GOTO nw128
IF ~~ THEN REPLY ~If you need a break from the drudgery, you're welcome to come and not sleep in my chambers, if you know what I mean...~GOTO nw127
IF ~~ THEN REPLY~Let's not waste more time than necessary here, then.~ GOTO nw132
END

IF ~~ THEN BEGIN nw127 
SAY ~It's best relationships in the Flaming Fist remain professional.~ [BD35084] 
IF ~~ THEN REPLY ~Indeed. So what do you make of Angelo Dorsan?~ GOTO nw133
IF ~~ THEN REPLY ~If you insist. How did you come to join the Fist, anyway?~ GOTO nw128
IF ~~ THEN REPLY ~I'm not in the Fist. But I take your meaning - we'd best call it a night.~ GOTO nw132
END

IF ~~ THEN BEGIN nw128 
SAY ~Ah, well, therein lies a tale, but it's a long one. My father, Audamar, was a Fist. You could say I followed in his footsteps.~ [BD35090] 
IF ~~ THEN REPLY ~Many children emulate their parents. Not me, thankfully. Say, what are your thoughts on Angelo Dorsan?~ GOTO nw133
IF ~~ THEN REPLY~That's a curious way of putting things. You obviously followed in his footsteps since you enlisted.~ GOTO nw129
IF ~~ THEN REPLY ~As you wish.~GOTO nw132
END

IF ~~ THEN BEGIN nw129 
SAY ~I did, eventually. But it took me a long time to recognize the value in my father's example. When I was younger, I ran a bit wild. It took a lot of strength and patience on my father's part to set me on the right path. Things would have been much different for me if he were a lesser man.~ [BD35094] 
IF ~~ THEN REPLY ~Sounds like Duke Entar could take a lesson from your father.~ GOTO nw130
IF ~~ THEN REPLY ~A wild child, hm? Any stories you care to share?~ GOTO nw131
IF ~~ THEN REPLY ~It's good to have people you can trust in your life. What are your thoughts on Angelo Dorsan?~ GOTO nw133
IF ~~ THEN REPLY ~Interesting. Well, we'd best call it a night.~ GOTO nw132
END

IF ~~ THEN BEGIN nw130 
SAY ~I wasn't so different from Skie Silvershield when I was her age - thought I deserved everything and didn't understand why I couldn't have it. With a little help from Tymora, she'll learn some lessons and grow into a good and decent person.~ [BD61800]
IF ~~ THEN REPLY ~Time will tell. What are your thoughts on Angelo Dorsan?~ GOTO nw133
IF ~~ THEN REPLY ~I'm not as confident as you are, but stranger things have happened. What do you think of Angelo Dorsan thus far?~ GOTO nw133
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
SAY ~My loyalty is to my hometown and its people - not necessarily to each and every of its representatives. At this moment, <CHARNAME>, you may be the best option for a loyal officer serving Baldur's Gate.~
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
IF ~~ THEN REPLY ~You have no idea. Now tell me what you know about Angelo Dorsan.~ GOTO nw133
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
IF ~~ THEN REPLY ~I'll do my best to live up to your expectations. Speaking of the Iron Throne, what do you think of Angelo Dorsan?~ GOTO nw133
IF ~~ THEN REPLY ~I'll keep mine as level as I can. Tell me about yourself now, Captain. How did you come to join the Flaming Fist?~ GOTO nw128
IF ~~ THEN REPLY ~Mine will be more level after a good night's sleep. We should turn in.~ GOTO nw132
END

IF ~~ THEN BEGIN nw142 
SAY ~We've a long task together ahead of us. I doubt we'll be strangers long. But it doesn't look like we're going to be friends, either. Nothing wrong with that. Probably best to keep things professional. Drink up and we'll go.~ [BD35163] 
IF ~~ THEN DO ~AddJournalEntry(@004,INFO)Face(10)~ EXIT
END

IF~Global("EECorAnm","BG4800",1)~THEN BEGIN InAmn1
SAY~I know we need to be here on your task, <CHARNAME>, I just hope the presence of a Flaming Fist officer doesn't get you in trouble. Tension is growing with Amn.~
IF~~THEN REPLY~Nashkel is not Anminsh heartland, Corwin. We have a good reputation here due to our former deeds. Anyway, we will make it quick. Your concern is noted, Captain.~+ InAmn2
IF~~THEN REPLY~*Our* task, Captain, and if anyone gets into trouble it's *we*. This town owes us and I hope they don't forget it. Otherwise, *they* may get into trouble.~+ InAmn2
IF~~THEN REPLY~Afraid, Captain? Far from your base and without a squadron at your heels?~+ InAmn3
END

IF~~THEN BEGIN InAmn2
SAY~I just want to make sure *we* don't load more on our platters than we need. Let's do what must be done and don't strain Tymora too much.~
IF~~THEN DO~SetGlobal("EECorAnm","BG4800",2)~EXIT
END

IF~~THEN BEGIN InAmn3
SAY~(Sarcastic) With you at my side, oh hero, how could I feel afraid...~
IF~~THEN GOTO InAmn2
END
END

CHAIN
IF ~~ THEN BDCorwiJ nw133 
~A charismatic but sleazy guy. I'm loyal to the Flaming Fist but I doubt that he is. He is supported by someone and rose pretty quick in the ranks. ~ 
==SHARTJ IF~InParty("SHARTEEL")~ THEN~ Ah, the maggot, the scumbag - that's how the *great hero* ends, a bloody traitor.~
==BDCorwiJ IF~InParty("SHARTEEL")~ THEN~ You must know him even better than I do, Shar-Teel.~
==SHARTJ IF~InParty("SHARTEEL")~ THEN~That scoundrel who copulated with that whore who called herself my mother...I have no evidence, I just know this fool too well. This Iron Throne complot is just the kind of thing he would fall for, the prospect of easy money and power and such - the whole package of pathetic male idiocy that attracts leeches like Angelo Dorsan.~
==BDCorwiJ IF~InParty("SHARTEEL")~ THEN~ You are his daughter? Poor girl, it explains quite a bit of how you became.~
END
IF ~~ THEN REPLY~You mistrust your own superiors, Captain?~GOTO nw134
IF ~~ THEN REPLY~Duke Eltan shares your view on this, Captain?~GOTO nw134
IF ~CheckStatGT(Player1,18,INT)~ THEN REPLY~Hurbold Duethkatha, he did not know about this?~ GOTO nw135
