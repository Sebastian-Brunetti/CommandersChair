if init //assign sprites according to each button's Creation Code
{
	if increase {activeSprite = 0;}
	else {activeSprite = 2;}
	inactiveSprite = activeSprite+1;
	
	init = false;
}

if !active {image_index = inactiveSprite;}
else {image_index = activeSprite;}

#region Activate and deactivate buttons
switch (modifyConsoleNumber) //check if a console has power waiting to be assigned
{
	case 0: if (engineering.powerToPiloting == 0) {consoleHasPower = false;} else {consoleHasPower = true;} break;
	case 1: if (engineering.powerToArtillery == 0) {consoleHasPower = false;} else {consoleHasPower = true;} break;
	case 2: if (engineering.powerToNavigation == 0) {consoleHasPower = false;} else {consoleHasPower = true;} break;
	case 3: if (engineering.reservedPower == 0) {consoleHasPower = false;} else {consoleHasPower = true;} break;
}

if !(modifyConsoleNumber == 3)
{
	if (
		(increase and engineering.availablePower > 0) //if power is available, activate "increase" button
		or
		(!increase and consoleHasPower) //if console has power pending to be assigned, activate "decrease" button
		)
	{
		active = true;
	}
	else
	{
		active = false;
	}
}
else
{
	if (
		(increase and engineering.availablePower > 0 and engineering.reservedPower < 3)
		or
		(!increase and consoleHasPower and engineering.reservedPower > 0)
		)
	{
		active = true;
	}
	else
	{
		active = false;
	}
}


#endregion