draw_self();

// Draws the position top of the object.
/*
draw_text(
	round( x - (objPlayer.x-640) - (objPlayer.x - x) ), 
	round( y - (objPlayer.y-360) - (objPlayer.y - y) ), 
	string(posX)+ ", " +string(posY)
);
*/

draw_text(
	round( x - (objPlayer.x-640) - (objPlayer.x - x) ), 
	round( y - (objPlayer.y-360) - (objPlayer.y - y) ), 
	sp
);