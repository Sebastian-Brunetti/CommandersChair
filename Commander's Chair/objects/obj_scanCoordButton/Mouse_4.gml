image_xscale = 0.95;
image_yscale = 0.95;

var modCoordX = modifyCoordX;
var modValue = modifyValue;

with (obj_scanButton)
{
	if (modCoordX) {scanX += modValue;}
	else {scanY += modValue;}
}