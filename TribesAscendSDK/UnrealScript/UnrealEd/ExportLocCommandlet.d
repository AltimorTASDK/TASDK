module UnrealScript.UnrealEd.ExportLocCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface ExportLocCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.ExportLocCommandlet")); }
	private static __gshared ExportLocCommandlet mDefaultProperties;
	@property final static ExportLocCommandlet DefaultProperties() { mixin(MGDPC("ExportLocCommandlet", "ExportLocCommandlet UnrealEd.Default__ExportLocCommandlet")); }
}
