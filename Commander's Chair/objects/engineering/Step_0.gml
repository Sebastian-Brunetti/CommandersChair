var activateConfirmButton = false;

if (availablePower != currentReactorPower)
{
	activateConfirmButton = true;
}
else
{
	activateConfirmButton = false;
}

with (obj_confirmButton)
{
	active = activateConfirmButton;
}

if (!(modifyPower == 0))
{
	switch (modifyConsole)
	{
		case 0: powerToPiloting += modifyPower; break; 
		case 1: powerToArtillery += modifyPower; break;
		case 2: powerToNavigation += modifyPower; break;
		case 3: reservedPower += modifyPower; currentReactorPower -= modifyPower; break;
	}
	
	availablePower -= modifyPower;
	modifyPower = 0;
}

if !(currentReactorPower == 0)
{
	instance_deactivate_object(obj_rechargeButton);
}
else
{
	instance_activate_object(obj_rechargeButton);
}

/*if (currentReactorPower == 0)
{
	instance_create_layer(rechargeButtonX, rechargeButtonY, "Consoles", obj_rechargeButton)
}