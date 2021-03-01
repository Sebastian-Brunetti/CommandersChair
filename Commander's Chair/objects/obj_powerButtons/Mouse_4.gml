image_xscale = 0.95;
image_yscale = 0.95;

if !active {exit;}

else
{
	var modifyPower = 0;
	if increase
	{
		modifyPower = 1;
	}
	else
	{
		modifyPower = -1;
	}
	
	engineering.modifyPower = modifyPower;
	engineering.modifyConsole = modifyConsoleNumber;
}