module UnrealScript.UnrealEd.SetPackageFlagsCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface SetPackageFlagsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.SetPackageFlagsCommandlet")); }
	private static __gshared SetPackageFlagsCommandlet mDefaultProperties;
	@property final static SetPackageFlagsCommandlet DefaultProperties() { mixin(MGDPC("SetPackageFlagsCommandlet", "SetPackageFlagsCommandlet UnrealEd.Default__SetPackageFlagsCommandlet")); }
}
