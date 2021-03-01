if (GameController.mapReady and init)  //initialize Piloting MapGrid
{
	ds_pilotingGrid = GameController.ds_mapGrid;
	init = false;
	show_debug_message("Initializing map");
}

if ((!(playerMoveX == 0) or !(playerMoveY == 0)) and consolePower > 0) //check if movement was requested and power is available
{
	var playerTargetX = playerPosX + playerMoveX; //calculate player target location
	var playerTargetY = playerPosY + playerMoveY;//calculate player target location
	
	if	( //If player is out of bounds, cancel move
		(playerTargetX > 9) or
		(playerTargetX < 0) or
		(playerTargetY > 9) or
		(playerTargetY < 0)
		)
	{
		playerMoveX = 0;
		playerMoveY = 0;
		exit;
	}
	else if	(GameController.ds_mapGrid [# playerTargetX, playerTargetY] == 2) //if player is moving into a mountain, cancel move
	{
		playerMoveX = 0;
		playerMoveY = 0;
		exit;
	}
	else //if movement is valid, update player position
	{
		if (GameController.ds_mapGrid [# playerTargetX, playerTargetY] == 1) //destroy city if stepped on
		{
			GameController.ds_mapGrid [# playerTargetX, playerTargetY] = 0;
			pilotingMessage = "City destroyed";
		}
		
		if (GameController.ds_mapGrid [# playerTargetX, playerTargetY] == 3) //destroy enemy if stepped on
		{
			GameController.ds_mapGrid [# playerTargetX, playerTargetY] = 0; 
			pilotingMessage = "Enemy destroyed";
		}
		playerPosX = playerTargetX; //update player position
		playerPosY = playerTargetY; //update player position
		playerMoveX = 0; //reset movement request
		playerMoveY = 0; //reset movement request
		consolePower -= 1; //reduce console power if movement was valid
	}
}

if (!(playerRotate == 0) and consolePower > 0)
{
	if (playerFacing == 3 and playerRotate == 1)
	{
		playerFacing = 0;
	}
	else if (playerFacing == 0 and playerRotate == -1)
	{
		playerFacing = 3;
	}
	else
	{
		playerFacing += playerRotate;
	}
	consolePower -= 1;
	playerRotate = 0;
}