//Additions if Corwin was in BG1 party

EXTEND_BOTTOM BDCorwin 6
IF~Global("EECorwinBG1","Global",1)~THEN REPLY~We have adventured quite well together before. I look ahead to continue with you~ GOTO 13
IF~Global("EECorwinBG1","Global",1)~THEN REPLY~I have missed your company, Schael.~ GOTO 13
END

ADD_TRANS_TRIGGER BDSchael 2
~Global("EECorwinBG1","Global",0)~

EXTEND_BOTTOM BDSchael 2
IF ~Global("EECorwinBG1","Global",1)~ THEN REPLY ~I'll live. But Imoen requires aid.~ GOTO New6
IF ~Global("EECorwinBG1","Global",1)~ THEN REPLY ~Worry about that later, Corwin. We've got to move, there may be more assassins about..~ GOTO New3
END

ADD_TRANS_TRIGGER BDBelt 40
~Global("EECorwinBG1","Global",0)~

EXTEND_BOTTOM BDBelt 40
IF ~Global("EECorwinBG1","Global",1)~ THEN REPLY ~Captain Corwin? I can think of no better companion.~ EXTERN BDSchael New22
IF ~Global("EECorwinBG1","Global",1)~ THEN REPLY ~So we're headed to the nearest tavern, I presume? Just like we did before, fine with me.~ EXTERN BDSchael 20
IF ~Global("EECorwinBG1","Global",1)~ THEN REPLY ~As I've already had one attempt on my life this night, I will permit it.~EXTERN BDSchael New21
END

APPEND BDSchael

IF~~THEN BEGIN New21
SAY~We stood through worse together already <CHARNAME>.~
IF~~THEN GOTO 21
END

IF~~THEN BEGIN New22
SAY~I look ahead to continue our acquaintance, <CHARNAME>.~
IF~~THEN GOTO 23
END

IF~~THEN BEGIN New6
SAY~A healer should be here soon.~
~Enemy forces penetrated the palace...I tried to reach Imoen and you before they did, but... well.~
IF~~THEN REPLY ~You did what you could, and I thank you for it. Is everyone else safe?~GOTO 10
END

IF~~THEN BEGIN New3
SAY~Are there any more up here?.~[BD64601]
~Enemy forces penetrated the palace...I tried to reach Imoen and you before they did, but... well.~
IF~~THEN REPLY ~Not that I know of.~GOTO New6
IF~~THEN REPLY ~You did what you could, and I thank you for it. Is everyone else safe?~GOTO 10
END

IF WEIGHT #-7~AreaCheck("bd0106") Global("bd_drinks_corwin","global",1)Global("EECorwinBG1","Global",1)~THEN BEGIN New124
SAY~So. <CHARNAME>, you almost overnight became the myth. The hero of Baldur's Gate. Tell me how that feels.~
IF~~THEN REPLY ~You were part of it, Corwin. Forget me, I'm still the same. Tell me about Caelar.~GOTO 133
END

END

CHAIN
IF WEIGHT #-7~Global("bd_plot","global",591) GlobalGT("EERescEltan","Locals",1)~THEN BDCorwin Skiefound
~You risked your life for Duke Eltan when he was dying...your feelings about Lanie you shared with me...all of that IS TRUE - this here isn't. Tell me it isn't, I will believe you.~EXTERN BDCorwin 52

CHAIN
IF~Global("EECorwAfter","BD0120",1)~THEN BDCorwiJ Korlasz1
~I'm a bit concerned that Sarevok really proclaimed himself to be your brother.~
DO~SetGlobal("EECorwAfter","BD0120",2)~
=~I don't believe that two spawns of a dead god are siblings in any way.~
END
++~Then why are you concerned?~+ Korlasz2
++~Neither do I - and even if we are, it does not impact me.~+ Korlasz2
++~I doesn't matter if he really were family, my choices would've been just the same.~+ Korlasz2

CHAIN
IF~~THEN BDCorwiJ Korlasz2
~What bothers me is that soon the people of Baldur's Gate will blame themself for having trusted the Bhaalspawn Sarevok and they will celebrate you, the winner, the hero, whatnot.~
=~Public opinion is a fragile thing, <CHARNAME>. I love my hometown but I don't trust a mob that sees Sarevok's <PRO_BROTHERSISTER> in you. It may raise suspicion and rumour pretty soon.~
END
IF~ReputationLT(Player1,10)~THEN REPLY~And what do you think, Corwin?~+ Korlasz4
IF~ReputationGT(Player1,9)~THEN REPLY~And what do you think, Corwin?~+ Korlasz3

CHAIN
IF~~THEN BDCorwiJ Korlasz3
~I trust you, my friend.~EXIT

CHAIN
IF~~THEN BDCorwiJ Korlasz4
~Time will tell which way you're heading, <CHARNAME>.~EXIT

CHAIN
IF~Global("EECorwAfter","BD0120",3)~ THEN BDCorwiJ Korlasz11
~<CHARNAME>, my mission...our mission is finished for the moment. We have done well, I guess. It's time to restore what is left of the Flaming Fist.~
DO~SetGlobal("EECorwAfter","BD0120",4)~
END
IF~Gender(Player1,MALE)~THEN REPLY~Are you trying to tell me that you have to leave me now?~+ Korlasz12m
IF~Gender(Player1,MALE)~THEN REPLY~We've really earned ourself some rest and maybe some celebration.~+ Korlasz12m
IF~Gender(Player1,FEMALE)~THEN REPLY~Are you trying to tell me that you have to leave me now?~+ Korlasz12f
IF~Gender(Player1,FEMALE)~THEN REPLY~We've really earned ourself some rest and maybe some celebration.~+ Korlasz12f

CHAIN
IF~~THEN BDCorwiJ Korlasz12m
~It's time for you to take some rest after all this, <CHARNAME>. And then the town wants to celebrate it's new hero.~EXTERN BDCorwiJ Korlasz13

CHAIN
IF~~THEN BDCorwiJ Korlasz12f
~It's time for you to take some rest after all this, <CHARNAME>. And then the town wants to celebrate it's new heroine.~EXTERN BDCorwiJ Korlasz13

CHAIN
IF~~THEN BDCorwiJ Korlasz13
~It's my duty to see how far Duke Eltan is restored by now. He needs all those officers who stayed loyal to clean the Flaming Fist of Angelo's remains and bring back the order to the city.~
=~The Fist needs me now, my hometown needs me now...and Rohma needs me as well.~
END
++~I hope we will soon meet again, Corwin.~+ Korlasz14
++~I understand your motivation, Captain, I hope it's a temporary thing though.~+ Korlasz14
++~Yeah, you served me well, now go and serve your Eltan if you must.~+ Korlasz15

CHAIN
IF~~THEN BDCorwiJ Korlasz15
~You make parting easier than I thought it would be. Good luck, <CHARNAME>.~
DO~DestroyItem("EEAmul") LeaveParty() SetGlobal("EECorwinBG1","Global",1) EscapeAreaDestroy(45)~EXIT

CHAIN
IF~~THEN BDCorwiJ Korlasz14
~You don't have pressing business, <CHARNAME>., why not take your time to learn about Baldur's Gate from a nicer perspective.~
=~I...I look ahead to see you again, my friend.~
DO~DestroyItem("EEAmul") LeaveParty() SetGlobal("EECorwinBG1","Global",1) EscapeAreaDestroy(45)~EXIT