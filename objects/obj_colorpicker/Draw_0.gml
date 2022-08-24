draw_self()
draw_sprite_ext(spr_hsv_pickhueborder, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)
if clicked() 
	choosing = true
else if released_mouse()
	choosing = false
	
if choosing == true {
	colorpick_x = clamp(obj_mousebox.x, x - sprite_width / 2, x + sprite_width / 2 - 1)
	colorpick_y = clamp(obj_mousebox.y, y - sprite_height / 2, y + sprite_height / 2)
	
	var px = (colorpick_x - x + sprite_width / 2) * 2
	var py = (colorpick_y - y + sprite_height / 2) * 2
	//show_debug_message(px)
	//show_debug_message(py)
	colorslot.colorhue = px * 255 / 360
	colorslot.colorsaturation = 255 - py * 255 / 100
}
draw_sprite(spr_colorpick_point, 0, colorpick_x, colorpick_y)