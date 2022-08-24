if clicked() {
	play_sound(snd_buttonlow)
	reset_color(colorslot, colorslot.defaultclr)
	instance_destroy(id)	
}