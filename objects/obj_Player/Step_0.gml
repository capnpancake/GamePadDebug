/// @description Insert description here
// You can write your code in this editor

var h_move = gamepad_axis_value(pad_num, axislh);
var v_move = gamepad_axis_value(pad_num, axislv);

if (h_move != 0 || v_move != 0) {
	x += h_move * 5;
	y += v_move * 5;
}

var h_point = gamepad_axis_value(pad_num, axisrh);
var v_point = gamepad_axis_value(pad_num, axisrv);

if ((h_point != 0) || (v_point != 0)) {
    var pdir = point_direction(0, 0, h_point, v_point);
    var dif = angle_difference(pdir, image_angle);
    image_angle += median(-20, dif, 20);
}

if (gamepad_get_description(pad_num) == "vJoy Device"){
	var rate = gamepad_axis_value(pad_num, ltrigger) + 1;
} else {
	rate = gamepad_button_value(pad_num, rtrigger);
}
if (can_shoot && rate > 0) {
    with (instance_create_layer(x, y, "Instances", obj_Bullet)) {
        speed = 10;
        direction = other.image_angle;
        image_angle = direction;
    }
    can_shoot = false;
    alarm[0] = max(5, (room_speed * rate));
}

if (gamepad_button_value(pad_num, buttonA)) {
    with (instance_create_layer(x, y, "Instances", obj_Grenade)) {
        direction = other.image_angle;
        image_angle = direction;
    }
}
