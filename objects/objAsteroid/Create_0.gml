direction = random_range(0,360);
speed = random_range(0.01, 0.2);
rotationSpeed = random_range(-4, 4);
sp = round(random_range(30,200));

function Hit(damage) {
	sp -= damage;
	if sp <= 0 instance_destroy();
}