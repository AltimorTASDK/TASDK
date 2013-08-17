module UnrealScript.UnrealEd.LoadPackageCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface LoadPackageCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.LoadPackageCommandlet")()); }
	private static __gshared LoadPackageCommandlet mDefaultProperties;
	@property final static LoadPackageCommandlet DefaultProperties() { mixin(MGDPC!(LoadPackageCommandlet, "LoadPackageCommandlet UnrealEd.Default__LoadPackageCommandlet")()); }
}
