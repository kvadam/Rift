// LVL1 values
// Structure
hull = 100;
armor = 100;
shield = 50;
// Movement
mainTorue = 0.03;
sideTorque = 0.02;
brakeTorque = 0.02;
rotationSpeed = 2;
// Weapons
weaponSlots = 3;
emptySlotId = 0;
machinegunId = 1;
mg = ds_list_create();
ds_list_add(mg, "Machinegun"); // name
ds_list_add(mg, 1); // firerate (shots per number of frames)
ds_list_add(mg, 1); // damage
ds_list_add(mg, "objBullet")
granadeId = 2;
gl = ds_list_create();
ds_list_add(gl, "Grenadelauncher"); // name
ds_list_add(gl, 10); // firerate
ds_list_add(gl, 10); // damage
ds_list_add(gl, "objGrenade")
rocketId = 3;
rl = ds_list_create();
ds_list_add(rl, "Rocketlauncher"); // name
ds_list_add(rl, 60); // firerate
ds_list_add(rl, 100); // damage
ds_list_add(rl, "objRocket")

//Mining
hasMiningLaser = false;

// Get module values
function GetHullByLevel(level) {
	if level == 1 return 100;
	else if level > 1 return 50 + 50 * level;
	else return 100;
}

function GetArmorByLevel(level) {
	if level == 1 return 100;
	else if level > 1 return 100 * level;
	else return 100;
}

function GetShieldByLevel(level) {
	if level == 1 return 50;
	else if level > 1 return 50 * level * 1.5;
	else return 50;
}

function GetEngineByLevel(level) {
	var engine = array_create(4, noone);
	array_insert(engine, 0, 0.03 + level * 0.01);
	array_insert(engine, 1, 0.02 + level * 0.005);
	array_insert(engine, 2, 0.02 + level * 0.005);
	array_insert(engine, 3, 2 + level * 0.5);
	return engine;
}

// Weapons
function GetWeaponSlots() {
	objPlayer.weaponSlots = weaponSlots;
}

function AddDefaultWeapons() {
	list = ds_list_create();
	ds_list_add(list, 1);
	ds_list_add(list, 2);
	ds_list_add(list, 3);
	ds_list_copy(objPlayer.weaponList, list);
}

function GetFirerate(i) {
	switch(i)
	{	
		case 1:
			return ds_list_find_value(mg, 1);
			break;
		case 2:
			return ds_list_find_value(gl, 1);
			break;
		case 3:
			return ds_list_find_value(rl, 1);
			break;
	}
}

function GetBulletObject(i) {
	switch(i)
	{	
		case 1:
			return ds_list_find_value(mg, 3);
			break;
		case 2:
			return ds_list_find_value(gl, 3);
			break;
		case 3:
			return ds_list_find_value(rl, 3);
			break;
	}
}

// Level up modules
function LevelUpHull() {
	objPlayer.hullLevel += 1
	objPlayer.hullMax = GetHullByLevel(objPlayer.hullLevel);
	objPlayer.hull = objPlayer.hullMax;
}

function LevelUpArmor() {
	objPlayer.armorLevel += 1;
	objPlayer.armorMax = GetArmorByLevel(objPlayer.armorLevel);
	objPlayer.armor = objPlayer.armorMax;
}

function LevelUpShield() {
	objPlayer.shieldLevel += 1;
	objPlayer.shieldMax = GetArmorByLevel(objPlayer.shieldLevel);
	objPlayer.shield = objPlayer.shieldMax;
}

function LevelUpEngine() {
	objPlayer.engineLevel += 1;
	var e = GetEngineByLevel(objPlayer.engineLevel);
	objPlayer.mainTorue = e.mainTorue;
	objPlayer.sideTorque = e.sideTorque;
	objPlayer.brakeTorque = e.brakeTorque;
	objPlayer.rotationSpeed = e.rotationSpeed;
}
