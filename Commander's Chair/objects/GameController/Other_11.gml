/// @description Enemy turn: move + attack

playerX = piloting.playerPosX; //player's X coordinate, taken from the Piloting console
playerY = piloting.playerPosY; //player's Y coordinate, taken from the Piloting console

if (enemies <= 0) {room_goto(rm_win);} //check victory condition
else
{
	var xx = 0; repeat(numCellsX) //check grid until enemy found
	{
		var yy = 0; repeat(numCellsY) //check grid until enemy found
		{

			if (ds_mapGrid [# xx, yy] == 3) //enemy in grid
			{
				
				if ((abs(xx - playerX) <= 2) and (abs(yy - playerY) <= 2)) //check if player is 2 squares away from player
				{
					//if enemy is close to player, fire
					#region Enemy attack
					if (playerShields > 0)
					{
						//if player is shielded, reduce shield
						playerShields -= 1;
						show_debug_message("Enemy hit shields");
					}
					else
					{
						//if player has no shields, damage reactor
						with (engineering)
						{
							maxReactorPower -= 1;
							show_debug_message("Reactor taking damage");
							if (maxReactorPower <= 3)
							{
								//if the reactor has been heavily damaged, there's a chance of it exploding.
								//this is the lose condition.
								var explosionChance = maxReactorPower * 34;
								var explode = irandom(99);
								if (explode >= explosionChance) {room_goto(rm_lose);}
							}
						}
					}
					#endregion
				}
				else
				{
					//if enemy is far from player, move closer
					#region Enemy movement
					var moveX = xx;
					var moveY = yy;
				
					if (moveX > playerX)		{moveX -= 1;} //move closer to player unless already aligned
					else if (moveX < playerX) 	{moveX += 1;}
				
					if (moveY > playerY)		{moveY -= 1;} //move closer to player unless already aligned
					else if (moveY < playerY)	{moveY += 1;}
				
					ds_mapGrid[# xx, yy] = 0; //remove the enemy from current location
				
					if ((ds_mapGrid[# moveX, moveY] != 2) and (ds_mapGrid[# moveX, moveY] != 3))
					{
						//move enemy unless it's a mountain or another enemy
						ds_mapGrid[# moveX, moveY] = 3;
					}
					else if ((ds_mapGrid[# moveX, yy] != 2) and (ds_mapGrid[# moveX, yy] != 3))
					{
						//move enemy unless it's a mountain or another enemy
						ds_mapGrid[# moveX, yy] = 3;
					}
					else if ((ds_mapGrid[# xx, moveY] != 2) and (ds_mapGrid[# xx, moveY] != 3))
					{
						//move enemy unless it's a mountain or another enemy
						ds_mapGrid[# xx, moveY] = 3;
					}
					else {ds_mapGrid[# xx, yy] = 3;} //return enemy to its location if it cannot move
				#endregion
				}
				
			}
			yy++
		}
		xx++
	}
}

#region End of turn cleanup
with (consolePARENT)
{
	consolePower = 0;
}

with (engineering)
{
	currentReactorPower = maxReactorPower;
	availablePower = currentReactorPower;
}

with (obj_fireText)
{
	displayImage = 0;
}

with (navigation)
{
	var xx = 0; repeat (gridSize)
	{		
		var yy = 0; repeat (gridSize)
		{
			ds_anomalyGrid [# xx, yy] = 0;
			yy++;
		}
		xx++;
	}
}
#endregion