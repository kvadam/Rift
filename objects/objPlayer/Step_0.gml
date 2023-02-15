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