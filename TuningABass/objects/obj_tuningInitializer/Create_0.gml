/// @description Initializes in-game variables before game starts in proper

// Initialize game constants
global.screenWidth = 1024;
global.screenHeight = 768;

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
while (eInitTune >= 35 && eInitTune <= 65)
{
	eInitTune = irandom_range(1, 100);
}
aInitTune = irandom_range(1, 100);
while (aInitTune >= 35 && aInitTune <= 65)
{
	aInitTune = irandom_range(1, 100);
}
dInitTune = irandom_range(1, 100);
while(dInitTune >= 35 && dInitTune <= 65)
{
	dInitTune = irandom_range(1, 100);
}
gInitTune = irandom_range(1, 100);
while(gInitTune >= 35 && gInitTune <= 65)
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

// initialize global progress percent to 0
global.ProgressPercent = 0;

// initialize global tutorial progress variables
global.tutorialCompleted = false;
