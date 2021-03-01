var activeLight = true;
var i = 1; repeat (currentReactorPower)
{
	if (i <= availablePower) {activeLight = false;}
	else {activeLight = true;}
	
	var lightX = powerLightX + (lightSeparation*i);
	draw_sprite(spr_powerLight, activeLight, lightX, powerLightY);
	i++;
}

i = 0; repeat (maxShields)
{	
	if (i >= reservedPower) {activeLight = true;}
	else {activeLight = false;}
	
	var lightY = shieldLightY - (lightSeparation*i);
	draw_sprite(spr_powerLight, activeLight, shieldLightX, lightY);
	i++;
}

i = 0; repeat (3)
{
	var drawX = powerDisplayX + (displayBufferX * i);
	var drawY = powerDisplayY;
	var drawDisplay = 0;
	
	switch (i)
	{
		case 0: drawDisplay = powerToPiloting; break;
		case 1: drawDisplay = powerToArtillery; break;
		case 2: drawDisplay = powerToNavigation; break;
	}

	draw_sprite(spr_numbers, drawDisplay, drawX, drawY);
	
	i++;
}