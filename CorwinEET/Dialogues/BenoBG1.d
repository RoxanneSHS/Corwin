CHAIN
IF WEIGHT #-2~InParty("corwin") See("corwin") Global("EECorBeno","%WSewers%",3)~THEN BDFamari BG1
~Helm's steely eye... Schael? Is that you?~[BD52112]
DO~SetGlobal("EECorBeno","%WSewers%",4)~
==BDCorwiJ~...Beno.~[BD52113]
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
=~Just answer me one question, Schael. Just one question and I'll let you be on your way for now.~[BD52136]
=~How is... What is her name? Rohma, yes? How is my daughter?~[BD52137]
END
++@11+BG3
++@12+BG3

CHAIN
IF~~THEN BDFamari BG3
~I have a right to know about my child.~[BD52157]
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