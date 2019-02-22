/// @description Used for initialization

// calculate time between demo's frames
numOfSubimages = sprite_get_number(myDemo);
framesPerSubframe = room_speed * demoCycleTime / numOfSubimages;
demoFrameCounter = 0;
currSubimage = 0;