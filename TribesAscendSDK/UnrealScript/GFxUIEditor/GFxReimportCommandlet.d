module UnrealScript.GFxUIEditor.GFxReimportCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface GFxReimportCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GFxUIEditor.GFxReimportCommandlet")); }
	private static __gshared GFxReimportCommandlet mDefaultProperties;
	@property final static GFxReimportCommandlet DefaultProperties() { mixin(MGDPC("GFxReimportCommandlet", "GFxReimportCommandlet GFxUIEditor.Default__GFxReimportCommandlet")); }
}
