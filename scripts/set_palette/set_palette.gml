// taken and modified from ZeroRanger's data.win.
function set_palette(palette_num, name_only = false) {
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
		case 6:
		    palet_name = "RGB OVERLOAD"
		    colarray[0] = 0
		    colarray[1] = 0
		    colarray[2] = 255
		    colarray[3] = 65280
		    colarray[4] = 65535
		    colarray[5] = 16711680
		    colarray[6] = 16711935
		    colarray[7] = 16776960
		    colarray[8] = 16777215
		    colarray[9] = 16777215
		    break
		case 7:
		    palet_name = "ASHES"
		    colarray[0] = 397081
		    colarray[1] = 2695497
		    colarray[2] = 5065331
		    colarray[3] = 8423599
		    colarray[4] = 11646421
		    colarray[5] = 3217704
		    colarray[6] = 6629163
		    colarray[7] = 12139570
		    colarray[8] = 14846118
		    colarray[9] = 16777215
		    break
		case 8:
		    palet_name = "SOFTSUN"
		    colarray[0] = 0
		    colarray[1] = 11861
		    colarray[2] = 14628
		    colarray[3] = 28298
		    colarray[4] = 4639617
		    colarray[5] = 5898264
		    colarray[6] = 9845760
		    colarray[7] = 16744448
		    colarray[8] = 16377781
		    colarray[9] = 16777215
		    break
		case 9:
		    palet_name = "LOWHOLE"
		    colarray[0] = 0
		    colarray[1] = 0
		    colarray[2] = 16711680
		    colarray[3] = 16777215
		    colarray[4] = 16777215
		    colarray[5] = 0
		    colarray[6] = 16711680
		    colarray[7] = 16711680
		    colarray[8] = 16777215
		    colarray[9] = 16777215
		    break
		case 10:
		    palet_name = "CGA"
		    colarray[0] = 0
		    colarray[1] = 0
		    colarray[2] = 16733695
		    colarray[3] = 16733695
		    colarray[4] = 16777215
		    colarray[5] = 0
		    colarray[6] = 16733695
		    colarray[7] = 5636095
		    colarray[8] = 5636095
		    colarray[9] = 16777215
		    break
		case 11:
		    palet_name = "GOOD BOY"
		    colarray[0] = 11453504
		    colarray[1] = 14149780
		    colarray[2] = 14149780
		    colarray[3] = 5406521
		    colarray[4] = 2115121
		    colarray[5] = 14149780
		    colarray[6] = 11453504
		    colarray[7] = 2115121
		    colarray[8] = 11453504
		    colarray[9] = 14149780
		    break
		case 12:
		    palet_name = "OILY SHINE"
		    colarray[0] = 780
		    colarray[1] = 270618
		    colarray[2] = 2369906
		    colarray[3] = 8076973
		    colarray[4] = 8904703
		    colarray[5] = 7471155
		    colarray[6] = 12861075
		    colarray[7] = 16732160
		    colarray[8] = 16763471
		    colarray[9] = 15069951
		    break
		case 13:
		    palet_name = "NYX8"
		    colarray[0] = 0
		    colarray[1] = 529438
		    colarray[2] = 993855
		    colarray[3] = 2111823
		    colarray[4] = 5130591
		    colarray[5] = 8479345
		    colarray[6] = 10057079
		    colarray[7] = 12821386
		    colarray[8] = 16176829
		    colarray[9] = 16777215
		    break
		case 14:
		    palet_name = "SWEETIE 16"
		    colarray[0] = 0
		    colarray[1] = 1711148
		    colarray[2] = 5712214
		    colarray[3] = 11616598
		    colarray[4] = 15629144
		    colarray[5] = 2700911
		    colarray[6] = 4217808
		    colarray[7] = 5219575
		    colarray[8] = 8842488
		    colarray[9] = 16053492
		    break
		case 15:
		    palet_name = "15P DX"
		    colarray[0] = 0
		    colarray[1] = 2103048
		    colarray[2] = 4603708
		    colarray[3] = 8876379
		    colarray[4] = 13087381
		    colarray[5] = 7221810
		    colarray[6] = 12277557
		    colarray[7] = 14651973
		    colarray[8] = 15520372
		    colarray[9] = 16644593
		    break
		case 16:
		    palet_name = "JMP"
		    colarray[0] = 0
		    colarray[1] = 1642536
		    colarray[2] = 2190411
		    colarray[3] = 4632389
		    colarray[4] = 10606213
		    colarray[5] = 14439243
		    colarray[6] = 14781817
		    colarray[7] = 14072187
		    colarray[8] = 15325345
		    colarray[9] = 16119019
		    break
		case 17:
		    palet_name = "SELF-MADE 1"
		    colarray[0] = 0
		    colarray[1] = 1639959
		    colarray[2] = 2427430
		    colarray[3] = 3805244
		    colarray[4] = 6233969
		    colarray[5] = 2521137
		    colarray[6] = 3973203
		    colarray[7] = 3062641
		    colarray[8] = 8309413
		    colarray[9] = 16777215
		    break
		case 18:
		    palet_name = "SELF-MADE 2"
		    colarray[0] = 0
		    colarray[1] = 8323127
		    colarray[2] = 8323182
		    colarray[3] = 16711790
		    colarray[4] = 16711900
		    colarray[5] = 8336128
		    colarray[6] = 8350208
		    colarray[7] = 16738816
		    colarray[8] = 15911168
		    colarray[9] = 16777215
		    break
		case 19:
		    palet_name = "SELF-MADE 3"
		    colarray[0] = 197379
		    colarray[1] = 1057404
		    colarray[2] = 2376572
		    colarray[3] = 5789784
		    colarray[4] = 8158332
		    colarray[5] = 8130594
		    colarray[6] = 8139840
		    colarray[7] = 7101712
		    colarray[8] = 7104072
		    colarray[9] = 8158332
		    break
		case 20:
		    palet_name = "PURPLE YELLOW"
		    colarray[0] = 0
		    colarray[1] = 1114146
		    colarray[2] = 2621521
		    colarray[3] = 4849813
		    colarray[4] = 8388863
		    colarray[5] = 4277760
		    colarray[6] = 7304960
		    colarray[7] = 9937920
		    colarray[8] = 12438528
		    colarray[9] = 16777215
		    break
		case 21:
		    palet_name = "ORANGE GREEN"
		    colarray[0] = 0
		    colarray[1] = 5906435
		    colarray[2] = 9319174
		    colarray[3] = 13453578
		    colarray[4] = 16014355
		    colarray[5] = 414994
		    colarray[6] = 623131
		    colarray[7] = 833573
		    colarray[8] = 1041967
		    colarray[9] = 16777215
		    break
		case 22:
		    palet_name = "LES BETES"
		    colarray[0] = 0
		    colarray[1] = 2162693
		    colarray[2] = 5308466
		    colarray[3] = 9502931
		    colarray[4] = 10731263
		    colarray[5] = 29266
		    colarray[6] = 44331
		    colarray[7] = 61477
		    colarray[8] = 15466350
		    colarray[9] = 16777215
		    break
		case 23:
		    palet_name = "PURPLE AVOCADO"
		    colarray[0] = 0
		    colarray[1] = 1250344
		    colarray[2] = 1776698
		    colarray[3] = 3421812
		    colarray[4] = 4869546
		    colarray[5] = 3162639
		    colarray[6] = 4743703
		    colarray[7] = 7181859
		    colarray[8] = 9816880
		    colarray[9] = 16777215
		    break
		case 24:
		    palet_name = "BLANDIS BLUE-YELLOW"
		    colarray[0] = 0
		    colarray[1] = 727578
		    colarray[2] = 1454641
		    colarray[3] = 2842203
		    colarray[4] = 3834238
		    colarray[5] = 6637840
		    colarray[6] = 9266966
		    colarray[7] = 12027164
		    colarray[8] = 14327073
		    colarray[9] = 16777215
		    break
		case 25:
		    palet_name = "ANOTHER PURPLE-YELLOW"
		    colarray[0] = 0
		    colarray[1] = 2497328
		    colarray[2] = 4337491
		    colarray[3] = 5980530
		    colarray[4] = 7820436
		    colarray[5] = 4538892
		    colarray[6] = 6841361
		    colarray[7] = 9867032
		    colarray[8] = 13156128
		    colarray[9] = 16777215
		    break
		case 26:
		    palet_name = "DARK BLUE-YELLOW"
		    colarray[0] = 0
		    colarray[1] = 1778740
		    colarray[2] = 2899030
		    colarray[3] = 4084857
		    colarray[4] = 5600424
		    colarray[5] = 8728325
		    colarray[6] = 11104519
		    colarray[7] = 14075660
		    colarray[8] = 15983387
		    colarray[9] = 16777215
		    break
		case 27:
		    palet_name = "COLOURBLIND NIGHTMARE"
		    colarray[0] = 0
		    colarray[1] = 1125139
		    colarray[2] = 1852959
		    colarray[3] = 2647084
		    colarray[4] = 3969344
		    colarray[5] = 9568513
		    colarray[6] = 13763074
		    colarray[7] = 16521240
		    colarray[8] = 16670559
		    colarray[9] = 16777215
		    break
		case 28:
		    palet_name = "SELF-MADE 12"
		    colarray[0] = 0
		    colarray[1] = 793639
		    colarray[2] = 3296876
		    colarray[3] = 5535913
		    colarray[4] = 10329501
		    colarray[5] = 4467481
		    colarray[6] = 5335602
		    colarray[7] = 6133341
		    colarray[8] = 12763786
		    colarray[9] = 16777215
		    break
		case 29:
		    palet_name = "SELF-MADE 13"
		    colarray[0] = 0
		    colarray[1] = 1194832
		    colarray[2] = 1791862
		    colarray[3] = 2332753
		    colarray[4] = 3066730
		    colarray[5] = 11474947
		    colarray[6] = 14299141
		    colarray[7] = 16551188
		    colarray[8] = 16624983
		    colarray[9] = 16777215
		    break
		case 30:
		    palet_name = "L.C.P.B.P."
		    colarray[0] = 920588
		    colarray[1] = 6431535
		    colarray[2] = 9388073
		    colarray[3] = 12935205
		    colarray[4] = 15633966
		    colarray[5] = 4733754
		    colarray[6] = 7822421
		    colarray[7] = 11177338
		    colarray[8] = 13877161
		    colarray[9] = 16644077
		    break
		case 31:
		    palet_name = "SELF-MADE 14"
		    colarray[0] = 770
		    colarray[1] = 65836
		    colarray[2] = 262216
		    colarray[3] = 589951
		    colarray[4] = 1715375
		    colarray[5] = 12196096
		    colarray[6] = 14567680
		    colarray[7] = 16092932
		    colarray[8] = 16766986
		    colarray[9] = 16774860
		    break
		case 32:
		    palet_name = "SELF-MADE 15"
		    colarray[0] = 0
		    colarray[1] = 65836
		    colarray[2] = 262216
		    colarray[3] = 589951
		    colarray[4] = 1715375
		    colarray[5] = 6629740
		    colarray[6] = 12019089
		    colarray[7] = 16036459
		    colarray[8] = 16774621
		    colarray[9] = 16777215
		    break
		case 100:
		    palet_name = "BLUE RED"
		    colarray[0] = 0
		    colarray[1] = 2624070
		    colarray[2] = 2176132
		    colarray[3] = 3302655
		    colarray[4] = 8449003
		    colarray[5] = 5636096
		    colarray[6] = 8980992
		    colarray[7] = 16721920
		    colarray[8] = 16752895
		    colarray[9] = 16777215
		    break
		case 777:
			palet_name = "Missing Name"
		    colarray[0] = 0
		    colarray[1] = 0
		    colarray[2] = 11861
		    colarray[3] = 28298
		    colarray[4] = 4639617
		    colarray[5] = 5898264
		    colarray[6] = 9845760
		    colarray[7] = 16744448
		    colarray[8] = 16377781
		    colarray[9] = 16777215
			break;
	}
	if name_only == false {
		for (var i = 0; i < 10; i++) {
	        global.palette_array[i][0] = (colour_get_blue(colarray[i]) / 255)
	        global.palette_array[i][1] = (colour_get_green(colarray[i]) / 255)
	        global.palette_array[i][2] = (colour_get_red(colarray[i]) / 255)
	    }
	}
	global.palettename = palet_name
	with (obj_colorslot)
		update = true
}