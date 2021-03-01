if !init
{
	image_index = consoleCode;
	
	switch (consoleCode)
	{
		case 0: break;
		case 1: assignedBufferX = rightButtonBuffer; break;
		case 2: assignedBufferY = bottomButtonBuffer; break;
		case 3: assignedBufferX = rightButtonBuffer; assignedBufferY = bottomButtonBuffer; break;
	}
	init = true;
}

//x = buttonX + assignedBufferX;
//y = buttonY + assignedBufferY;

x = lerp(x, buttonX + assignedBufferX, 0.1);
y = lerp(y, buttonY + assignedBufferY, 0.1);