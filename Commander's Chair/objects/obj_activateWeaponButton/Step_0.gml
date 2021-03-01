if (leftWeapon)
{
	if (artillery.leftWeaponCharge >= 3)
	{
		displaySprite = fireSpriteIndex;
	}
	else
	{
		displaySprite = reloadSpriteIndex;
	}
}
else
{
	if (artillery.rightWeaponCharge >= 3)
	{
		displaySprite = fireSpriteIndex;
	}
	else
	{
		displaySprite = reloadSpriteIndex;
	}
}

if (artillery.consolePower <= 0)	{displaySprite += 1;}

image_index = displaySprite;