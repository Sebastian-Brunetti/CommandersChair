if (moveConsole)
{
	camera_set_view_pos(cameraObj, lerp(x, moveConsoleX, lerpSpeed), lerp(y, moveConsoleY, lerpSpeed));
	x = lerp(x, moveConsoleX, lerpSpeed);
	y = lerp(y, moveConsoleY, lerpSpeed);
}

if ((x == moveConsoleX) and (y == moveConsoleY))
{
	moveConsole = false;
}