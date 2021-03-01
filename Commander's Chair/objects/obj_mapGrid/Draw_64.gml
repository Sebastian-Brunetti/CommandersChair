//Draw textbox showing information on mouseover grid cell

if (mouseover)
{
	var addString = "";
	var objectCell = false;
	var playerX = piloting.playerPosX;
	var playerY = piloting.playerPosY;
	var showString = "";
	
	var drawX = mouse_x;
	var drawY = mouse_y;
	
	var positionString = string((mouse_x - posX0) div cellSize) + ", " + string((mouse_y - posY0) div cellSize);
	
	var showX = (mouse_x - posX0) div cellSize;
	var showY = (mouse_y - posY0) div cellSize;
	
	if ((playerX == showX) and (playerY == showY))
	{
		addString = "Player location";
		objectCell = true;
	}
	
	if (piloting.ds_pilotingGrid[# showX, showY] == 1)
	{
		addString = "City";
		objectCell = true;
	}
	
	if (piloting.ds_pilotingGrid[# showX, showY] == 2)
	{
		addString = "Mountain";
		objectCell = true;
	}
	
	if (objectCell)
	{
		showString = positionString + "\n" + addString;
	}
	else 
	{
		showString = positionString;
	}
	
	var textboxSizeX = string_width(showString) + textBuffer*2;
	var textboxSizeY = string_height(showString) + textBuffer*2;
	
	draw_sprite_stretched(spr_textBox, 0, drawX, drawY, textboxSizeX, textboxSizeY);
	draw_text(drawX+textBuffer, drawY+textBuffer,showString);
}