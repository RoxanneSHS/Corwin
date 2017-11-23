CHAIN
IF WEIGHT #-2~InParty("corwin") See("corwin") Global("EECorBeno","bg0224",3)~THEN BDFamari BG1
~Helm's steely eye... Schael? Is that you?~[BD52112]
DO~SetGlobal("EECorBeno","bg0224",4)~
==BDCorwiJ~...Beno.~[BD52113]
==BDFamari~I'm surprised, Schael. You were always so loyal to the Flaming Fist. What makes you turn up here at the entance of Undercellars. The Fist don't operate down here, or are you fighting your own war of justice by now?~
==BDCorwiJ~I accompany <CHARNAME> in <PRO_HISHER> tasks which are none of your business.~
==BDFamari~<CHARNAME>? This is...nice. The very one who operates against the Iron Throne.~
END
++~And you might be working for that organisation, I pressume?~+ BG2
++~Corwin, I let you deal with him, you know him better, I suppose.~+ BG2
++~Are you just another of those unlucky bounty hunters that cross my path? You see me still standing, they*re dead - care to join them?~+ BG2

CHAIN
IF~~THEN BDFamari BG2
~Good. That's good to know. Well, I'll not keep you any longer. You're no threat to us. This will all be over soon, one way or another. For you and for...Schael.~
=~Just answer me one question, Schael. Just one question and I'll let you be on your way for now.~[BD52136]
=~How is... What is her name? Rohma, yes? How is my daughter?~[BD52137]
END
++~As I understand it, you've never had anything to do with Rohma. Why do you care now?~+BG3
++~Mind your step, Famari. You're heading into dangerous territory.~+BG3

CHAIN
IF~~THEN BDFamari BG3
~I have a right to know about my child.~[BD52157]
==BDCorwiJ~You abandoned me and your daughter years ago. She owes you nothing. You'll never come near to her, never.~
==BDFamari~That is low, Schael, even for you. My daughter's gone her whole life without a father. Pretty soon we'll see how she makes do without a mother...~
=~<CHARNAME>, she puts up a great front. Strait-laced Schael, daughter of the ever-stoic Audamar. Bet she didn't tell you about her younger days, running around with all types, getting them into trouble. Take care. She'll ruin you like she did me.~DO~ActionOverride("bdfamar1",Enemy()) ActionOverride("bdfamar2",Enemy()) EscapeAreaObject("Door0112")~EXIT

CHAIN
IF ~Global("EECorBeno","bg0224",5)~THEN BDCorwiJ BG4
~So you know him now, (sigh). I killed him twice before to keep him off Rohma. He was ressurected by foul priests each time.~
DO~SetGlobal("EECorBeno","bg0224",6)~
END
++~You may get another chance soon if he's in league with our opponents.~+ BG5
++~We already suspect that this Sarevok has such priests in his service.~ + BG5

CHAIN
IF ~~THEN BDCorwiJ BG5
~You heard his words. The only way I can feel save for my daughter is to end all this - and him.~EXIT