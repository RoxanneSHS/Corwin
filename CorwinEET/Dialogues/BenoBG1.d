CHAIN
IF WEIGHT #-2~InParty("corwin") See("corwin") Global("EECorBeno","%WSewers%",3)~THEN BDFamari BG1
@0
DO~SetGlobal("EECorBeno","%WSewers%",4)~
==BDCorwiJ@1
==BDFamari@2
==BDCorwiJ@3
==BDFamari@4
END
++@5+ BG2
++@6+ BG2
++@7+ BG2

CHAIN
IF~~THEN BDFamari BG2
@8
=@9
=@10
END
++@11+BG3
++@12+BG3

CHAIN
IF~~THEN BDFamari BG3
@13
==BDCorwiJ@14
==BDFamari@15
=@16DO~ActionOverride("bdfamar1",Enemy()) ActionOverride("bdfamar2",Enemy()) EscapeAreaObject("Door0112")~EXIT

CHAIN
IF ~Global("EECorBeno","%WSewers%",5)~THEN BDCorwiJ BG4
@17
DO~SetGlobal("EECorBeno","%WSewers%",6)~
END
++@18+ BG5
++@19 + BG5

CHAIN
IF ~~THEN BDCorwiJ BG5
@20EXIT