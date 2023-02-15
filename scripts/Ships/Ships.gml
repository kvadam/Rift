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
	array_insert(engine, 0, 0.03);
	array_insert(engine, 1, 0.02);
	array_insert(engine, 2, 0.02);
	array_insert(engine, 3, 2);
	return engine;
}

function Ship() constructor {
	sprite = "";
	hullLevel = 1;
	hull = 1;
	armorLevel = 1;
	armor = 1;
	shieldLevel = 1;
	shield = 1;
	engineLevel = 1;
	mainTorue = 0;
	sideTorque = 0;
	brakeTorque = 0;
	rotationSpeed = 0;
	
	GetDefaultShip = function() {
		sprite = asset_get_index("Assaultship");
		hull = GetHullByLevel(hullLevel);
		armor = GetArmorByLevel(armorLevel);
		shield = GetShieldByLevel(shieldLevel);
		engine = GetEngineByLevel(engineLevel);
		mainTorue = array_get(engine, 0);
		sideTorque = array_get(engine, 1);
		brakeTorque = array_get(engine, 2);
		rotationSpeed = array_get(engine, 3);
	}
}