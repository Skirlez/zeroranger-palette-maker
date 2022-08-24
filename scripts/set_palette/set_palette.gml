// taken and modified from ZeroRanger's data.win.
function set_palette(palette_num) {
	var palet_name, colarray;
	switch palette_num {
		case 0:
	        palet_name = "GREEN ORANGE"
	        colarray[0] = 0
	        colarray[1] = 7459
	        colarray[2] = 12850
	        colarray[3] = 20301
	        colarray[4] = 38009
	        colarray[5] = 11349783
	        colarray[6] = 14506280
	        colarray[7] = 16744448
	        colarray[8] = 16760947
	        colarray[9] = 16777215
			break;
	    case 1:
	        palet_name = "BLUE ORANGE"
	        colarray[0] = 0
	        colarray[1] = 7494
	        colarray[2] = 12909
	        colarray[3] = 20371
	        colarray[4] = 37837
	        colarray[5] = 11879427
	        colarray[6] = 13854227
	        colarray[7] = 16744448
	        colarray[8] = 16758334
	        colarray[9] = 16777215
	        break
	    case 2:
	        palet_name = "GRAY ORANGE"
	        colarray[0] = 0
	        colarray[1] = 1513239
	        colarray[2] = 3487029
	        colarray[3] = 5592405
	        colarray[4] = 8421504
	        colarray[5] = 11155200
	        colarray[6] = 15355136
	        colarray[7] = 16738336
	        colarray[8] = 16295766
	        colarray[9] = 16777215
	        break
	    case 3:
	        palet_name = "RED BLUE"
	        colarray[0] = 0
	        colarray[1] = 3148331
	        colarray[2] = 6555940
	        colarray[3] = 9504552
	        colarray[4] = 15089975
	        colarray[5] = 7808
	        colarray[6] = 16308
	        colarray[7] = 36095
	        colarray[8] = 4194273
	        colarray[9] = 16777215
	        break
	    case 4:
			palet_name = "HOLY DAY"
	        colarray[0] = 2048
	        colarray[1] = 729097
	        colarray[2] = 1454341
	        colarray[3] = 744212
	        colarray[4] = 3047685
	        colarray[5] = 8388608
	        colarray[6] = 13440277
	        colarray[7] = 16121856
	        colarray[8] = 16151667
	        colarray[9] = 16250871
	        break
	    case 5:
	        palet_name = "COOL DAY"
	        colarray[0] = 146020
	        colarray[1] = 218514
	        colarray[2] = 356284
	        colarray[3] = 33023
	        colarray[4] = 8454143
	        colarray[5] = 9896011
	        colarray[6] = 13500519
	        colarray[7] = 16711808
	        colarray[8] = 16732584
	        colarray[9] = 16777215
	        break
	}
	
	for (var i = 0; i < 10; i++) {
        global.palette_array[i][0] = (colour_get_blue(colarray[i]) / 255)
        global.palette_array[i][1] = (colour_get_green(colarray[i]) / 255)
        global.palette_array[i][2] = (colour_get_red(colarray[i]) / 255)
    }
	with (obj_colorslot)
		update = true
}