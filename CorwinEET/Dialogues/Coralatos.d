CHAIN
IF WEIGHT #-5~InParty("Corwin")~THEN Alatos Alert
~Beware! Am I surrounded by nothing but fools! A Flaming Fist officer walks into here just like that.~
==BDCorwiJ~Oh, Thuibuld, stop the charade. I'm not the first nor the last of the Fist to be welcome here.~
==Alatos~Ah, you're one on my payrole, lady, I should've known. I just can't know all of you personally, so sorry.~
END
++~Corwin, nice attempt, but...~+ Alert2
++~Your messenger outside made it somehow urgent for us to see you.~EXTERN Alatos 0

CHAIN
IF~~THEN Alatos Alert2
~Corwin? Captain Schael Corwin!!~
=~How many of my men are in jail or worse thanks to you. The unerring Corwin is surely not in our services.~
==BDCorwiJ~<CHARNAME>, you're an idiot. It's wonder you made it this far.~
END
++~Wait...~EXTERN Alatos 3

I_C_T Shvert 0 EECorring
==BDCorwiJ IF~InParty("Corwin")~THEN~Where did you get this ring you carry, creature?~
==Shvert IF~InParty("Corwin")~THEN~Belongs to Child of Schlumpsha now, all found in sewer belongs to Children of Schlumpsha, you stay away!~
==BDCorwiJ IF~InParty("Corwin")~THEN~I've no intention to take this from you, creature, if *he* throws it away...it's worth nothing to me today.~
==BDCorwiJ IF~InParty("Corwin")~THEN~Let's forget it, <CHARNAME>, I gave that ring once to Beno. This is the best use for it now. Let's leave this poor creature now, please.~END