// Movement
if keyboard_check(ord("W")) {
	motion_add(image_angle, mainTorue);	
}

if keyboard_check(ord("S")) {
	if speed > brakeTorque speed -= brakeTorque;
	else speed = 0;
}

if keyboard_check(ord("Q")) {
	motion_add(image_angle + 90, sideTorque);	
}

if keyboard_check(ord("E")) {
	motion_add(image_angle - 90, sideTorque);	
}

if keyboard_check(ord("A")) {
	image_angle += rotationSpeed;	
}

if keyboard_check(ord("D")) {
	image_angle -= rotationSpeed;
}

// Weapons
if  keyboard_check(ord("1")) {
	objData.GetWepon(1);
}

if  keyboard_check(ord("2")) {
	objData.GetWepon(2);
}

if  keyboard_check(ord("3")) {
	objData.GetWepon(3);
}

if(fireInterval > 0) fireInterval -= 1;

if mouse_check_button(mb_left) {
	if fireInterval < 1 {
		instance_create_layer(x, y, "Instances", objPlayer.bulletObject);
		fireInterval = firerate;
	}
}