//Additions if Corwin was in BG1 party

EXTEND_BOTTOM BDCorwin 6
IF~Global("EECorwinBG1","Global",1)~THEN REPLY@0 GOTO 13
IF~Global("EECorwinBG1","Global",1)~THEN REPLY@1 GOTO 13
END

ADD_TRANS_TRIGGER BDSchael 2
~OR(2) Global("EECorwinBG1","Global",0) Global("EECorwinBG1","Global",61)~

EXTEND_BOTTOM BDSchael 2
IF ~OR(2) Global("EECorwinBG1","Global",1) Global("EECorwinBG1","Global",51)~ THEN REPLY @2 GOTO New6
IF ~OR(2) Global("EECorwinBG1","Global",1) Global("EECorwinBG1","Global",51)~ THEN REPLY @3 GOTO New3
END

ADD_TRANS_TRIGGER BDBelt 40
~OR(2) Global("EECorwinBG1","Global",0) Global("EECorwinBG1","Global",61)~

EXTEND_BOTTOM BDBelt 40
IF ~OR(2) Global("EECorwinBG1","Global",1) Global("EECorwinBG1","Global",51)~ THEN REPLY @4 EXTERN BDSchael New22
IF ~OR(2) Global("EECorwinBG1","Global",1) Global("EECorwinBG1","Global",51)~ THEN REPLY @5 EXTERN BDSchael 20
IF ~OR(2) Global("EECorwinBG1","Global",1) Global("EECorwinBG1","Global",51)~ THEN REPLY @6EXTERN BDSchael New21
END

APPEND BDSchael

IF~~THEN BEGIN New21
SAY@7
IF~~THEN GOTO 21
END

IF~~THEN BEGIN New22
SAY@8
IF~~THEN GOTO 23
END

IF~~THEN BEGIN New6
SAY~A healer should be here soon.~
~Enemy forces penetrated the palace...I tried to reach Imoen and you before they did, but... well.~
IF~~THEN REPLY @10GOTO 10
END

IF~~THEN BEGIN New3
SAY~Are there any more up here?.~[BD64601]
~Enemy forces penetrated the palace...I tried to reach Imoen and you before they did, but... well.~
IF~~THEN REPLY @12GOTO New6
IF~~THEN REPLY @10GOTO 10
END

IF WEIGHT #-7~AreaCheck("bd0106") Global("bd_drinks_corwin","global",1)Global("EECorwinBG1","Global",1)~THEN BEGIN New124
SAY@13
IF~~THEN REPLY @14GOTO 133
END

END

CHAIN
IF WEIGHT #-7~Global("bd_plot","global",591) GlobalGT("EERescEltan","Locals",1)~THEN BDCorwin Skiefound
@15EXTERN BDCorwin 52

CHAIN
IF~Global("EECorwAfter","BD0120",1)~THEN BDCorwiJ Korlasz1
@16
DO~SetGlobal("EECorwAfter","BD0120",2)~
=@17
END
++@18+ Korlasz2
++@19+ Korlasz2
++@20+ Korlasz2

CHAIN
IF~~THEN BDCorwiJ Korlasz2
@21
=@22
END
IF~ReputationLT(Player1,10)~THEN REPLY@23+ Korlasz4
IF~ReputationGT(Player1,9)~THEN REPLY@23+ Korlasz3

CHAIN
IF~~THEN BDCorwiJ Korlasz3
@24EXIT

CHAIN
IF~~THEN BDCorwiJ Korlasz4
@25EXIT

CHAIN
IF~Global("EECorwAfter","BD0120",3)~ THEN BDCorwiJ Korlasz11
@26
DO~SetGlobal("EECorwAfter","BD0120",4)~
END
IF~Gender(Player1,MALE)~THEN REPLY@27+ Korlasz12m
IF~Gender(Player1,MALE)~THEN REPLY@28+ Korlasz12m
IF~Gender(Player1,FEMALE)~THEN REPLY@27+ Korlasz12f
IF~Gender(Player1,FEMALE)~THEN REPLY@28+ Korlasz12f

CHAIN
IF~~THEN BDCorwiJ Korlasz12m
@29EXTERN BDCorwiJ Korlasz13

CHAIN
IF~~THEN BDCorwiJ Korlasz12f
@30EXTERN BDCorwiJ Korlasz13

CHAIN
IF~~THEN BDCorwiJ Korlasz13
@31
=@32
END
++@33+ Korlasz14
++@34+ Korlasz14
++@35+ Korlasz15

CHAIN
IF~~THEN BDCorwiJ Korlasz15
@36
DO~DestroyItem("EEAmul") LeaveParty() SetGlobal("EECorwinBG1","Global",1) EscapeAreaDestroy(45)~EXIT

CHAIN
IF~~THEN BDCorwiJ Korlasz14
@37
=@38
DO~DestroyItem("EEAmul") LeaveParty() SetGlobal("EECorwinBG1","Global",1) EscapeAreaDestroy(45)~EXIT

CHAIN
IF WEIGHT #-3~Global("EECorwBelievePC","Global",1) AreaCheck("bd0104") Global("bd_jail_visitors","bd0104",2) ~THEN BDSCHAE2 Jailvisit
@39
DO~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~
=@40
END
++ @41 + J1
++ @42 + J6
++ @43 + J1

APPEND BDSCHAE2
IF ~~ THEN BEGIN J1 
SAY @44   IF ~  Global("bd_player_exiled","global",0)~ THEN REPLY @45 GOTO J6
IF ~  Global("bd_player_exiled","global",1) Global("bd_corwin_romanceactive","global",2)~ THEN REPLY @45 GOTO J17
IF ~  Global("bd_player_exiled","global",1) !Global("bd_corwin_romanceactive","global",2)~ THEN REPLY @45 GOTO J17b
IF ~  Global("bd_player_exiled","global",0)~ THEN REPLY@46 GOTO J4
IF ~  Global("bd_player_exiled","global",1)~ THEN REPLY @46 GOTO J3
IF ~~ THEN REPLY @47 GOTO J2
END

IF ~~ THEN BEGIN J2 
SAY @48 
IF ~~ THEN GOTO J14
END

IF ~~ THEN BEGIN J3 
SAY @49 
IF ~~ THEN REPLY @50 GOTO J13
IF ~~ THEN REPLY @51GOTO J12
IF ~~ THEN REPLY @52 GOTO J20
END

IF ~~ THEN BEGIN J4 
SAY @49 
IF ~~ THEN REPLY @53 GOTO J8
IF ~~ THEN REPLY @54 GOTO J12
IF ~Global("bd_corwin_romanceactive","global",2)~ THEN REPLY @55 GOTO J5a
IF ~!Global("bd_corwin_romanceactive","global",2)~ THEN REPLY @55 GOTO J5b
IF ~~ THEN REPLY @56 GOTO J20
END

IF ~~ THEN BEGIN J5a 
SAY @57 
IF ~~ THEN GOTO J14
END

IF ~~ THEN BEGIN J5b 
SAY @58 
IF ~~ THEN GOTO J14b
END

IF ~~ THEN BEGIN J6 
SAY @59 
IF ~  Global("bd_player_exiled","global",0)~ THEN REPLY @60 GOTO J7
IF ~  Global("bd_player_exiled","global",1) Global("bd_corwin_romanceactive","global",2)~ THEN REPLY @60 GOTO J17
IF ~  Global("bd_player_exiled","global",1) !Global("bd_corwin_romanceactive","global",2)~ THEN REPLY @60 GOTO J17b
IF ~Global("bd_corwin_romanceactive","global",2)~ THEN REPLY @61 GOTO J10
IF ~~ THEN REPLY @62  GOTO J20
IF ~~ THEN REPLY @63 GOTO J8
END

IF ~~ THEN BEGIN J7 
SAY @64 
=@65
IF ~Global("bd_corwin_romanceactive","global",2)~ THEN GOTO J13
IF ~!Global("bd_corwin_romanceactive","global",2)~ THEN GOTO J13b
END

IF ~~ THEN BEGIN J8 
SAY @66 
=@67
=@68 
IF ~Global("bd_corwin_romanceactive","global",2)~ THEN GOTO J14
IF ~!Global("bd_corwin_romanceactive","global",2)~ THEN GOTO J14b
END

IF ~~ THEN BEGIN J10 
SAY @69 
IF ~~ THEN GOTO J14
END

IF ~~ THEN BEGIN J12 
SAY @70 
IF ~Global("bd_corwin_romanceactive","global",2)~ THEN GOTO J14
IF ~!Global("bd_corwin_romanceactive","global",2)~ THEN GOTO J14b
END

IF ~~ THEN BEGIN J13 
SAY@71 
  IF ~~ THEN GOTO J14
END

IF ~~ THEN BEGIN J13b 
SAY @72 
  IF ~~ THEN GOTO J14b
END

IF ~~ THEN BEGIN J14 
SAY @73 
IF ~ ~ THEN REPLY @74 GOTO J17
IF ~~ THEN REPLY @75 GOTO J17
IF ~~ THEN REPLY  @76 GOTO J17
END

IF ~~ THEN BEGIN J14b 
SAY @77 
IF ~~ THEN REPLY @78 GOTO J17b
IF ~~ THEN REPLY @79 GOTO J17b
IF ~~ THEN REPLY @80GOTO J17b
END

IF ~~ THEN BEGIN J17 
SAY @81 
=@82 
IF ~~ THEN REPLY@83 GOTO J20
IF ~~ THEN REPLY @84 GOTO J20
IF ~~ THEN REPLY @85 GOTO J20
END

IF ~~ THEN BEGIN J17b 
SAY @86 
= @87  
IF ~~ THEN REPLY@83 GOTO J20
IF ~~ THEN REPLY @88 GOTO J20
IF ~~ THEN REPLY @85 GOTO J20
END

IF ~~ THEN BEGIN J20 
SAY @89  
=@90
IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
END

CHAIN
IF WEIGHT #-3~Global("bd_sdd020_talk","global",1) Global("EECorwSarevDukes","Global",1)~THEN BDCorwiJ 241IfIn
@91
DO~SetGlobal("bd_sdd020_talk","global",2)~
END
++@92+ 244IfIn
++@93+ 244IfIn

CHAIN
IF~~THEN BDCorwiJ 244IfIn
@94
=@95
END
++@96+ 249
++@97+ 249
++@98+ 253