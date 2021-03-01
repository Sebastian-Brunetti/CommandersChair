if (keyboard_check_pressed(vk_f12))
{
	testMode = !testMode;
}

if (testMode)
{
	if (keyboard_check_pressed(vk_lcontrol))
	{
		consolePARENT.consolePower = 9;
	}
	
	if (keyboard_check_pressed(vk_lshift))
	{
		event_perform(ev_other, ev_user1);
	}
}

if ((room == rm_lose) or (room == rm_win))
{
	if (mouse_check_button_pressed(mb_left))
	{
		game_restart();
		show_debug_message("Restarting game");
	}
}

if ((room == rm_game) and enemies <= 0) {room_goto(rm_win);}