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

CHAIN
IF WEIGHT #-3 ~NumberOfTimesTalkedTo(0) InParty("Corwin")~THEN Housg3 EECorwinInEntar1
~You there! What are you doing in the estate of Entar Silvershield?~
== BDCorwiJ~I'm Captain Corwin of the Flaming Fist. We're here to ensure the Duke's safety.~
END
++~We're here because we have dealings to discuss with Entar Silvershield. My associates and I have come all the way from Waterdeep. Perhaps you could leave us to our business now? ~+ 5
++~We're members of the Flaming Fist. There has been some worry about the security of Entar's estate.~+ 5
IF~OR(2)Global("X#KagainCaravan","GLOBAL",5)PartyHasItem("X#SILSH")~THEN REPLY~We bring news for Lord and Lady Silvershield. We believe that we have found news of their son. Any chance this pin is one of yours?~+ 7


INTERJECT Skie 1 EECorwinSkieBG1
==BDCorwiJ IF~InParty("Corwin") !InParty("Eldoth")~THEN~Hello, Skie...~
==Skie IF~InParty("Corwin") !InParty("Eldoth")~THEN~Oh, Schael, my father never lets me out much. If I could just join the Flaming Fist, I could be free just like you.~
==BDCorwiJ IF~InParty("Corwin") !InParty("Eldoth")~THEN~Now...apart from the fact that your father probably never woould agree to it, there's something like discipline very high up in the Fist's rules, while free is...well, it's a dream anyway.~
==Skie IF~InParty("Corwin") !InParty("Eldoth")~THEN~Ah, you just wait and see, I tell you, I'll grab my chance if I see it.~DO~EscapeAreaDestroy(30)~EXIT

CHAIN
IF WEIGHT #-3 ~InParty("Corwin")~THEN Entar EECorwinInEntar2
~Who are you? What are you doing in my estate?~
==BDCorwiJ ~Greetings, Duke Entar.~
==Entar~Ah, the good Captain Corwin. In the current situation one cannot be cautious enough even inside the city.~
==BDCorwiJ ~The Flaming Fist is in control of the situation, be assured, Sir.~
==Entar~Hopefully. Even if the likes of you or Scar can't be everywhere at once.~
=~Well, I have business to attend, excuse me.~DO~EscapeArea()~EXIT

CHAIN
IF WEIGHT #-3 ~InParty("Corwin")~THEN Triado EECorwinInIT
~Out! Away! Fly while you can! There be madness here and I can stand it no longer!~
==BDCorwiJ~Madness in this much-lauded tower? That there be malice here, I have no doubt... but madness? Never.~
==Triado~Then clearly you know it not! Madness seethes here and amongst Sarevok's crazed acolytes it overflows. I'm a simple merchant after a pretty coin but I swear it isn't worth it to suffer this place so long.~
==BDCorwiJ~Sarevok...<CHARNAME>, we have guessed right all the time. It's time to see that this ends now. In the name of the Flaming Fist, man, speak!~EXTERN Triado 3
