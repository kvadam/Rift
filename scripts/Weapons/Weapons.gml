function Machinegun() constructor {
	sprite = Bullet;
	fire_rate = 1;
	
}

function Weapons() constructor{
	weaponList = ds_list_create();
	
	GetDefaultWeapons = function() {
		ds_list_add(weaponList, "Machinegun");
		method_call(weaponList[0])
	}
}