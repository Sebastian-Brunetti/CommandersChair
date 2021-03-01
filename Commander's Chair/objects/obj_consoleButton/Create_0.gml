consoleCode = -1; //modified by each button's Creation Code

consoleHeight = sprite_get_height(spr_mainConsole);
consoleWidth = sprite_get_width(spr_mainConsole);
buttonHeight = sprite_get_height(spr_consoleButtons);
buttonWidth = sprite_get_width(spr_consoleButtons);

rightButtonBuffer = consoleWidth-buttonWidth;
bottomButtonBuffer = consoleHeight-buttonHeight;
assignedBufferX = 0;
assignedBufferY = 0;
buttonX = 0;
buttonY = 0;

pilotConsoleX = 0;
pilotConsoleY = 0;
sensorConsoleX = 1024;
sensorConsoleY = 0;
gunsConsoleX = 0;
gunsConsoleY = 768;
engConsoleX = 1024;
engConsoleY = 768;

init = false;