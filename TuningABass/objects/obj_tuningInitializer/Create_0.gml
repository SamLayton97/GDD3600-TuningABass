/// @description Initializes in-game variables before game starts in proper

// randomize initial string tunings to values outside "in-tune" hot zone
randomize();
eInitTune = irandom_range(0, 100);
while (eInitTune >= 45 && eInitTune <= 55)
{
	eInitTune = irandom_range(0, 100);
}
aInitTune = irandom_range(0, 100);
while (aInitTune >= 45 && aInitTune <= 55)
{
	aInitTune = irandom_range(0, 100);
}
dInitTune = irandom_range(0, 100);
while(dInitTune >= 45 && dInitTune <= 55)
{
	dInitTune = irandom_range(0, 100);
}
gInitTune = irandom_range(0, 100);
while(gInitTune >= 45 && gInitTune <= 55)
{
	gInitTune = irandom_range(0, 100);
}

// set global 'current tuning' variables to randomized initial values
global.eTune = eInitTune;
global.aTune = aInitTune;
global.dTune = dInitTune;
global.gTune = gInitTune;

show_debug_message(string(global.eTune) + " " + string(global.aTune) + " " + string(global.dTune) + " " + string(global.gTune))