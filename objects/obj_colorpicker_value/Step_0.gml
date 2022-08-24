if clicked() 
	choosing = true
else if released_mouse()
	choosing = false


if choosing == true {
	slider_y = clamp(obj_mousebox.y, y - sprite_height / 2, y + sprite_height / 2)
	value = (slider_y - y + sprite_height / 2) * 2
	colorslot.colorvalue = 255 - value * 255 / 100
}