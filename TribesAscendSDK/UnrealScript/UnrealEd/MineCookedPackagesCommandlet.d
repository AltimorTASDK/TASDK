module UnrealScript.UnrealEd.MineCookedPackagesCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface MineCookedPackagesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.MineCookedPackagesCommandlet")()); }
	private static __gshared MineCookedPackagesCommandlet mDefaultProperties;
	@property final static MineCookedPackagesCommandlet DefaultProperties() { mixin(MGDPC!(MineCookedPackagesCommandlet, "MineCookedPackagesCommandlet UnrealEd.Default__MineCookedPackagesCommandlet")()); }
}
