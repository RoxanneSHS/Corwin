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
++~Treasure your years, whatever their number, child—for they will pass quickly.~EXTERN BDRohma Home14

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
=Now, you do what your grampa says while I'm gone, all right?~
==BDRohma~I will, Mama.~DO~EscapeAreaDestroy(25)~
==BDAudam~Take care, daughter, don't worry about us. We wanted go to the Hall of Wonders, Rohma. Forgot already?~DO~EscapeAreaDestroy(25)~EXIT