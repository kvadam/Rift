// Movement
if keyboard_check(ord("W")) {
	motion_add(image_angle, mainTorue * flightMode);	
}

if keyboard_check(ord("S")) {
	if speed > brakeTorque speed -= brakeTorque * flightMode;
	else speed = 0;
}

if keyboard_check(ord("Q")) {
	motion_add(image_angle + 90, sideTorque * flightMode);	
}

if keyboard_check(ord("E")) {
	motion_add(image_angle - 90, sideTorque * flightMode);	
}

if keyboard_check(ord("A")) {
	image_angle += clamp(rotationSpeed * flightMode, 0, rotationSpeed);	
}

if keyboard_check(ord("D")) {
	image_angle -= clamp(rotationSpeed * flightMode, 0, rotationSpeed);	
}

if keyboard_check_pressed(ord("1")) flightMode = objData.flight_modes.travel;
if keyboard_check_pressed(ord("2")) flightMode = objData.flight_modes.fight;
if keyboard_check_pressed(ord("3")) flightMode = objData.flight_modes.mining;
if keyboard_check_pressed(ord("4")) flightMode = objData.flight_modes.docking;

if flightMode == objData.flight_modes.travel return;

// Weapons
if mouse_wheel_down() objData.GetWepon(1);
if mouse_wheel_up() objData.GetWepon(-1);

// Shooting
if(fireInterval > 0) fireInterval -= 1;
if mouse_check_button(mb_left) {
	if fireInterval < 1 && weaponCurrent > 0 {
		instance_create_layer(x, y, "Instances", objPlayer.bulletObject);
		fireInterval = firerate;
	}
}