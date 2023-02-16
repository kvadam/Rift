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
	weaponCurrent = ds_list_find_value(weaponList, 1);
	firerate = objData.GetFirerate(ds_list_find_value(weaponList, weaponCurrent));
	bulletSprite = asset_get_index(objData.GetBulletObject(ds_list_find_value(weaponList, weaponCurrent)));
}

if  keyboard_check(ord("2")) { 
	weaponCurrent = ds_list_find_value(weaponList, 2);
	firerate = objData.GetFirerate(ds_list_find_value(weaponList, weaponCurrent));
	bulletSprite = asset_get_index(objData.GetBulletObject(ds_list_find_value(weaponList, weaponCurrent)));
}

if  keyboard_check(ord("3")) { 
	weaponCurrent = ds_list_find_value(weaponList, 3);
	firerate = objData.GetFirerate(ds_list_find_value(weaponList, weaponCurrent));
	bulletSprite = asset_get_index(objData.GetBulletObject(ds_list_find_value(weaponList, weaponCurrent)));
}

if mouse_check_button(mb_left) {
	instance_create_layer(x, y, "Instances", objBullet);
}