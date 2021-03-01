cameraObj = view_camera[0];

rightButtonBuffer = sprite_get_width(spr_mainConsole)-sprite_get_width(spr_consoleButtons);
bottomButtonBuffer = sprite_get_height(spr_mainConsole)-sprite_get_height(spr_consoleButtons);
assignedBufferX = 0;
assignedBufferY = 0;
buttonX = 0;
buttonY = 0;

moveConsole = false;
moveConsoleX = 0;
moveConsoleY = 0;
lerpSpeed = 0.1;

init = false;