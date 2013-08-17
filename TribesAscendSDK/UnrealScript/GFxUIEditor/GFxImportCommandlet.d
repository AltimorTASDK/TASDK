module UnrealScript.GFxUIEditor.GFxImportCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface GFxImportCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GFxUIEditor.GFxImportCommandlet")); }
	private static __gshared GFxImportCommandlet mDefaultProperties;
	@property final static GFxImportCommandlet DefaultProperties() { mixin(MGDPC("GFxImportCommandlet", "GFxImportCommandlet GFxUIEditor.Default__GFxImportCommandlet")); }
}
