/// @desc 
if (pad_num == 4) {
	var xx = 32;
	var yy = 32;

	if gamepad_is_connected(pad_num) {
		draw_text(xx, yy, "Gamepad Slot - " + string(pad_num));
		draw_text(xx, yy + 20, "Gamepad Type - " + string(gamepad_get_description(pad_num)));
		
		draw_text(xx, yy + 60, "Left H Axis - " + string(gamepad_axis_value(pad_num, axislh)));
		draw_text(xx, yy + 80, "Left V Axis - " + string(gamepad_axis_value(pad_num, axislv)));
		draw_text(xx, yy + 100, "Right H Axis - " + string(gamepad_axis_value(pad_num, axisrh)));
		draw_text(xx, yy + 120, "Right V Axis - " + string(gamepad_axis_value(pad_num, axisrv)));
		
		draw_text(xx, yy + 140, "Right Trigger - " + string(gamepad_button_value(pad_num, rtrigger)));
		draw_text(xx, yy + 160, "Left Trigger - " + string(gamepad_button_value(pad_num, ltrigger)));
		draw_text(xx, yy + 180, "Right Bumper - " + string(gamepad_button_value(pad_num, rbumper)));
		draw_text(xx, yy + 200, "Left Bumper - " + string(gamepad_button_value(pad_num, lbumper)));
		draw_text(xx, yy + 220, "Button A - " + string(gamepad_button_value(pad_num, buttonA)));
		draw_text(xx, yy + 240, "Button B - " + string(gamepad_button_value(pad_num, buttonB)));
		draw_text(xx, yy + 260, "Button X - " + string(gamepad_button_value(pad_num, buttonX)));
		draw_text(xx, yy + 280, "Button Y - " + string(gamepad_button_value(pad_num, buttonY)));
		draw_text(xx, yy + 300, "Start Button - " + string(gamepad_button_value(pad_num, buttonStart)));
		draw_text(xx, yy + 320, "Select Button - " + string(gamepad_button_value(pad_num, buttonSelect)));
		draw_text(xx, yy + 340, "DPad Up - " + string(gamepad_button_value(pad_num, padu)));
		draw_text(xx, yy + 360, "DPad Down - " + string(gamepad_button_value(pad_num, padd)));
		draw_text(xx, yy + 380, "DPad Left - " + string(gamepad_button_value(pad_num, padl)));
		draw_text(xx, yy + 400, "DPad Right - " + string(gamepad_button_value(pad_num, padr)));
		draw_text(xx, yy + 420, "L3 - " + string(gamepad_button_value(pad_num, clickLeft)));
		draw_text(xx, yy + 440, "R3 - " + string(gamepad_button_value(pad_num, clickRight)));
	}
}