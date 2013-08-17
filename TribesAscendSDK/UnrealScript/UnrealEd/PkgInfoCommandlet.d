module UnrealScript.UnrealEd.PkgInfoCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface PkgInfoCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.PkgInfoCommandlet")()); }
	private static __gshared PkgInfoCommandlet mDefaultProperties;
	@property final static PkgInfoCommandlet DefaultProperties() { mixin(MGDPC!(PkgInfoCommandlet, "PkgInfoCommandlet UnrealEd.Default__PkgInfoCommandlet")()); }
}
