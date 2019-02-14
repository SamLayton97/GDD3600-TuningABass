/// @description Initializes in-game variables before game starts in proper

// define enumeration of strings which player can tune
enum BassStrings
{
	E,
	A,
	D,
	G
}

// initialize current string player is tuning
global.currString = BassStrings.E;

// randomize initial string tunings to values outside "in-tune" hot zone
randomize();
eInitTune = irandom_range(1, 100);
while (eInitTune >= 45 && eInitTune <= 55)
{
	eInitTune = irandom_range(1, 100);
}
aInitTune = irandom_range(1, 100);
while (aInitTune >= 45 && aInitTune <= 55)
{
	aInitTune = irandom_range(1, 100);
}
dInitTune = irandom_range(1, 100);
while(dInitTune >= 45 && dInitTune <= 55)
{
	dInitTune = irandom_range(1, 100);
}
gInitTune = irandom_range(1, 100);
while(gInitTune >= 45 && gInitTune <= 55)
{
	gInitTune = irandom_range(1, 100);
}

// randomize rotation offset for each tuning knob
randomize();
global.eKnobRotationOffset = irandom_range(0, 359);
global.aKnobRotationOffset = irandom_range(0, 359);
global.dKnobRotationOffset = irandom_range(0, 359);
global.gKnobRotationOffset = irandom_range(0, 359);

// set global 'current tuning' variables to randomized initial values
global.eTune = eInitTune;
global.aTune = aInitTune;
global.dTune = dInitTune;
global.gTune = gInitTune;