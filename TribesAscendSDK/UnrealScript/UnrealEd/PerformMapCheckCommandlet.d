module UnrealScript.UnrealEd.PerformMapCheckCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface PerformMapCheckCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.PerformMapCheckCommandlet")); }
	private static __gshared PerformMapCheckCommandlet mDefaultProperties;
	@property final static PerformMapCheckCommandlet DefaultProperties() { mixin(MGDPC("PerformMapCheckCommandlet", "PerformMapCheckCommandlet UnrealEd.Default__PerformMapCheckCommandlet")); }
}
