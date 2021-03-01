event_inherited();

init = true;

gridX = 320; //position X of map grid
gridY = 64; //position Y of map grid
cellSize = 64; //size of each map grid cell in pixels
numCellsX = 10; //number of X cells
numCellsY = 10; //number of Y cells

playerPosX = 0; //actual player X coord (in map)
playerPosY = 0; //actual player Y coord (in map)
playerFacing = 2; //actual player facing direction

/* Facing
   ------
0 = up
1 = right
2 = down
3 = left

**0 is up, then increase clockwise**

*/

playerMoveX = 0; //used to check X coord before moving
playerMoveY = 0; //used to check Y coord before moving
playerRotate = 0; //used as +1 and -1 to modify player facing

drawPlayerX = gridX + (playerPosX * cellSize); //used to draw player
drawPlayerY = gridY + (playerPosY * cellSize); //used to draw player

ds_pilotingGrid = ds_grid_create(10,10); //for drawing and mouseover reference

pilotingMessage = ""; //mouseover information. Text in the box