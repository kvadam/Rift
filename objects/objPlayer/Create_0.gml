// Structure
hull = 1;
armor = 0;
shield = 0;
// Movement
mainTorue = 0;
sideTorque = 0;
brakeTorque = 0;
rotationSpeed = 0;

function SetShip() {
	sprite_index = player_ship.sprite;
	hull = player_ship.hull;
	armor = player_ship.armor;
	shield = player_ship.shield;
	mainTorue = player_ship.mainTorue;
	sideTorque = player_ship.sideTorque;
	brakeTorque = player_ship.brakeTorque;
	rotationSpeed = player_ship.rotationSpeed;
}

player_ship = new Ship();
player_ship.GetDefaultShip();
SetShip();

