// Based off of the Built-in UMT script "FindAndReplace.csx"
using System.Text;
using System;
using System.IO;
using System.Threading;
using System.Threading.Tasks;

EnsureDataLoaded();

if (Data?.GeneralInfo?.DisplayName?.Content.ToLower() != "zeroranger")
{
    ScriptError("Error 0: This is not ZeroRanger's data.win. What did you think was gonna happen?");
    return;
}

String palette = SimpleTextInput("Text input box", "Enter the output from ZeroRanger palette maker (and change the palette name if you wish)", "", true);
ScriptMessage("You will now be asked to enter the palette's name you'd like to replace. All palette names can be viewed from the palette maker's options menu. You shouldn't replace anything higher than ID 5, since you wouldn't be able to access it.");
String name = SimpleTextInput("Text input box", "Enter the name of the palette you'd like to replace", "", false).Replace("\"", "");
SyncBinding("Strings, Variables, Functions", true);
var success = false;
await Task.Run(() => {
	var txt = GetDecompiledText("gml_Script_set_palette");
	
	// Get start and end of the specific palette switch case
	var startPos = txt.IndexOf("palet_name = \"" + name + "\"");
	if (startPos == -1) {
		ScriptError("Error 1: Could not locate the palette you wanted to replace!");
		return;
	}
	
	var endPos = txt.IndexOf("break", startPos);
	if (endPos == -1) // Must be the default case
		endPos = txt.IndexOf("}", startPos) - 1;
	
	var oldPalette = txt.Substring(startPos, endPos - startPos);
	ReplaceTextInGML("gml_Script_set_palette", oldPalette, palette);
	success = true;
});
DisableAllSyncBindings();
if (success == true)
	ScriptMessage("Palette replaced successfully!");