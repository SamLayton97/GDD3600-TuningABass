/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// update score and send player to see it
global.ProgressPercent = obj_jamProgressDisplay.jamPercentage;
room_goto(rm_ScoreRoom);