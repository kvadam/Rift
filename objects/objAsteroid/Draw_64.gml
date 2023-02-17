draw_self();

var posx = x - (objPlayer.x-640);
var posy = y - (objPlayer.y-360);

draw_text(posx, posy, string(posx)+ ", " +string(posy));