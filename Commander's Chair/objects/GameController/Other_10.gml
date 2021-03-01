/// @description Spawn terrain and enemies

var spawnX = 0;
var spawnY = 0;

//---SPAWN MOUNTAINS---//
var ii = 0; while (ii < numberOfMountains)			//Spawn 1 mountain for each numberOfMountains in the CREATE tab.
{
	spawnX = irandom_range(1, numCellsX-1);			//select a random X in terrain grid
	spawnY = irandom_range(1, numCellsY-1);			//select a random Y in terrain grid
	
	if (ds_mapGrid [# spawnX, spawnY] == 0)			//if selected coords are empty, spawn mountain, if they are not, reroll coords
	{
		ds_mapGrid [# spawnX, spawnY] = 2;			//set terrain code to 2, where 2 means "mountain"
		
		var rep = irandom_range(0,3);				//possible mountain cluster
		repeat (rep)								//repeat spawn process for each mountain in cluster
		{
			var spawnVert = choose(-1, 0, 1);		//randomize direction
			var spawnHoriz = choose(-1, 0, 1);		//randomize direction
			spawnX += spawnVert;
			spawnY += spawnHoriz;
			ds_mapGrid [# spawnX, spawnY] = 2;		//set terrain code to 2, where 2 means "mountain"
		}
		ii++										//only add to counter if mountain was spawned
	}
}
//----------------------

//---SPAWN CITIES---//
var i = 0; while (i < numberOfCities)				//repeat spawn process for cities, but without cluster chance
{
	spawnX = irandom_range(1, numCellsX-1);
	spawnY = irandom_range(1, numCellsY-1);
	
	if (ds_mapGrid [# spawnX, spawnY] == 0)
	{
		ds_mapGrid [# spawnX, spawnY] = 1;
		i++
	}
}
//----------------------

//---SPAWN ENEMIES---//
var iii = 0; while (iii < numberOfEnemies)
{
	spawnX = irandom_range(1, numCellsX-1);
	spawnY = irandom_range(1, numCellsY-1);
	
	if (ds_mapGrid [# spawnX, spawnY] == 0)
	{
		ds_mapGrid [# spawnX, spawnY] = 3;
		//show_debug_message("Enemy spawned at " + string(spawnX) + ", " + string(spawnY));		//debug message for testing, ignore
		iii++
	}
}
//----------------------

mapReady = true;