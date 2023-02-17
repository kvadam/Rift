// Starting ship
sprite_index = Assaultship;
// Structure
hullLevel = 1
hullMax = objData.GetHullByLevel(hullLevel)
hull = hullMax;
armorLevel = 1
armorMax = objData.GetArmorByLevel(armorLevel);
armor = armorMax;
shieldLevel = 1;
shieldMax = objData.GetShieldByLevel(shieldLevel);
shield = shieldMax;
// Movement
engineLevel = 1;
engine = objData.GetEngineByLevel(engineLevel);
mainTorue = engine[0];
sideTorque = engine[1];
brakeTorque = engine[2];
rotationSpeed = engine[3];
// Weapons
weaponSlots = objData.GetWeaponSlots();
weaponList = ds_list_create();
objData.AddDefaultWeapons();
weaponCurrent = 1;
weaponName = objData.mg.name;
firerate = objData.mg.firerate;
damage = objData.mg.damage;
bulletObject = asset_get_index(objData.mg.object);
fireInterval = 0;
//Mining
hasMiningLaser = false;
