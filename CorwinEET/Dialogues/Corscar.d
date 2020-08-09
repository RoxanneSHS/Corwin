ADD_TRANS_ACTION Scar BEGIN 6 END BEGIN 0 END ~ CreateCreature("Corwin7",[1284.1154],1)~

ADD_TRANS_ACTION Jhasso BEGIN 6 END BEGIN 0 END ~ SetGlobal("EECorDpl","%SWBaldursGate_SevenSuns_Cellar%",1)~

ADD_TRANS_ACTION Jhasso BEGIN 18 END BEGIN 0 END ~ SetGlobal("EECorDpl","%SWBaldursGate_SevenSuns_Cellar%",1)~

ADD_TRANS_ACTION Aldeth BEGIN 27 END BEGIN 0 END ~ SetGlobal("EECorDpl","%SWBaldursGate_MerchantLeague_L2%",1)~

I_C_T SCAR 7 EECorwinScar
== SCAR IF ~AreaCheck("%WyrmsCrossing%")  ~ THEN @0
== BDCorwin IF ~AreaCheck("%WyrmsCrossing%") ~ THEN @1
== SCAR IF ~AreaCheck("%WyrmsCrossing%")  ~ THEN @2
== BDCorwin IF ~AreaCheck("%WyrmsCrossing%") ~ THEN @3
== SCAR IF ~AreaCheck("%WyrmsCrossing%") ~ THEN @4END

APPEND BDCorwin

IF WEIGHT #-7~AreaCheck("%WyrmsCrossing%") Global("EECorwinScar","Global",1)~THEN BEGIN CanJoin1
SAY@5
IF~~THEN REPLY@6DO~SetGlobal("EECorwinScar","Global",2)~GOTO CanJoin2
IF~Gender(Player1,MALE)~THEN REPLY@7DO~SetGlobal("EECorwinScar","Global",2)~GOTO CanJoin2a
IF~~THEN REPLY@8DO~SetGlobal("EECorwinScar","Global",2)~GOTO CanJoin2
END

IF~~THEN BEGIN CanJoin2a
SAY@9
IF~~THEN GOTO CanJoin2
END

IF~~THEN BEGIN CanJoin2
SAY@10
=@11
IF~~THEN REPLY@12GOTO CanJoin3
IF~~THEN REPLY@13GOTO CanJoin3
IF~~THEN REPLY@14GOTO CanJoin3
END

IF~~THEN BEGIN CanJoin3
SAY@15
IF~~THEN REPLY@16GOTO CanJoiny
IF~~THEN REPLY@17GOTO CanJoiny
IF~~THEN REPLY@18GOTO CanJoinn
END

IF~~THEN BEGIN CanJoiny
SAY@19
IF~~THEN DO~SetGlobal("EECorwinBG1","Global",1) JoinParty()~EXIT
END
 

IF~~THEN BEGIN CanJoinn
SAY@20
IF~~THEN DO~SetGlobal("EECorwinBG1","Global",61) EscapeAreaDestroy(50)~EXIT
END

IF WEIGHT #-6~Global("bd_joined","locals",0) Global("EndofBG1","Global",0) ~THEN BEGIN getgone
SAY@21
IF~~THEN REPLY@22GOTO CanrJoin2
IF~~THEN REPLY@23GOTO CanrJoin3
IF~~THEN REPLY@24GOTO CanrJoin3
END

IF~~THEN BEGIN CanrJoin2
SAY@19
IF~~THEN DO~JoinParty()~EXIT
END

IF~~THEN BEGIN CanrJoin3
SAY@25
IF~~THEN DO~SetGlobal("EECorwinBG1","Global",51) EscapeAreaDestroy(50)~EXIT
END

END

I_C_T Angelo 0 EEAngeloCaught
==Angelo IF~InParty("Corwin")~THEN@26
==BDCorwiJ IF~InParty("Corwin")~THEN@27
==Angelo IF~InParty("Corwin")~THEN@28DO~ActionOverride("Corwin",ApplyDamagePercent("Corwin",25,CRUSHING)) ~END

CHAIN
IF WEIGHT #-3~GlobalGT("Chapter","GLOBAL",3) InParty("Corwin")~THEN Vai RetGate
@29
==BDCorwiJ@30
=@31
=@32
==Vai@33
=@34EXTERN VAI 6

INTERJECT Deltan 0 EECorVsIT
==BDCorwiJ IF~InParty("Corwin")~THEN@35
==Deltan IF~InParty("Corwin")~THEN@36EXTERN Deltan 4

