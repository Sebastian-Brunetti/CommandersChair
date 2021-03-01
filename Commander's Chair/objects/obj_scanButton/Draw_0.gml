draw_sprite(spr_scanButton, assignedSprite, x, y); //draw self (default sprite overwritten by draw event)

if (activeScan)
{
	var textBoxHeight = string_height(scanResultMessage) + (textBufferY*2);
	var textBoxWidth = string_width(scanResultMessage) + (textBufferX*2);
	draw_sprite_stretched(scanResultBox, 0, textBoxX, textBoxY, textBoxWidth, textBoxHeight);
	draw_text(textBoxX + textBufferX, textBoxY + textBufferY, scanResultMessage);
}