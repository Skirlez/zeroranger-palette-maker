if clicked() {
	play_sound(snd_button)
	var str = 
@"These are the instructions on how to import your palette into ZeroRanger. In short:
You must put the string (the text) from the export button into ZeroRanger's set_palette() script, using a tool like UndertaleModTool (https://github.com/krzys-h/UndertaleModTool/releases/latest) which I'll be explaining how to use here.
If you know how GML works and how to use UndertaleModTool, You could probably do this on your own manually without reading the rest here. If you don't: Keep reading.
Before you begin, it's very important you finish the game first to unlock palette selection. You can still do this guide by overriding the colorblind palette (ID 1) but I suggest you just beat it first.


Download UndertaleModTool from the link above.
Open ZeroRanger's data.win file with UndertaleModTool. This is located inside of the game's folder, where the exe is located.
If you're on Steam you can right click the game and go to Manage > Browse Local Files and it will automatically open the folder for you.

From here there are two methods: I recommend the script method as it is faster and easier.
In case it doesn't work out, there is always the manual method.

SCRIPT METHOD:
This method uses a custom script I've written for UndertaleModTool to add the palette, overwriting a previous one. It is located inside the Palette Maker's install folder. (InsertZeroRangerPalette.csx)

In UndertaleModTool, either at the top go to Scripts > Run other script... and select the .csx file or just drag it into the window.
Follow the instructions that pop up and after finishing, save and replace ZeroRanger's data.win.
You are done! You should be able to select your palette in the menu.

MANUAL METHOD:
This method is self-explanatory.

Once you've opened the data.win in UndertaleModTool, you must use the search bar at the top to find the script set_palette().
Then just open the Scripts category in the menu on the left and it should be the only result there.
There is a big Switch statement inside set_palette() containing the colors for all the palettes, including unused ones.
You must copy the text from the export button to one of the cases here, replacing the colors of a palette.
Preferably so you don't have to uncap the palettes you can access you should replace an already existing palette, any of them below ID 5.
	
Once you've done that, you can save the data.win to the game folder, replacing the original. 
(If you want you can also backup the original data.win, just so you don't have to redownload it if something goes wrong.)
From there just launch the game and you should be able to switch to your palette in the options menu!
	

UNCAPPING PALETTE SELECTION/ADDING YOUR PALETTE (NOT REPLACING):
This is a bonus guide on uncapping palette selection to be able to add your palette and not replace an existing one/to view unused palettes.

If you would like to add a palette, open up set_palette() in UndertaleModTool and simply add a new Switch case with the next free ID above the default case and paste the export button text to it .
(Remember to add a break statement! if you don't, you'll just get default colors). 
Then you must go to the object controller_options' User Event 2 (aka Other_12) to around line 180, and you need to modify this bit of code:

1 if (global.realm_reseted <= 0)
2 	 global.palette = wrap_fully((global.palette + seldir), 0, 2)
3 else
4	 global.palette = wrap_fully((global.palette + seldir), 0, 6)
	
This code is for cycling through palettes in the options menu.
Lines 1 and 3 check if you have beaten the game, so modify the one that is relevant to you. (1 is before beating the game, 3 is for after)
Lines 2 and 4 set the global.palette variable to wrap between 2 numbers. (Makes it so that if you go past a certain palette, or before the first palette, it loops around accordingly) 
In order to uncap the amount of palettes you must set the last argument (2 or 6) to the amount of palettes *minus one*. So if you added just one palette, that would be 33 - 1 = 32.
So you'd change it to:
global.palette = wrap_fully((global.palette + seldir), 0, 32)
	
From there you can save the data.win like in the other methods, and if you've done everything correctly, you're done!
You should be able to access your palette along with all the unused ones (but I personally recommend holding off and not spoiling yourself. 
These might be in the next update.)
	
If you encounter any issues, you can issue an issue on the Github page:
https://github.com/Skirlez/zeroranger-palette-maker
I'd be happy to help.











balls
"




	clipboard_set_text(str)
	displaytexttimer = 240
	with (obj_importbutton)
		displaytexttimer = 0
	with (obj_exportbutton)
		displaytexttimer = 0
}