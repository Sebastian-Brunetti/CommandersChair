/// @description check arc of fire

var playerFacing = piloting.playerFacing;
var playerX = piloting.playerPosX;
var playerY = piloting.playerPosY;

if (activateLeftWeapon)
{
	if (
		((playerFacing == 0) and (targetX <= playerX) and (targetY <= playerY)) or
		((playerFacing == 1) and (targetX >= playerX) and (targetY <= playerY)) or
		((playerFacing == 2) and (targetX >= playerX) and (targetY >= playerY)) or
		((playerFacing == 3) and (targetX <= playerX) and (targetY >= playerY))
		)
	{
		arcOfFire = true;
	}
	else
	{
		arcOfFire = false;
	}
}
else
{
	if (
		((playerFacing == 0) and (targetX >= playerX) and (targetY <= playerY)) or
		((playerFacing == 1) and (targetX >= playerX) and (targetY >= playerY)) or
		((playerFacing == 2) and (targetX <= playerX) and (targetY >= playerY)) or
		((playerFacing == 3) and (targetX <= playerX) and (targetY <= playerY))
		)
	{
		arcOfFire = true;
	}
	else
	{
		arcOfFire = false;
	}
}