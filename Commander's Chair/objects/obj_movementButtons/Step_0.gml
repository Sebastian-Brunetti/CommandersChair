switch (buttonDirection)
{
	case 0: if (piloting.playerFacing == 2) {active = false;} else {active = true;} break;
	case 1: if (piloting.playerFacing == 3) {active = false;} else {active = true;} break;
	case 2: if (piloting.playerFacing == 0) {active = false;} else {active = true;} break;
	case 3: if (piloting.playerFacing == 1) {active = false;} else {active = true;} break;
}

if (active) {image_index = buttonDirection;}
else {image_index = inactiveSprite;}