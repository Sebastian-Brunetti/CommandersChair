image_xscale = 0.95;
image_yscale = 0.95;

if (navigation.consolePower <= 0) {exit;}

else
{
	var coordX = 0;
	var coordY = 0;

	with (obj_scanCoord)
	{
		if (scanCoordX) {coordX = coordValue;}
		else {coordY = coordValue}
	}
	
	scanX = coordX;
	scanY = coordY;
	
	if (GameController.ds_mapGrid[# coordX, coordY] == 1)
	{
		scanResultMessage = "City detected";
	}
	else if (GameController.ds_mapGrid[# coordX, coordY] == 2)
	{
		scanResultMessage = "Mountain detected";
	}
	else if (GameController.ds_mapGrid[# coordX, coordY] == 3)
	{
		scanResultMessage = "Enemy detected";
	}
	else
	{
		scanResultMessage = "No signals detected";
	}
	
	show_debug_message("Scanning: " + string(coordX) + ", " + string(coordY));
	navigation.consolePower -= 1;
	
	activeScan = true;
}