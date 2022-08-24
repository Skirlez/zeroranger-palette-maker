// same code for activating debug in zeroranger
if keyboard_check(vk_space)
{
    string_cheat += keyboard_lastchar
    string_cheat = string_replace_all(string_cheat, " ", "")
    if (string_length(string_cheat) >= 5)
    {
        if (string_lower(string_copy(string_cheat, (string_length(string_cheat) - 5), 6)) == "helpme")
        {
            string_cheat = ""
            if (global.debug == 0)
                global.debug = 1
            else
                global.debug = 0
        }
    }
}
else
	string_cheat = ""