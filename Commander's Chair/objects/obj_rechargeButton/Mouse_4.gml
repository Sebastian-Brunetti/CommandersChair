image_xscale = 0.95;
image_yscale = 0.95;

with (engineering)
{
	GameController.playerShields = reservedPower;
	reservedPower = 0;
}
with (GameController)
{
	event_perform(ev_other, ev_user1);
}

show_debug_message("NEXT TURN");