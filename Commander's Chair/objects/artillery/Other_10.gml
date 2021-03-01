/// @description fire/reload cannon

if (activateLeftWeapon)
{
	if (leftWeaponCharge >= weaponReady)
	{
		if (arcOfFire)
		{
			if ((GameController.ds_mapGrid [# targetX, targetY] == 1) or (GameController.ds_mapGrid [# targetX, targetY] == 3))
			{
				if (GameController.ds_mapGrid [# targetX, targetY] == 3) {GameController.enemies -= 1;}
				GameController.ds_mapGrid [# targetX, targetY] = 0;
				obj_fireText.displayImage = 1;
			}
			else
			{
				obj_fireText.displayImage = 2;
			}
			leftWeaponCharge = 0;
		}
		else
		{
			obj_fireText.displayImage = 3;
			exit;
		}
	}
	else
	{
		leftWeaponCharge++;
	}
}
else
{
	if (rightWeaponCharge >= weaponReady)
	{
		if (arcOfFire)
		{
			if ((GameController.ds_mapGrid [# targetX, targetY] == 1) or (GameController.ds_mapGrid [# targetX, targetY] == 3))
			{
				GameController.ds_mapGrid [# targetX, targetY] = 0;
				obj_fireText.displayImage = 1;
			}
			else
			{
				obj_fireText.displayImage = 2;
			}
			rightWeaponCharge = 0;
		}
		else
		{
			obj_fireText.displayImage = 3;
			exit;
		}
	}
	else
	{
		rightWeaponCharge++;
	}
}

consolePower -= 1;