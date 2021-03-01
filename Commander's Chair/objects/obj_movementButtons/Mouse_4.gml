image_xscale = 0.95;
image_yscale = 0.95;

if ((piloting.consolePower <= 0) or (!active)) {exit;}
else
{
	switch (buttonDirection)
	{
		case 0: piloting.playerMoveY -= 1; break;
		case 1: piloting.playerMoveX += 1; break;
		case 2: piloting.playerMoveY += 1; break;
		case 3: piloting.playerMoveX -= 1; break;
	}
}