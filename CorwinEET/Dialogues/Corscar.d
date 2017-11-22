ADD_TRANS_ACTION Scar BEGIN 6 END BEGIN 0 END ~ CreateCreature("Corwin7",[1284.1154],1)~

ADD_TRANS_ACTION Jhasso BEGIN 6 END BEGIN 0 END ~ SetGlobal("EECorDpl","BG0603",1)~

ADD_TRANS_ACTION Jhasso BEGIN 18 END BEGIN 0 END ~ SetGlobal("EECorDpl","BG0603",1)~

ADD_TRANS_ACTION Aldeth BEGIN 27 END BEGIN 0 END ~ SetGlobal("EECorDpl","BG0128",1)~

I_C_T SCAR 7 EECorwinScar
== SCAR IF ~AreaCheck("BG0900")  ~ THEN ~And..., <CHARNAME>, it may be a good idea to have someone at your side in those missions who knows a bit about this town and its subtleties.~
== BDCorwin IF ~AreaCheck("BG0900") ~ THEN ~A bit, commander Scar?~
== SCAR IF ~AreaCheck("BG0900")  ~ THEN ~Well, probably more than most of us, Captain, so much is sure. I like to introduce you to Captain Schael Corwin, my deputy and an officer I truely trust in these times like nobody else.~
== BDCorwin IF ~AreaCheck("BG0900") ~ THEN ~Thank you for the merits, commander.~
== SCAR IF ~AreaCheck("BG0900") ~ THEN ~Captain Corwin has agreed to join you for the missions that await you in the town. She will follow your orders and assist you with her knowledge. I will leave you now to aquaint yourself and agree on a cooperation.~END

APPEND BDCorwin

IF WEIGHT #-7~AreaCheck("BG0900") Global("EECorwinScar","Global",1)~THEN BEGIN CanJoin1
SAY~You may be a bit puzzled by our requests and our offer, <CHARNAME>. I will explain if you'd like to listen.~
IF~~THEN REPLY~Ahem, I have not much reason to trust a Flaming Fist officer, honestly, I have already killed some of your men.~DO~SetGlobal("EECorwinScar","Global",2)~GOTO CanJoin2
IF~Gender(Player1,MALE)~THEN REPLY~I always have time to listen to an attractive female, in her uniform or out of it.~DO~SetGlobal("EECorwinScar","Global",2)~GOTO CanJoin2a
IF~~THEN REPLY~These are strange times, Captain Corwin, I have learned by now to listen first and judge afterwards.~DO~SetGlobal("EECorwinScar","Global",2)~GOTO CanJoin2
END

IF~~THEN BEGIN CanJoin2a
SAY~I don't care for your glibberish motifs as long as you listen...~
IF~~THEN GOTO CanJoin2
END

IF~~THEN BEGIN CanJoin2
SAY~It's not easy for me to admit it, but these are troubled times, and Commander Scar and me have reasonable suspicion that even within our own ranks we no longer can trust everybody in the way we need to.~
=~I'm not referring to the Iron Crisis alone. There are greater things afoot. Duke Eltan trusts Scar and he trusts me. It was his proposal to seek the assistence of trustworthy and competent candidates who can venture where we cannot, officially.~
IF~~THEN REPLY~Scar was right in two way. To trust us and to provide us with someone who has some background information of what's going on behind those walls over there.~GOTO CanJoin3
IF~~THEN REPLY~I'm in a slightly similar situation, lady, I'm already deeply involved with whatever goes on here. Some assistance would be welcome.~GOTO CanJoin3
IF~~THEN REPLY~I have my own reasons to pursue the issues of Baldur's Gate. The less people I hardly know are involved, the better.~GOTO CanJoin3
END

IF~~THEN BEGIN CanJoin3
SAY~Listen, <CHARNAME>. My loyalty to my hometown and its people is my highest goal. For that purpose I joined the Flaming Fist and confide in Duke Eltan. Those who may be the threat to my town and people are most likely the same who are your enemies. Give me the chance to proof that to you. It will benefit both sides.~
IF~~THEN REPLY~Those are convincing arguments. Join with me, Captain Corwin.~GOTO CanJoiny
IF~~THEN REPLY~I will try it with you, Corwin. I am not easily deceived, so be careful with how you act.~GOTO CanJoiny
IF~~THEN REPLY~My party is full of trusted companions. I think, we can manage that situation without your help.~GOTO CanJoinn
END

IF~~THEN BEGIN CanJoiny
SAY~I'm happy to lend my aid. Let's go.~
IF~~THEN DO~SetGlobal("EECorwinBG1","Global",1) JoinParty()~EXIT
END
 

IF~~THEN BEGIN CanJoinn
SAY~As you wish. Take care of yourself.~
IF~~THEN DO~SetGlobal("EECorwinBG1","Global",61) EscapeAreaDestroy(50)~EXIT
END

END