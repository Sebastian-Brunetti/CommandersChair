randomize();

cellSize = 64;
numCellsX = 10;
numCellsY = 10;

ds_mapGrid = ds_grid_create(10,10);  //marcar 0 como libre, 1 como ciudad, 2 como montaña, 3 como enemigo
numberOfCities = 5;
numberOfMountains = 5;
numberOfEnemies = 5;
mapReady = false;

playerX = 0;
playerY = 0;
playerShields = 0
enemies = numberOfEnemies;

event_perform(ev_other, ev_user0);

testMode = false;