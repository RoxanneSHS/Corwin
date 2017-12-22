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

