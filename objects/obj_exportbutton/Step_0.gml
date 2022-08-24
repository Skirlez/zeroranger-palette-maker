if clicked() {
	var str = "palet_name = \"CUSTOM NAME HERE\"\n"
	for (var i = 0; i < 10; i++) {
		clr = make_color_rgb(global.palette_array[i][0] * 255, global.palette_array[i][1] * 255, global.palette_array[i][2] * 255)
		str += "colarray[" + string(i) + "] = " + string(clr) + "\n"
	
	}
	clipboard_set_text(str)
}