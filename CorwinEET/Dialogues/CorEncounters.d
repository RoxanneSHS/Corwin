INTERJECT_COPY_TRANS IF_FILE_EXISTS BW05FFGE 2 EECorGreyClan
==BDCorwiJ IF~InParty("Corwin")~THEN~General, I accompany <CHARNAME> with Scar's and Eltan's consent to help out with my knowledge best I can.~
==IF_FILE_EXISTS BW05FFGE IF~InParty("Corwin")~THEN~Ah, Captain Corwin, greetings. Your presence with <PRO_HIMHER> assures me that I address the right people.~END

CHAIN
IF WEIGHT #-3 ~NumberOfTimesTalkedTo(0) InParty("Corwin")~THEN Petrin Corhelp
~Hey, I know you, you're Rohma's mama, yes?~
== BDCorwiJ~Yes, I am. You are...~
== Petrin~You're the Flaming Fist, you're the one who must help me.~
== BDCorwiJ~We'll see if we *must*. I suggest you tell <CHARNAME> here who you are and what the problem is.~EXTERN Petrin 1

I_C_T Laola 0 EELaolaCorw
==BDCorwiJ IF~InParty("Corwin")~THEN~Laola, they already agreed to cooperate with Scar and me as you can see.~
==Laola IF~InParty("Corwin")~THEN~Oh, Schael, excuse me, Captain Corwin, I didn't see you at first.~
==Laola IF~InParty("Corwin")~THEN~Yes, Commander Scar told me about your plan to seek <CHARNAME>'s company but wasn't sure if they'd accept the offer. I'm glad they did.~END

CHAIN
IF WEIGHT #-3 ~NumberOfTimesTalkedTo(0) InParty("Corwin")~THEN Housg3 EECorwinInEntar1
~You there! What are you doing in the estate of Entar Silvershield?~
== BDCorwiJ~I'm Captain Corwin of the Flaming Fist. We're here to ensure the Duke's safety.~
END
++~We're here because we have dealings to discuss with Entar Silvershield. My associates and I have come all the way from Waterdeep. Perhaps you could leave us to our business now? ~+ 5
++~We're members of the Flaming Fist. There has been some worry about the security of Entar's estate.~+ 5
IF~OR(2)Global("X#KagainCaravan","GLOBAL",5)PartyHasItem("X#SILSH")~THEN REPLY~We bring news for Lord and Lady Silvershield. We believe that we have found news of their son. Any chance this pin is one of yours?~+ 7


INTERJECT Skie 1 EECorwinSkieBG1
==BDCorwiJ IF~InParty("Corwin") !InParty("Eldoth")~THEN~Hello, Skie...~
==Skie IF~InParty("Corwin") !InParty("Eldoth")~THEN~Oh, Schael, my father never lets me out much. If I could just join the Flaming Fist, I could be free just like you.~
==BDCorwiJ IF~InParty("Corwin") !InParty("Eldoth")~THEN~Now...apart from the fact that your father probably never woould agree to it, there's something like discipline very high up in the Fist's rules, while free is...well, it's a dream anyway.~
==Skie IF~InParty("Corwin") !InParty("Eldoth")~THEN~Ah, you just wait and see, I tell you, I'll grab my chance if I see it.~DO~EscapeAreaDestroy(30)~EXIT

CHAIN
IF WEIGHT #-3 ~InParty("Corwin")~THEN Entar EECorwinInEntar2
~Who are you? What are you doing in my estate?~
==BDCorwiJ ~Greetings, Duke Entar.~
==Entar~Ah, the good Captain Corwin. In the current situation one cannot be cautious enough even inside the city.~
==BDCorwiJ ~The Flaming Fist is in control of the situation, be assured, Sir.~
==Entar~Hopefully. Even if the likes of you or Scar can't be everywhere at once.~
=~Well, I have business to attend, excuse me.~DO~EscapeArea()~EXIT

CHAIN
IF WEIGHT #-3 ~InParty("Corwin")~THEN Triado EECorwinInIT
~Out! Away! Fly while you can! There be madness here and I can stand it no longer!~
==BDCorwiJ~Madness in this much-lauded tower? That there be malice here, I have no doubt... but madness? Never.~
==Triado~Then clearly you know it not! Madness seethes here and amongst Sarevok's crazed acolytes it overflows. I'm a simple merchant after a pretty coin but I swear it isn't worth it to suffer this place so long.~
==BDCorwiJ~Sarevok...<CHARNAME>, we have guessed right all the time. It's time to see that this ends now. In the name of the Flaming Fist, man, speak!~EXTERN Triado 3

I_C_T2 Bendal 2 EEBendalCorw2
==BDCorwiJ IF~InParty("Corwin")~THEN~Am I the only one to think that Koveras sounds like Sarevok spelled backwards.~
==BDCorwiJ IF~InParty("Corwin")~THEN~We must be careful here, <CHARNAME>, we have not the authority of the Flaming Fist behind us while we're here. Let's try to gain evidence but not confront him here. That must wait until we can face him in Baldur's Gate. Restraint is the order of the day.~END

I_C_T2 Bendal 3 EEBendalCorw3
==BDCorwiJ IF~InParty("Corwin")~THEN~Am I the only one to think that Koveras sounds like Sarevok spelled backwards.~
==BDCorwiJ IF~InParty("Corwin")~THEN~We must be careful here, <CHARNAME>, we have not the authority of the Flaming Fist behind us while we're here. Let's try to gain evidence but not confront him here. That must wait until we can face him in Baldur's Gate. Restraint is the order of the day.~END

I_C_T2 Bendal 4 EEBendalCorw4
==BDCorwiJ IF~InParty("Corwin")~THEN~Am I the only one to think that Koveras sounds like Sarevok spelled backwards.~
==BDCorwiJ IF~InParty("Corwin")~THEN~We must be careful here, <CHARNAME>, we have not the authority of the Flaming Fist behind us while we're here. Let's try to gain evidence but not confront him here. That must wait until we can face him in Baldur's Gate. Restraint is the order of the day.~END

I_C_T Rielta 0 EECorRieltCandl
==Rielta IF~InParty("Corwin")~THEN~You there, Flaming Fist, do your duty and remove this scum from our sight, will you.~
==BDCorwiJ IF~InParty("Corwin")~THEN~The Fist is not in the service of the Iron Throne, Rielta Anchev. In fact my presence here is based on the fact that your involvement with that Iron Crisis will come to an end.~
==Rielta IF~InParty("Corwin")~THEN~Captain, have you missed something? Your superior Angelo Dosan will be most likely willing to set your loyalties right, or are you a deserter to go down with those criminals?~
==BDCorwiJ IF~InParty("Corwin")~THEN~Dossan, my superior? You must be joking, you can't bribe Scar or Eltan or me to jump to your tune, Anchev. I know where my duties are, surely not serving the Iron Throne against the town I swore to protect.~
==Rielta IF~InParty("Corwin")~THEN~You'll soon see the errors of your stubborn position, Captain. I'd rather hear what <CHARNAME> has to answer.~END

ADD_TRANS_ACTION Shista BEGIN 0 END BEGIN 0 1 2 END
~SetGlobal("EECorwShista","BG2611",1)~

INTERJECT HUSAM2 0 EECorHussCha7
==Husam2 IF~InParty("Corwin")~THEN~Captain lady, you be one offa few can still turn things 'round *hic*.-~
==BDCorwiJ IF~InParty("Corwin")~THEN~I fear the worst after what we heard at Candlekeep. What do you have for us, man?~
==Husam2 IF~InParty("Corwin")~THEN~Well, heh heh, quites a bit I have, quites a bit. Does ya know about Duke Eltan, he's diseased heez is. His seconds in command *hic* Scar got killed, assassassinated heez was. *buuuuuurp* Sose that's it. I gots to get going now, if you wants to talk with me some more just come by the Blushing Mermaid. See yas.~DO~SetGlobal("HusamMove","GLOBAL",5) EscapeArea()~
==BDCorwiJ IF~InParty("Corwin")~THEN~Scar dead? That can't be...Eltan diseased, probably poisoned. <CHARNAME>, we must find out what's going on before we face Sarevok. That guy knows a lot.~ 
==BDCorwiJ IF~InParty("Corwin")~THEN~All this talk about Angelo Dosan, remember. If that scoundrel is now in charge of the Flaming Fist, we need to beware, not many may still be loyal to our true course, the majority may follow Dosan in their duty while not knowing the truth.~
END
++~What do you propose, Corwin?~ EXTERN BDCorwiJ EECorHussCha7b
++~Bah, a drunken fool's babbling, we can't waste time, we need to track down Sarevok.~EXTERN BDCorwiJ EECorHussCha7c
++~As a minimum we may hear him out at the Blushing Mermaid.~EXTERN BDCorwiJ EECorHussCha7b
++~We should immediately go to Flaming Fist headquarter to find out what's going on.~EXTERN BDCorwiJ EECorHussCha7b

CHAIN
IF~~THEN BDCorwiJ EECorHussCha7b
~Let us first go to the Blushing Mermaid to find out more before we investigate the Flaming Fist headquarter. We need to avoid another trap if there is one.~EXIT

CHAIN
IF~~THEN BDCorwiJ EECorHussCha7c
~Truth comes from the mouth of fools and drunkards more often than you think.~EXTERN BDCorwiJ EECorHussCha7b

ADD_TRANS_ACTION Neb_ BEGIN 5 END BEGIN 0 END
~SetGlobal("EECorwPrison","BG0607",1)~

I_C_T2 Sorrel 2 EESorrelCorw1
==BDCorwiJ IF~InParty("Corwin")~THEN~Sorrel, nothing is lost as long as the remaining comrades who are not corrupted by Angelo stand together. You know who's on our side, go spread the news that >CHARNAME> is our hope at this moment to help me solve this crisis.~
==Sorrel IF~InParty("Corwin")~THEN~That I will, Captain. Anyway, it's best you and your party stay out of sight as best as possible. The sewers are a safe way to move about. Good luck, Captain Corwin.~
==BDCorwiJ IF~InParty("Corwin")~THEN~Be assured we will persist and rebuild the Flaming Fist when this is over. We will not forget those who stayed loyal, Sorrel.~END

I_C_T2 Sorrel 3 EESorrelCorw2
==BDCorwiJ IF~InParty("Corwin")~THEN~Sorrel, nothing is lost as long as the remaining comrades who are not corrupted by Angelo stand together. You know who's on our side, go spread the news that <CHARNAME> is our hope at this moment to help me solve this crisis.~
==Sorrel IF~InParty("Corwin")~THEN~That I will, Captain. Anyway, it's best you and your party stay out of sight as best as possible. The sewers are a safe way to move about. Good luck, Captain Corwin.~
==BDCorwiJ IF~InParty("Corwin")~THEN~Be assured we will persist and rebuild the Flaming Fist when this is over. We will not forget those who stayed loyal, Sorrel.~END

I_C_T Harbor 9 EECorwRescEltanHarb
==BDCorwiJ IF~InParty("Corwin") ~THEN~You know what must be done to save his life while we chase the ones who did this and are out to do even worse. ~DO~SetGlobal("EERescEltan","Locals",3)~
==Harbor IF~InParty("Corwin") ~THEN~He'll be at the safest place this town has these days and in the best of care, worry not for him, Captain Corwin. All your effort now needs to be to stop Sarevok. We pray for you - and for <CHARNAME>.~END

INTERJECT Kent 0 EECorwNoDesert
==BDCorwiJ IF~InParty("Corwin") ~THEN~Sergeant Kent, make your report.~
==Kent IF~InParty("Corwin") ~THEN~Captain? I remember these people with you from when they worked for Scar and Eltan. Well, since you've been gone, things have gone downhill. Eltan's taken ill, and he's resting in the room beside us. His healer, Rashad, keeps on saying that there's nothing he can do, but I know better. He's no healer from what I've seen. Anyhow, it don't matter; I've decided to desert the Flaming Fist before things get too hairy. I don't want to lose my life over whatever power struggle is going on in the city.~
==BDCorwiJ IF~InParty("Corwin") ~THEN~Sergeant Kent, I have not heard this last remark about deserting. Listen, man, our cause is not lost. We are here to save Eltan. You will go and report to Lieutenant Vai right away. She and Laola Axhand will regather all those who can still be trusted. The ursurper Dosan will be removed pretty soon with his conveyor Sarevok.~
==Kent IF~InParty("Corwin") ~THEN~Aye, Captain. Thank you, ma'am, I just didn't know that all you good people are still around. I know where to find Axhand.~
==BDCorwiJ IF~InParty("Corwin") ~THEN~One final question, Kent. Where did they bring Scar's body, we may still be able to resurrect him?~
==Kent IF~InParty("Corwin") ~THEN~I fear no, Captain. When they brought him to headquarter's, that scoundrel Dosan claimed there was evidence that shadow thieves did it - but nobody saw it but him. His men took the body away in haste, Leira may know to where.~
==SkieJ IF~InParty("Skie") ~THEN~This is terrible... We've got to do something, <CHARNAME>... We couldn't save my father... but we've got to try and save Eltan... I owe it... to my father..~
==BDCorwiJ IF~InParty("Corwin") ~THEN~Scar is lost thanks to Angelo Dosan, let's focus on saving Eltan at least. We still have that time before we need to deal with Sarevok.~
END
++~Thanks for the information, Kent. Maybe we'll see each other again.~+ 3
++~Kent, why don't you think Rashad's a healer?~+4

I_C_T Sarevo 6 EECorwSarevDukes
==BDCorwiJ IF~InParty("Corwin") ~THEN~Angelo is never leading the Flaming Fist and Duke Eltan is not dead.~
==BDCorwiJ IF~InParty("Corwin") Global("EERescEltan","Locals",3)~THEN~<CHARNAME> and me have assured that Eltan is in safety and he will recover to take back responsibility of our forces.~ 
==BDCorwiJ IF~InParty("Corwin") ~THEN~In the name of the Flaming Fist, Sarevok, you are under arrest.~
==Sarevo IF~InParty("Corwin") ~THEN~Laughable, woman. I, Duke Sarevok, will put you under arrest and you will be disciplined by Angelo Dosan together with the remaining scum you brought into this honorable assembly. Let us continue now.~END