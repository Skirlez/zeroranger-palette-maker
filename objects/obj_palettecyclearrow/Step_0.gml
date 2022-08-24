if clicked() {
	global.palette -= sign(image_xscale)
	if sign(image_xscale) == 1
		play_sound(snd_buttonlow)
	else
		play_sound(snd_button)
	
	
	var maxp = 777
		
	//lazy
	if global.palette == 33
		global.palette = 100
	else if global.palette == 99
		global.palette = 32
	else if global.palette == 101
		global.palette = 777
	else if global.palette == 776
		global.palette = 100
	
	
	if global.palette < 0
		global.palette = maxp
		
	else if global.palette > maxp
		global.palette = 0
		
	set_palette(global.palette, !autoreset)
}