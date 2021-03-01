/// @description Pulse scan around the player
if (navigation.consolePower <= 0) {exit;}
else
{
	playerPosX = piloting.playerPosX;
	playerPosY = piloting.playerPosY;
	
	var xx = 0; repeat (gridSize)
	{
		var pulseX = playerPosX - pulseRange + xx;
		
		var yy = 0; repeat (gridSize)
		{
			var pulseY = playerPosY - pulseRange + yy;
			
			if ((pulseX < 0) or (pulseY < 0))
			{
				ds_anomalyGrid [# xx, yy] = 2;
			}
			else if (GameController.ds_mapGrid [# pulseX, pulseY] != 0)
			{
				ds_anomalyGrid [# xx, yy] = 1;
				if (ds_anomalyGrid [# xx, yy]) {show_debug_message("Anomaly detected in coords: " + string(pulseX) + ", " + string(pulseY));}
			}
			else
			{
				ds_anomalyGrid [# xx, yy] = 0;
			}
			yy++;
		}
		xx++;
	}
	consolePower -= 1;
}