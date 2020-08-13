/// @description Draw Debug Info

//var xx = 32;
//var yy = 32;

//for (var i = 4; i < 12; i++;) {
//	if gamepad_is_connected(i) {
//	    draw_text(xx, yy, "Gamepad Slot - " + string(i));
//	    draw_text(xx, yy + 20, "Gamepad Type - " + string(gamepad_get_description(i)));
//	    draw_text(xx, yy + 40, "Gamepad Supported - " + string(gamepad_is_supported()));
//	    draw_text(xx, yy + 60, "Left H Axis - " + string(gamepad_axis_value(i, gp_axislh)));
//	    draw_text(xx, yy + 80, "Left V Axis - " + string(gamepad_axis_value(i, gp_axislv)));
//		if (gamepad_get_description(i) == "vJoy Device") {
//		    draw_text(xx, yy + 100, "Right H Axis - " + string(gamepad_axis_value(i, gp_axisrv)));
//		    draw_text(xx, yy + 120, "Right V Axis - " + string(gamepad_axis_value(i, gp_face4))); // broken
//			draw_text(xx, yy + 140, "Fire Rate - " + string(gamepad_axis_value(i, gp_axisrh) + 1));
//		} else {
//		    draw_text(xx, yy + 100, "Right H Axis - " + string(gamepad_axis_value(i, gp_axisrh)));
//		    draw_text(xx, yy + 120, "Right V Axis - " + string(gamepad_axis_value(i, gp_axisrv)));
//			draw_text(xx, yy + 140, "Fire Rate - " + string(gamepad_button_value(i, gp_shoulderrb)));
//		}
//	    yy += 180;
//    } else {
//	    draw_text(xx, yy, "Gamepad Slot - " + string(i));
//	    draw_text(xx, yy + 20, "Gamepad not connected" + string(gamepad_get_description(i)));
//	    yy += 64;
//    }
//	if (yy > room_height - 224) {
//	    yy = 32;
//	    xx += 512;
//    }
//}