CHAIN
IF~Global("EEOwnHouse","Locals",1)~THEN BDCorwiJ Home1
@0
DO~SetGlobal("EEOwnHouse","Locals",2)~
=@1
END
++@2+ Home3
++@3+ Home2
++@4 + Home3

CHAIN
IF~~THEN BDCorwiJ Home2
@5EXIT

CHAIN
IF~~THEN BDCorwiJ Home3
@6EXIT

CHAIN
IF WEIGHT #-1~InParty("Corwin")~THEN Taxek Bigshit
@7
==BDCorwiJ@8
==Taxek@9
==BDCorwiJ@10
==Taxek@11DO~GiveGoldForce(210) ActionOverride("MICHAEL",EscapeArea()) EscapeArea()~EXIT

CHAIN
IF~Global("EEMetRohma","Global",2)~THEN BDCorwiJ Home10
@12
DO~SetGlobal("EEMetRohma","Global",3)~
==BDAudam@13
==BDRohma IF~Gender(Player1,MALE)~THEN@14
==BDRohma IF~Gender(Player1,FEMALE)~THEN@15
END
++@16EXTERN BDRohma Home11
++@17EXTERN BDCorwiJ Home13

CHAIN
IF~~THEN BDRohma Home11
@18
END
++@19EXTERN BDCorwiJ Home12
++@20EXTERN BDRohma Home14

CHAIN
IF~~THEN BDCorwiJ Home13
@21
==BDRohma@22
END
++@23EXTERN BDCorwiJ Home12

CHAIN
IF~~THEN BDRohma Home14
@24
END
++@25EXTERN BDCorwiJ Home12

CHAIN
IF~~THEN BDCorwiJ Home12
@26
==BDRohma@27
==BDCorwiJ@28
==BDRohma@29
==BDAudam@30
==BDRohma@31 
END
++@32EXTERN BDCorwiJ Home15
++@33EXTERN BDCorwiJ Home15

CHAIN
IF~~THEN BDCorwiJ Home15
@34
==BDRohma@35
==BDCorwiJ@36
=@37
==BDRohma@38DO~EscapeAreaDestroy(25)~
==BDAudam@39DO~EscapeAreaDestroy(25)~EXIT

CHAIN
IF~OR(2) Global("EECorDpl","%SWBaldursGate_MerchantLeague_L2%",1) Global("EECorDpl","%SWBaldursGate_SevenSuns_Cellar%",1)~THEN BDCorwiJ Sardpl1
@40
DO~SetGlobal("EECorDpl","%SWBaldursGate_SevenSuns_Cellar%",2) SetGlobal("EECorDpl","%SWBaldursGate_MerchantLeague_L2%",2)~
END
++@41+ Sardpl2
++@42+ Sardpl2
IF~InParty("CVSandr")~THEN REPLY@43+ Sardpl2
++@44EXIT

CHAIN
IF~~THEN BDCorwiJ Sardpl2
@45
END
++@46+ Sardpl3
++@47+ Sardpl3

CHAIN
IF~~THEN BDCorwiJ Sardpl3
@48
=@49
END
++@50+ Sardpl4
++@51+ Sardpl5
++@52+ Sardpl6

CHAIN
IF~~THEN BDCorwiJ Sardpl4
@53
=@54
END
++@55EXIT
++@56EXIT
++@57EXIT

CHAIN
IF~~THEN BDCorwiJ Sardpl5
@58
END
++@50+ Sardpl4

CHAIN
IF~~THEN BDCorwiJ Sardpl6
@59
END
++@50+ Sardpl4

CHAIN
IF~Global("EECorwoodland","LOCALS",1)~THEN BDCorwiJ woodl1
@60
DO~SetGlobal("EECorwoodland","LOCALS",2)~
END
++@61+ woodl2
++@62+ woodl2

CHAIN
IF~~THEN BDCorwiJ  woodl2
@63
END
++@64+ woodl3
++@65+ woodl3
++@66+ woodl3

CHAIN
IF~~THEN BDCorwiJ  woodl3
@67EXIT

CHAIN
IF~Global("EECorFriend","Locals",1)~THEN BDCorwiJ Howcome1
@68
DO~SetGlobal("EECorFriend","Locals",2)~
=@69
END
++@70+ Howcome2
++@71+ Howcome3
IF~CheckStatGT(Player1,11,INT)~THEN REPLY@72+ Howcome3

CHAIN
IF~~THEN BDCorwiJ Howcome2
@73DO~RealSetGlobalTimer("EECorBanT","Locals",2800)~
==Bimoen IF~InParty("Imoen2")~THEN@74
==BJAhei IF~InParty("Jaheira")~THEN@75
EXIT

CHAIN
IF~~THEN BDCorwiJ Howcome3
@76
END
++@77DO~RealSetGlobalTimer("EECorBanT","Locals",2800)~+ Howcome4

CHAIN
IF~~THEN BDCorwiJ Howcome4
@78EXIT

CHAIN
IF~Global("EECorFriend","Locals",4)~THEN BDCorwiJ Friend10
@79
DO~SetGlobal("EECorFriend","Locals",5) ~
END
++@80+ Friend11
++@81+ Friend11

CHAIN
IF~~THEN BDCorwiJ Friend11
@82
=@83
END
++@84+ Friend12
++@85+ Friend12

CHAIN
IF~~THEN BDCorwiJ Friend12
@86
=@87
=@88DO~RealSetGlobalTimer("EECorBanT","Locals",3600)~EXIT

CHAIN
IF~Global("EECorFriend","Locals",6)~THEN BDCorwiJ Friend20
@89
DO~SetGlobal("EECorFriend","Locals",7)RealSetGlobalTimer("EECorBanT","Locals",3700)~
END
++@90+ Friend21
++@91DO~SetGlobal("EECorFriend","Locals",77)~+ Friend22
++@92+ Friend21

CHAIN
IF~~THEN BDCorwiJ Friend22
@93EXIT

CHAIN
IF~~THEN BDCorwiJ Friend21
@94
=@95
END
++@96+ Friend23
++@97DO~SetGlobal("EECorFriend","Locals",77)~+ Friend22
++@98+ Friend23

CHAIN
IF~~THEN BDCorwiJ Friend23
@99
=@100EXIT

CHAIN
IF~Global("EECorBeno","%WSewers%",1)~THEN BDCorwiJ Beno1
@101
DO~SetGlobal("EECorBeno","%WSewers%",2)~
=@102
END
++@103 + Beno2
++@104+ Beno2
++@105+ Beno2

CHAIN
IF~~THEN BDCorwiJ Beno2
@106
DO~SetGlobal("bd_famari_talk","locals",1)~
=@107
END
++@108+ Beno3
++@109+ Beno4

CHAIN
IF~~THEN BDCorwiJ Beno3
@110
END
++@111+ Beno5
++@112+ Beno5

CHAIN
IF~~THEN BDCorwiJ Beno4
@113
=@114
END
++@108+ Beno3
++@115+ Beno7

CHAIN
IF~~THEN BDCorwiJ Beno5
@116
=@117
=@118
END
++@119+ Beno6
++@120+ Beno4

CHAIN
IF~~THEN BDCorwiJ Beno6
@121 EXIT

CHAIN
IF~~THEN BDCorwiJ Beno7
@122
END
++@123+ Beno5

APPEND BDCorwiJ
IF~ Global("bd_drinks_corwin","global",1)~ THEN BEGIN nw124 
  SAY @124 
IF ~~ THEN REPLY @125 DO ~SetGlobal("bd_drinks_corwin","global",2)~ GOTO nw125
IF ~~ THEN REPLY @126 DO ~SetGlobal("bd_drinks_corwin","global",2)~ GOTO nw133
IF ~~ THEN REPLY @127 DO ~SetGlobal("bd_drinks_corwin","global",2)
~ GOTO nw137
IF ~~ THEN REPLY @128 DO ~SetGlobal("bd_drinks_corwin","global",2)~ GOTO nw142
END

IF ~~ THEN BEGIN nw125 
SAY @129
IF ~~ THEN REPLY @130 GOTO nw128
IF ~~ THEN REPLY @131 GOTO nw133
IF ~~ THEN REPLY @132 GOTO nw126
END

IF ~~ THEN BEGIN nw126 
SAY @133 
IF ~~ THEN REPLY @134 GOTO nw133
IF ~~ THEN REPLY @135  GOTO nw128
IF ~~ THEN REPLY @136GOTO nw127
IF ~~ THEN REPLY@137 GOTO nw132
END

IF ~~ THEN BEGIN nw127 
SAY @138 
IF ~~ THEN REPLY @139 GOTO nw133
IF ~~ THEN REPLY @140 GOTO nw128
IF ~~ THEN REPLY @141 GOTO nw132
END

IF ~~ THEN BEGIN nw128 
SAY @142 
IF ~~ THEN REPLY @143 GOTO nw133
IF ~~ THEN REPLY@144 GOTO nw129
IF ~~ THEN REPLY @145GOTO nw132
END

IF ~~ THEN BEGIN nw129 
SAY @146 
IF ~~ THEN REPLY @147 GOTO nw130
IF ~~ THEN REPLY @148 GOTO nw131
IF ~~ THEN REPLY @149 GOTO nw133
IF ~~ THEN REPLY @150 GOTO nw132
END

IF ~~ THEN BEGIN nw130 
SAY @151
IF ~~ THEN REPLY @152 GOTO nw133
IF ~~ THEN REPLY @153 GOTO nw133
IF ~~ THEN REPLY @154 GOTO nw132
END

IF ~~ THEN BEGIN nw131
SAY @155
IF ~~ THEN DO ~AddJournalEntry(@1004,INFO) Face(NE)~ EXIT
END

IF ~~ THEN BEGIN nw132 
SAY @156 
IF ~~ THEN DO ~AddJournalEntry(@1004,INFO) Face(NE)~ EXIT
END

IF ~~ THEN BEGIN nw134 
SAY @157
IF ~~ THEN REPLY@158 GOTO nw132
IF ~~ THEN REPLY@159 GOTO nw128
IF ~~ THEN REPLY @160 GOTO nw132
END

IF ~~ THEN BEGIN nw135 
SAY @161
=@162
IF~~THEN GOTO nw134
END

IF ~~ THEN BEGIN nw137
SAY @163 
IF ~~ THEN REPLY @164 GOTO nw138
IF ~~ THEN REPLY @165 GOTO nw133
IF ~~ THEN REPLY @166 GOTO nw128
IF ~~ THEN REPLY @167 GOTO nw132
END

IF ~~ THEN BEGIN nw138
SAY @168 
IF ~~ THEN REPLY @169 GOTO nw140
IF ~~ THEN REPLY @170 GOTO nw139
IF ~~ THEN REPLY @171GOTO nw141
END

IF ~~ THEN BEGIN nw139 
SAY @172 
IF ~~ THEN GOTO nw141
END

IF ~~ THEN BEGIN nw140 
SAY @173 
IF ~~ THEN GOTO nw141
END

IF ~~ THEN BEGIN nw141 
SAY @174
IF ~~ THEN REPLY @175 GOTO nw133
IF ~~ THEN REPLY @176 GOTO nw128
IF ~~ THEN REPLY @177 GOTO nw132
END

IF ~~ THEN BEGIN nw142 
SAY @178 
IF ~~ THEN DO ~AddJournalEntry(@1004,INFO)Face(10)~ EXIT
END

IF~Global("EECorAnm","%Nashkel%",1)~THEN BEGIN InAmn1
SAY@179
IF~~THEN REPLY@180+ InAmn2
IF~~THEN REPLY@181+ InAmn2
IF~~THEN REPLY@182+ InAmn3
END

IF~~THEN BEGIN InAmn2
SAY@183
IF~~THEN DO~SetGlobal("EECorAnm","%Nashkel%",2)~EXIT
END

IF~~THEN BEGIN InAmn3
SAY@184
IF~~THEN GOTO InAmn2
END
END

CHAIN
IF ~~ THEN BDCorwiJ nw133 
@185 
==%SHARTEEL_JOINED% IF~InParty("SHARTEEL")~ THEN@186
==BDCorwiJ IF~InParty("SHARTEEL")~ THEN@187
==%SHARTEEL_JOINED% IF~InParty("SHARTEEL")~ THEN@188
==BDCorwiJ IF~InParty("SHARTEEL")~ THEN@189
END
IF ~~ THEN REPLY@190GOTO nw134
IF ~~ THEN REPLY@191GOTO nw134
IF ~CheckStatGT(Player1,18,INT)~ THEN REPLY@192 GOTO nw135

CHAIN
IF~Global("EECorUnderc","%BaldursGate_Undercellars%",1)~THEN BDCorwiJ Undercel1
@193
DO~SetGlobal("EECorUnderc","%BaldursGate_Undercellars%",2)~
END
++@194+ Undercel2
++@195+ Undercel2

CHAIN
IF~~THEN BDCorwiJ Undercel2
@196
END
++@197+ Undercel3
++@198+ Undercel3

CHAIN
IF~~THEN BDCorwiJ Undercel3
@199EXIT

CHAIN
IF~Global("EECorThNotYet","%BaldursGateDocks%",1)~THEN BDCorwiJ ThNotYet1
@200
DO~SetGlobal("EECorThNotYet","%BaldursGateDocks%",2)~
END
++@201+ ThNotYet2
++@202+ ThNotYet2
++@203+ ThNotYet2

CHAIN
IF~~THEN BDCorwiJ ThNotYet2
@204
=@205
=@206
END
++@207+ ThNotYet3
++@208+ ThNotYet3
++@209+ ThNotYet4
++@210+ ThNotYet3

CHAIN
IF~~THEN BDCorwiJ ThNotYet3
@211EXIT

CHAIN
IF~~THEN BDCorwiJ ThNotYet4
@212
DO~SetGlobal("EECorwinBG1","Global",51) EscapeAreaDestroy(50)~EXIT

CHAIN
IF~Global("EECorMoreTaskSC","%SWBaldursGate%",1)~THEN BDCorwiJ CorMoreTaskSC1
@213
DO~SetGlobal("EECorMoreTaskSC","%SWBaldursGate%",2)~
END
++@214+ CorMoreTaskSC2
++@215+ CorMoreTaskSC3
++@216+ CorMoreTaskSC4

CHAIN
IF~~THEN BDCorwiJ CorMoreTaskSC2
@217EXTERN BDCorwiJ CorMoreTaskSC5

CHAIN
IF~~THEN BDCorwiJ CorMoreTaskSC3
@218EXTERN BDCorwiJ CorMoreTaskSC5

CHAIN
IF~~THEN BDCorwiJ CorMoreTaskSC4
@219EXTERN BDCorwiJ CorMoreTaskSC5

CHAIN
IF~~THEN BDCorwiJ CorMoreTaskSC5
@220EXIT

CHAIN
IF~Global("EECorIrThr","LOCALS",1)~THEN BDCorwiJ CorInITFirst1
@221
DO~SetGlobal("EECorIrThr","LOCALS",2)~
END
++@222+ CorInITFirst2
++@223 + CorInITFirst2
++@224+ CorInITFirst3

CHAIN
IF~~THEN BDCorwiJ CorInITFirst2
@225
=@226
END
++@224+ CorInITFirst3
++@227+ CorInITFirst3

CHAIN
IF~~THEN BDCorwiJ CorInITFirst3
@228
END
++@229+ CorInITFirst4

CHAIN
IF~~THEN BDCorwiJ CorInITFirst4
@230EXIT

CHAIN
IF~Global("EEBendalCorw2","Global",2)~THEN BDCorwiJ CorInShista1
@231
DO~SetGlobal("EEBendalCorw2","Global",3) SetGlobal("EEBendalCorw3","Global",3)SetGlobal("EEBendalCorw4","Global",3)~
END
++@232+ CorInShista2
++@233+ CorInShista2

CHAIN
IF~~THEN BDCorwiJ CorInShista2
@234EXIT

CHAIN
IF~Global("EECorwPrison","%SWBaldursGate_FlamingFistHQ_L1%",1)~THEN BDCorwiJ EECorwPrison1
@235
=@236
END
++@237+ EECorwPrison2
++@238+ EECorwPrison3

CHAIN
IF~~THEN BDCorwiJ EECorwPrison2
@239EXTERN BDCorwiJ EECorwPrison4 

CHAIN
IF~~THEN BDCorwiJ EECorwPrison3
@240EXTERN BDCorwiJ EECorwPrison4

CHAIN
IF~~THEN BDCorwiJ EECorwPrison4
@241DO~SetGlobal("EECorwPrison","%SWBaldursGate_FlamingFistHQ_L1%",2) StartCutSceneMode() Wait(2) StartCutScene("Capcut02")~EXIT

CHAIN
IF~Global("EERescEltan","Locals",1)~THEN BDCorwiJ CorEltanResc1
@242
DO~SetGlobal("EERescEltan","Locals",2)~
=@243
=@244
=@245EXIT