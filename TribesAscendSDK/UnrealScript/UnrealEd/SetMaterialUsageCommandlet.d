module UnrealScript.UnrealEd.SetMaterialUsageCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface SetMaterialUsageCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.SetMaterialUsageCommandlet")()); }
	private static __gshared SetMaterialUsageCommandlet mDefaultProperties;
	@property final static SetMaterialUsageCommandlet DefaultProperties() { mixin(MGDPC!(SetMaterialUsageCommandlet, "SetMaterialUsageCommandlet UnrealEd.Default__SetMaterialUsageCommandlet")()); }
}
