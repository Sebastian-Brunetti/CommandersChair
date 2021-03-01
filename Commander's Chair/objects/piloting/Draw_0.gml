event_inherited();

if (playerPosX < 0) {playerPosX = 9;}
if (playerPosX > 9) {playerPosX = 0;}
if (playerPosY < 0) {playerPosY = 9;}
if (playerPosY > 9) {playerPosY = 0;}

var targetPlayerPosX = gridX + (playerPosX * cellSize);
var targetPlayerPosY = gridY + (playerPosY * cellSize);

drawPlayerX = lerp(drawPlayerX, targetPlayerPosX, 0.3);
drawPlayerY = lerp(drawPlayerY, targetPlayerPosY, 0.3);

draw_sprite(spr_player, playerFacing ,drawPlayerX, drawPlayerY);

var xx = 0; repeat (numCellsX)
{
	var yy = 0; repeat (numCellsY)
	{
		if ((ds_pilotingGrid[# xx, yy] == 1) or (ds_pilotingGrid[# xx, yy] == 2))
		{
			var terrType = ds_pilotingGrid[# xx, yy];
			var drawTerrainX = gridX + (xx * cellSize);
			var drawTerrainY = gridY + (yy * cellSize);
			draw_sprite(spr_terrain, terrType, drawTerrainX, drawTerrainY);
		}
		yy++;
	}
	xx++;
}