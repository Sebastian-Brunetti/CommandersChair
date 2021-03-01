image_xscale = 0.95;
image_yscale = 0.95;

if (artillery.consolePower <= 0) {exit;}
else
{	
	artillery.activateLeftWeapon = leftWeapon;
	with (artillery)
	{
		event_perform(ev_other, ev_user1);
		event_perform(ev_other, ev_user0);
	}
}