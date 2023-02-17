draw_text(30,30, string(objPlayer.speed))

draw_text(
	mouse_x - (objPlayer.x - 640) - (objPlayer.x - mouse_x) + 15, 
	mouse_y - (objPlayer.y - 360) - (objPlayer.y - mouse_y) - 15,
	string(mouse_x) + ", " + string(mouse_y)
);