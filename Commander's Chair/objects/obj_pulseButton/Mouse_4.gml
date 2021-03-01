image_xscale = 0.95;
image_yscale = 0.95;

if (navigation.consolePower <= 0) {exit;}
else
{
	with (navigation)
	{
		event_perform(ev_other, ev_user0);
	}
}