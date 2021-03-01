if  (
	(leftWeapon and (lightNumber <= artillery.leftWeaponCharge)) or 
	(!leftWeapon and (lightNumber <= artillery.rightWeaponCharge))
	)
{
	image_index = 0;
}
else
{
	image_index = 1;
}