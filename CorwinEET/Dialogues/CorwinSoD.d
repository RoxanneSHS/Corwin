//Additions if Corwin was in BG1 party

EXTEND_BOTTOM BDCorwin 6
IF~Global("EECorwinBG1","Global",1)~THEN REPLY~We have adventured quite well together before. I look ahead to continue with you~ GOTO 13
IF~Global("EECorwinBG1","Global",1)~THEN REPLY~I have missed your company, Schael.~ GOTO 13
END

ADD_TRANS_TRIGGER BDSchael 2
~OR(2) Global("EECorwinBG1","Global",0) Global("EECorwinBG1","Global",61)~

EXTEND_BOTTOM BDSchael 2
IF ~OR(2) Global("EECorwinBG1","Global",1) Global("EECorwinBG1","Global",51)~ THEN REPLY ~I'll live. But Imoen requires aid.~ GOTO New6
IF ~OR(2) Global("EECorwinBG1","Global",1) Global("EECorwinBG1","Global",51)~ THEN REPLY ~Worry about that later, Corwin. We've got to move, there may be more assassins about..~ GOTO New3
END

ADD_TRANS_TRIGGER BDBelt 40
~OR(2) Global("EECorwinBG1","Global",0) Global("EECorwinBG1","Global",61)~

EXTEND_BOTTOM BDBelt 40
IF ~OR(2) Global("EECorwinBG1","Global",1) Global("EECorwinBG1","Global",51)~ THEN REPLY ~Captain Corwin? I can think of no better companion.~ EXTERN BDSchael New22
IF ~OR(2) Global("EECorwinBG1","Global",1) Global("EECorwinBG1","Global",51)~ THEN REPLY ~So we're headed to the nearest tavern, I presume? Just like we did before, fine with me.~ EXTERN BDSchael 20
IF ~OR(2) Global("EECorwinBG1","Global",1) Global("EECorwinBG1","Global",51)~ THEN REPLY ~As I've already had one attempt on my life this night, I will permit it.~EXTERN BDSchael New21
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

CHAIN
IF WEIGHT #-3~Global("EECorwBelievePC","Global",1) AreaCheck("bd0104") Global("bd_jail_visitors","bd0104",2) ~THEN BDSCHAE2 Jailvisit
~I don't believe in your guilt, <CHARNAME>, I had to come and tell you at least this.~
DO~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~
=~<CHARNAME>. How are you?~ [BD54610]
END
++ ~I've had better days.~ + J1
++ ~Corwin. Thank the gods. You've got to get me out of here.~ + J6
++ ~You shouldn't be here, Corwin. Go, now.~ + J1

APPEND BDSCHAE2
IF ~~ THEN BEGIN J1 
SAY ~You could have worse. Eltan and Belt moved mountains to keep you alive and out of Entar's hands.~ [BD54614]   IF ~  Global("bd_player_exiled","global",0)~ THEN REPLY ~I need your help, Schael. Let me out of this cell. Let me find Skie Silvershield's killer, let me prove my innocence. Please.~ GOTO J6
IF ~  Global("bd_player_exiled","global",1) Global("bd_corwin_romanceactive","global",2)~ THEN REPLY ~I need your help, Schael. Let me out of this cell. Let me find Skie Silvershield's killer, let me prove my innocence. Please.~ GOTO J17
IF ~  Global("bd_player_exiled","global",1) !Global("bd_corwin_romanceactive","global",2)~ THEN REPLY ~I need your help, Schael. Let me out of this cell. Let me find Skie Silvershield's killer, let me prove my innocence. Please.~ GOTO J17b
IF ~  Global("bd_player_exiled","global",0)~ THEN REPLY~If you expect me to thank the Grand Dukes for their hospitality, you're going to be gravely disappointed.~ GOTO J4
IF ~  Global("bd_player_exiled","global",1)~ THEN REPLY ~If you expect me to thank the Grand Dukes for their hospitality, you're going to be gravely disappointed.~ GOTO J3
IF ~~ THEN REPLY ~Let Entar come. I'll send him to join his wretched daughter.~ GOTO J2
END

IF ~~ THEN BEGIN J2 
SAY ~Gods help me. How could I have missed this? How did I never see you for the monster you are?~ [BD54619] 
IF ~~ THEN GOTO J14
END

IF ~~ THEN BEGIN J3 
SAY ~I was gravely disappointed before I ever came here.~ [BD54620] 
IF ~~ THEN REPLY ~I'm truly sorry you've had to endure this, Schael.~ GOTO J13
IF ~~ THEN REPLY ~Imagine how I feel.~GOTO J12
IF ~~ THEN REPLY ~And so you came here seeking solace. I've none to give, and wouldn't offer it to you even if I did. Get out. You sicken me. Go!~ GOTO J20
END

IF ~~ THEN BEGIN J4 
SAY ~I was gravely disappointed before I ever came here.~ [BD54620] 
IF ~~ THEN REPLY ~Yet you did come here. Why?~ GOTO J8
IF ~~ THEN REPLY ~I'm not thrilled myself.~ GOTO J12
IF ~Global("bd_corwin_romanceactive","global",2)~ THEN REPLY ~And yet here you are. Why? Not to free me, I know. You'd never defy your beloved Flaming Fist.~ GOTO J5a
IF ~!Global("bd_corwin_romanceactive","global",2)~ THEN REPLY ~And yet here you are. Why? Not to free me, I know. You'd never defy your beloved Flaming Fist.~ GOTO J5b
IF ~~ THEN REPLY ~And what, you came here seeking solace? I've none to give. I wouldn't offer it to you even if I did. Get out. Your face sickens me. The wretched platitudes you spout make my gut churn. Go!~ GOTO J20
END

IF ~~ THEN BEGIN J5a 
SAY ~I would have, you know. If you'd asked me, I would have followed you anywhere, happily. It wasn't so long ago.~ [BD54625] 
IF ~~ THEN GOTO J14
END

IF ~~ THEN BEGIN J5b 
SAY ~I never promised I would. That doesn't mean I lost my faith in you being a good person beneath your hard shell.~ 
IF ~~ THEN GOTO J14b
END

IF ~~ THEN BEGIN J6 
SAY ~I can't do it. I'm sorry, <CHARNAME>. There's only one way you're leaving here.~ [BD54626] 
IF ~  Global("bd_player_exiled","global",0)~ THEN REPLY ~I didn't kill Skie. You can't believe I'd ever do something like that.~ GOTO J7
IF ~  Global("bd_player_exiled","global",1) Global("bd_corwin_romanceactive","global",2)~ THEN REPLY ~I didn't kill Skie. You can't believe I'd ever do something like that.~ GOTO J17
IF ~  Global("bd_player_exiled","global",1) !Global("bd_corwin_romanceactive","global",2)~ THEN REPLY ~I didn't kill Skie. You can't believe I'd ever do something like that.~ GOTO J17b
IF ~Global("bd_corwin_romanceactive","global",2)~ THEN REPLY ~We can leave here together - take Rohma and go some place no one will ever find us. Please, Schael, don't give up. There's still a future for us - if you want it.~ GOTO J10
IF ~~ THEN REPLY ~Aye. Over the bodies of your friends and colleagues. And yours too, if you stand in my way.~  GOTO J20
IF ~~ THEN REPLY ~If you've not come to help me, why are you here?~ GOTO J8
END

IF ~~ THEN BEGIN J7 
SAY ~But I do believe you. What you need to understand is that it doesn't matter what I think and know. Not until the day we can prove that you're not Skie's murderer.~ 
=~We can scream and shout but until we have evidence, you're not save in this town and neither me nor the Flaming Fist nor those Dukes who think like me can protect you.~
IF ~Global("bd_corwin_romanceactive","global",2)~ THEN GOTO J13
IF ~!Global("bd_corwin_romanceactive","global",2)~ THEN GOTO J13b
END

IF ~~ THEN BEGIN J8 
SAY ~I needed to see you one last time. Needed to tell you how I feel...and what I really think.~ 
=~You did not kill her, we both know that.~
=~It doesn't matter. I wish it did, but in the end, it doesn't.~ [BD70321] 
IF ~Global("bd_corwin_romanceactive","global",2)~ THEN GOTO J14
IF ~!Global("bd_corwin_romanceactive","global",2)~ THEN GOTO J14b
END

IF ~~ THEN BEGIN J10 
SAY ~You think I'd turn my back on the Flaming Fist? On my father? I thought you knew me.~ [BD54636] 
IF ~~ THEN GOTO J14
END

IF ~~ THEN BEGIN J12 
SAY ~Your glib tongue betrays you, <CHARNAME>. A girl lies dead, her blood on your hands, and all you offer is another quip. Skie deserves better than that. As do I.~ [BD54641] 
IF ~Global("bd_corwin_romanceactive","global",2)~ THEN GOTO J14
IF ~!Global("bd_corwin_romanceactive","global",2)~ THEN GOTO J14b
END

IF ~~ THEN BEGIN J13 
SAY~It doesn't matter. I wish it did, but in the end, it doesn't. If it weren't this, it would have been something else. I thought we could be together, that you and Rohma and I had a future...~ [BD54642] 
  IF ~~ THEN GOTO J14
END

IF ~~ THEN BEGIN J13b 
SAY ~It doesn't matter. I wish it did, but in the end, it doesn't. If it weren't this, it would have been something else. My duty and Rohma require I stay here but you can't.~ 
  IF ~~ THEN GOTO J14b
END

IF ~~ THEN BEGIN J14 
SAY ~Even after everything that's happened in my life, I'm still just a stupid girl, blinded by - whatever it was I thought we had. I don't doubt your innocence. It doesn't change anything but it's...precious to me.~ [BD54643] 
IF ~ ~ THEN REPLY ~It was love, Schael. It was real.~ GOTO J17
IF ~~ THEN REPLY ~Love makes fools of us all.~ GOTO J17
IF ~~ THEN REPLY  ~You know what we had. Deny it if you must. I know the truth.~ GOTO J17
END

IF ~~ THEN BEGIN J14b 
SAY ~Even after everything that's happened in my life, I'm still just a stupid girl, it's important for me you know that I don't doubt your innocence. It doesn't change anything but it's...precious to me.~ 
IF ~~ THEN REPLY ~It is precious for me as well, Schael. ~ GOTO J17b
IF ~~ THEN REPLY ~I thought of you as my friend, Schael.~ GOTO J17b
IF ~~ THEN REPLY ~We've been through all of this together. Deny it if you must. I know the truth.~GOTO J17b
END

IF ~~ THEN BEGIN J17 
SAY ~I'll not deny my feelings for you. Not ever. But how I feel means little beyond these walls.~ 
=~Love conquers all. I'm not feeling particularly victorious right now. Are you?~ [BD54648] 
IF ~~ THEN REPLY~Do not succumb to despair, Schael. This isn't over yet.~ GOTO J20
IF ~~ THEN REPLY ~So long as you love me, I have hope.~ GOTO J20
IF ~~ THEN REPLY ~Let's see how we're feeling after you release me from this wretched cell.~ GOTO J20
END

IF ~~ THEN BEGIN J17b 
SAY ~I'll not deny my friendship for you. Not ever. But how I feel or even what I know means little beyond these walls.~ 
= ~Friendship moves mountains ans will be victorious in the end. I'm not feeling particularly victorious right now. Are you?~  
IF ~~ THEN REPLY~Do not succumb to despair, Schael. This isn't over yet.~ GOTO J20
IF ~~ THEN REPLY ~So long as I have friends who believe in me, I have hope.~ GOTO J20
IF ~~ THEN REPLY ~Let's see how we're feeling after you release me from this wretched cell.~ GOTO J20
END

IF ~~ THEN BEGIN J20 
SAY ~Don't lose hope ever. In any way let's look at current facts. Only if we get you out of this town we can win the necessary time to proof your innocence and restore your reputation. Face the facts. I do.~  
=~I must go now, <CHARNAME>. This is not easy for me and I know it's neither for you. Farewell.~
IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
END

CHAIN
IF WEIGHT #-3~Global("bd_sdd020_talk","global",1) Global("EECorwSarevDukes","Global",1)~THEN BDCorwiJ 241IfIn
~A word, <CHARNAME>?~ [BD67132]
DO~SetGlobal("bd_sdd020_talk","global",2)~
END
++~Of course, Captain Corwin. What can I do for you?~+ 244IfIn
++~ANOTHER one? *sigh* Very well.~+ 244IfIn

CHAIN
IF~~THEN BDCorwiJ 244IfIn
~Some of the things people are saying about you concern me.~
=~I've seen you and I've seen Sarevok. But for others you are siblings and one of a breed.~
END
++~Like Sarevok, I am a child of Bhaal. But I assure you, a father is all we share.~+ 249
++~Regrettably, that last is true. You can choose your friends, but not your family.~+ 249
++~There are many who would to see me fall. Spread these vile lies and you'll do nothing but help them. Is that what you want?~+ 253