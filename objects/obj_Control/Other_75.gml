/// @description Detect Gamepads
// code for debugging connect and disconnecting controllers

var event = async_load[? "event_type"];
var pad = async_load[? "pad_index"];

show_debug_message("Event = " + event);
show_debug_message("Pad   = " + string(pad));

// Parse the async_load map to see which event has been triggered
switch (event) {
	// when a controller is plugged in:
	// - set the axis deadzone for the analog sticks
	// - set the trigger threshold
	// - create a player with an index matching the pad_index
	//   and assign the appropriate player color
	case "gamepad discovered":
		gamepad_set_axis_deadzone(pad, 0.1);
		gamepad_set_button_threshold(pad, 0.1);
		if !(instance_exists(player[pad])) {
			var _xx = 64 + random(room_width - 128);
			var _yy = 64 + random(room_height - 128);
			player[pad] = instance_create_layer(_xx, _yy, "instances", obj_Player);
			with (player[pad]) {
				image_index = instance_number(object_index) - 1;
				pad_num = pad;
				if (gamepad_get_description(pad) == "vJoy Device") {
					buttonA = gp_face1;
					buttonB = gp_face2;
					buttonX = gp_face3;
					buttonY = gp_face4;
					lbumper = gp_padd;           // gp_shoulderl;
					ltrigger = gp_axisrh;        // gp_shoulderlb;
					rbumper = gp_shoulderl;      // gp_shoulderr;
					rtrigger = gp_shoulderr;     // gp_shoulderrb;
					buttonSelect = gp_padu;      // gp_select
					buttonStart = gp_shoulderrb; // gp_start;
					clickLeft = gp_padl;         // gp_stickl
					clickRight = gp_padr;        // gp_stickr
					padu = gp_select;            // gp_padu;
					padd = gp_start;             // gp_padd;
					padl = gp_stickl;            // gp_padl;
					padr = gp_stickr;            // gp_padr;
					axislh = gp_axislh;
					axislv = gp_axislv;
					axisrh = gp_axisrv;          // gp_axisrh
					axisrv = gp_face4;           // gp_axisrv
				}
			}
		}
		break;
	// when a controller is unplugged:
	// - destroy the associated player
	// - set that player[pad] to empty
	case "gamepad lost":
		if (instance_exists(player[pad])) {
			with (player[pad]) { instance_destroy(); }
			player[pad] = noone;
		}
		break;
}

// displays the binary value for each controller port 0-11
show_debug_message("binaries for each gamepad port");
for (var i = 0; i < 12; i++;) {
	show_debug_message("port " + string(i) + ": " + string(gamepad_is_connected(i)));
}