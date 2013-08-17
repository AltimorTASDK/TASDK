module UnrealScript.UnrealEd.DiffPackagesCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface DiffPackagesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.DiffPackagesCommandlet")()); }
	private static __gshared DiffPackagesCommandlet mDefaultProperties;
	@property final static DiffPackagesCommandlet DefaultProperties() { mixin(MGDPC!(DiffPackagesCommandlet, "DiffPackagesCommandlet UnrealEd.Default__DiffPackagesCommandlet")()); }
}
