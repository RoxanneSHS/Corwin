INTERJECT_COPY_TRANS IF_FILE_EXISTS BW05FFGE 2 EECorGreyClan
==BDCorwiJ IF~InParty("Corwin")~THEN@0
==IF_FILE_EXISTS BW05FFGE IF~InParty("Corwin")~THEN@1END

CHAIN
IF WEIGHT #-3 ~NumberOfTimesTalkedTo(0) InParty("Corwin")~THEN Petrin Corhelp
@2
== BDCorwiJ@3
== Petrin@4
== BDCorwiJ@5EXTERN Petrin 1

I_C_T Laola 0 EELaolaCorw
==BDCorwiJ IF~InParty("Corwin")~THEN@6
==Laola IF~InParty("Corwin")~THEN@7
==Laola IF~InParty("Corwin")~THEN@8END

CHAIN
IF WEIGHT #-3 ~NumberOfTimesTalkedTo(0) InParty("Corwin")~THEN Housg3 EECorwinInEntar1
@9
== BDCorwiJ@10
END
++@11+ 5
++@12+ 5
IF~OR(2)Global("X#KagainCaravan","GLOBAL",5)PartyHasItem("X#SILSH")~THEN REPLY@13+ Corw7

CHAIN
IF~~THEN Housg3 Corw7
@14DO~EscapeAreaDestroy(30)~EXIT

INTERJECT Skie 1 EECorwinSkieBG1
==BDCorwiJ IF~InParty("Corwin") !InParty("Eldoth")~THEN@15
==Skie IF~InParty("Corwin") !InParty("Eldoth")~THEN@16
==BDCorwiJ IF~InParty("Corwin") !InParty("Eldoth")~THEN@17
==Skie IF~InParty("Corwin") !InParty("Eldoth")~THEN@18DO~EscapeAreaDestroy(30)~EXIT

CHAIN
IF WEIGHT #-3 ~InParty("Corwin")~THEN Entar EECorwinInEntar2
@19
==BDCorwiJ @20
==Entar@21
==BDCorwiJ @22
==Entar@23
=@24DO~EscapeArea()~EXIT

CHAIN
IF WEIGHT #-3 ~InParty("Corwin")~THEN Triado EECorwinInIT
@25
==BDCorwiJ@26
==Triado@27
==BDCorwiJ@28EXTERN Triado 3

I_C_T2 Bendal 2 EEBendalCorw2
==BDCorwiJ IF~InParty("Corwin")~THEN@29
==BDCorwiJ IF~InParty("Corwin")~THEN@30END

I_C_T2 Bendal 3 EEBendalCorw3
==BDCorwiJ IF~InParty("Corwin")~THEN@29
==BDCorwiJ IF~InParty("Corwin")~THEN@30END

I_C_T2 Bendal 4 EEBendalCorw4
==BDCorwiJ IF~InParty("Corwin")~THEN@29
==BDCorwiJ IF~InParty("Corwin")~THEN@30END

I_C_T Rielta 0 EECorRieltCandl
==Rielta IF~InParty("Corwin")~THEN@31
==BDCorwiJ IF~InParty("Corwin")~THEN@32
==Rielta IF~InParty("Corwin")~THEN@33
==BDCorwiJ IF~InParty("Corwin")~THEN@34
==Rielta IF~InParty("Corwin")~THEN@35END

ADD_TRANS_ACTION Shista BEGIN 0 END BEGIN 0 1 2 END
~SetGlobal("EECorwShista","%Candlekeep_Library_L4%",1)~

INTERJECT HUSAM2 0 EECorHussCha7
==Husam2 IF~InParty("Corwin")~THEN@36
==BDCorwiJ IF~InParty("Corwin")~THEN@37
==Husam2 IF~InParty("Corwin")~THEN@38DO~SetGlobal("HusamMove","GLOBAL",5) EscapeArea()~
==BDCorwiJ IF~InParty("Corwin")~THEN@39 
==BDCorwiJ IF~InParty("Corwin")~THEN@40
END
++@41 EXTERN BDCorwiJ EECorHussCha7b
++@42EXTERN BDCorwiJ EECorHussCha7c
++@43EXTERN BDCorwiJ EECorHussCha7b
++@44EXTERN BDCorwiJ EECorHussCha7b

CHAIN
IF~~THEN BDCorwiJ EECorHussCha7b
@45EXIT

CHAIN
IF~~THEN BDCorwiJ EECorHussCha7c
@46EXTERN BDCorwiJ EECorHussCha7b

I_C_T2 Sorrel 2 EESorrelCorw1
==BDCorwiJ IF~InParty("Corwin")~THEN@47
==Sorrel IF~InParty("Corwin")~THEN@48
==BDCorwiJ IF~InParty("Corwin")~THEN@49END

I_C_T2 Sorrel 3 EESorrelCorw2
==BDCorwiJ IF~InParty("Corwin")~THEN@47
==Sorrel IF~InParty("Corwin")~THEN@48
==BDCorwiJ IF~InParty("Corwin")~THEN@49END

I_C_T Harbor 9 EECorwRescEltanHarb
==BDCorwiJ IF~InParty("Corwin") ~THEN@50DO~SetGlobal("EERescEltan","Locals",3)~
==Harbor IF~InParty("Corwin") ~THEN@51END

INTERJECT Kent 0 EECorwNoDesert
==BDCorwiJ IF~InParty("Corwin") ~THEN@52
==Kent IF~InParty("Corwin") ~THEN@53
==BDCorwiJ IF~InParty("Corwin") ~THEN@54
==Kent IF~InParty("Corwin") ~THEN@55
==BDCorwiJ IF~InParty("Corwin") ~THEN@56
==Kent IF~InParty("Corwin") ~THEN@57
==%SKIE_JOINED% IF~InParty("Skie") ~THEN@58
==BDCorwiJ IF~InParty("Corwin") ~THEN@59
END
++@60+ 3
++@61 EXTERN Kent E4

CHAIN
IF~~THEN Kent E4
@62DO~EscapeArea()~EXIT

I_C_T Sarevo 6 EECorwSarevDukes
==BDCorwiJ IF~InParty("Corwin") ~THEN@63
==BDCorwiJ IF~InParty("Corwin") Global("EERescEltan","Locals",3)~THEN@64 
==BDCorwiJ IF~InParty("Corwin") ~THEN@65
==Sarevo IF~InParty("Corwin") ~THEN@66END