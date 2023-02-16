

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
	weaponSlots = 0;
	hasMiningLaser = false;
	
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
		weaponSlots = 3;
		hasMiningLaser = true;
	}
}