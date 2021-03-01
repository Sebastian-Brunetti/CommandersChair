var targetX = 0;
var targetY = 0;

switch consoleCode
{
	case 0:
	{
		targetX = pilotConsoleX;
		targetY = pilotConsoleY;
		break;
	}
	case 1:
	{
		targetX = sensorConsoleX;
		targetY = sensorConsoleY;
		break;
	}
	case 2:
	{
		targetX = gunsConsoleX;
		targetY = gunsConsoleY;
		break;
	}
	case 3:
	{
		targetX = engConsoleX;
		targetY = engConsoleY;
		break;
	}
}

with (obj_mainConsole)
{
	moveConsoleX = targetX;
	moveConsoleY = targetY;
	moveConsole = true;
}

with (obj_consoleButton)
{
	buttonX = targetX;
	buttonY = targetY;
}