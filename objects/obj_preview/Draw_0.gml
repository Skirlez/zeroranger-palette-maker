// slightly modified, mostly from ZeroRanger's data.win.
shader_set(shader_palette)
var unistr, uni, i = 0
repeat (10)
{
    switch i
    {
        case 0:
            unistr = "cBl"
            break
        case 1:
            unistr = "cG0"
            break
        case 2:
            unistr = "cG1"
            break
        case 3:
            unistr = "cG2"
            break
        case 4:
            unistr = "cG3"
            break
        case 5:
            unistr = "cF0"
            break
        case 6:
            unistr = "cF1"
            break
        case 7:
            unistr = "cF2"
            break
        case 8:
            unistr = "cF3"
            break
        default:
            unistr = "cWh"
    }

    uni = shader_get_uniform(shader_palette, unistr)
	shader_set_uniform_f(uni, global.palette_array[i][0], global.palette_array[i][1], global.palette_array[i][2]);
	i++;
}
	
gpu_set_blendenable(false)
draw_self()
gpu_set_blendenable(true)

shader_reset()