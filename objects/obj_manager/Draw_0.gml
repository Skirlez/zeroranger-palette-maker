var w = room_width
var h = room_height


if global.clicklevel == 1 {
	draw_set_color(c_black)
	draw_set_alpha(0.9)
	draw_rectangle(0, 0, 640, 360, false)	
	draw_set_alpha(1)
}

if !gotcolorbuffer  {
	var colorwidth = sprite_get_width(spr_hsv_pickhue) 
	var colorheight = sprite_get_height(spr_hsv_pickhue)
	var colorsurface = surface_create(colorwidth, colorheight)
	surface_set_target(colorsurface)
	draw_sprite(spr_hsv_pickhue, 0, colorwidth / 2, colorheight / 2)	
	surface_reset_target()

	
	global.colorbuffer = buffer_create(colorwidth * colorheight * 4, buffer_fixed, 1);
	buffer_get_surface(global.colorbuffer, colorsurface, 0);
	surface_free(colorsurface)
	
	gotcolorbuffer = true
}

