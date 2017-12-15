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