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
// Flight modes
flight_modes = {
	travel: 3,
	fight: 1,
	mining: 0.5,
	docking: 0.25
}

// Weapons
mg = {
    name : "Machinegun",
    firerate : 1,
	damage: 1,
	object: "objBullet"
};
gl = {
    name : "Grenadelauncher",
    firerate : 10,
	damage: 10,
	object: "objGrenade"
};
rl = {
    name : "Rocketlauncher",
    firerate : 60,
	damage: 100,
	object: "objRocket"
};

weaponSlots = 3;

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
	return weaponSlots;
}

function AddDefaultWeapons() {
	list = ds_list_create();
	ds_list_add(list, 1);
	ds_list_add(list, 2);
	ds_list_add(list, 3);
	ds_list_copy(objPlayer.weaponList, list);
}

function GetWepon(i) {
	objPlayer.weaponSlotCurrent += i;
	if objPlayer.weaponSlotCurrent > objPlayer.weaponSlots objPlayer.weaponSlotCurrent = 1;
	else if objPlayer.weaponSlotCurrent < 1 objPlayer.weaponSlotCurrent = objPlayer.weaponSlots;
	var weapon = ds_list_find_value(objPlayer.weaponList, objPlayer.weaponSlotCurrent-1);
	objPlayer.weaponCurrent = weapon;
	switch(weapon)
	{	
		case 0: 
			objPlayer.weaponName = "";
			objPlayer.firerate = 0;
			objPlayer.damage = 0;
			objPlayer.bulletObject = "";
			break;
		case 1:
			objPlayer.weaponName = mg.name;
			objPlayer.firerate = objData.mg.firerate;
			objPlayer.damage = objData.mg.damage;
			objPlayer.bulletObject = asset_get_index(objData.mg.object);
			break;
		case 2:
			objPlayer.weaponName = gl.name;
			objPlayer.firerate = objData.gl.firerate;
			objPlayer.damage = objData.gl.damage;
			objPlayer.bulletObject = asset_get_index(objData.gl.object);
			break;
		case 3:
			objPlayer.weaponName = rl.name;
			objPlayer.firerate = objData.rl.firerate;
			objPlayer.damage = objData.rl.damage;
			objPlayer.bulletObject = asset_get_index(objData.rl.object);
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
