event_inherited();

playerPosX = 0; //player location, updated when required by pulse
playerPosY = 0; //player location, updated when required by pulse

gridX = 352; //location of NavGrid
gridY = 832; //location of NavGrid
cellSize = 64; //cell size of NavGrid
pulseRange = 4; //detection radius around the player
gridSize = 1 + (pulseRange*2); //full grid size, depending on pulse range
playerInGridX = gridX + (pulseRange*cellSize); //location of player in the grid (for drawing)
playerInGridY = gridY + (pulseRange*cellSize); //location of player in the grid (for drawing)

ds_anomalyGrid = ds_grid_create(gridSize,gridSize);

var xx = 0; repeat (gridSize)
{
	var yy = 0; repeat (gridSize)
	{
		ds_anomalyGrid [# xx, yy] = false;
	}
}