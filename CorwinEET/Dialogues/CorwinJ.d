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
IF~Global("EECorDpl","BG0603",1)~THEN BDCorwiJ Sardpl1
~Once more those doppelgangers...there is a pattern here and it's not the first time my suspicions have been proven right.~
DO~SetGlobal("EECorDpl","BG0603",2)~
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