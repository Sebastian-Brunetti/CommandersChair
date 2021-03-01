event_inherited();

draw_sprite(spr_powerLight, 0, playerInGridX, playerInGridY);

var xx = 0; repeat (gridSize)
{
	var yy = 0; repeat (gridSize)
	{
		var drawX = gridX + cellSize*xx;
		var drawY = gridY + cellSize*yy;
		var selectedSprite = ds_anomalyGrid [# xx, yy];
		draw_sprite(spr_anomaly, selectedSprite, drawX, drawY);
		yy++;
	}
	xx++;
}