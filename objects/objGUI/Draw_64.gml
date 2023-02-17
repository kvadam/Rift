//draw_text(30,30, string(objPlayer.speed))
draw_text(
	objPlayer.x-(objPlayer.x-640),
	objPlayer.y-(objPlayer.y-360), 
	string(objPlayer.x-(objPlayer.x-640)) + ", " + string(objPlayer.y-(objPlayer.y-360))
);

draw_text(
	objPlayer.x-(objPlayer.x), 
	objPlayer.y-(objPlayer.y),
	string(objPlayer.x-(objPlayer.x)) + ", " + string(objPlayer.y-(objPlayer.y))
);

draw_text(
	objPlayer.x-(objPlayer.x-1200), 
	objPlayer.y-(objPlayer.y-640),
	string(objPlayer.x-(objPlayer.x-1200)) + ", " + string(objPlayer.y-(objPlayer.y-640))
);
draw_text(
	mouse_x, 
	mouse_y,
	string(mouse_x) + ", " + string(mouse_y)
);