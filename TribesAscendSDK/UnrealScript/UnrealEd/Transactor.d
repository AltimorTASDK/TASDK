module UnrealScript.UnrealEd.Transactor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface Transactor : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.Transactor")()); }
	private static __gshared Transactor mDefaultProperties;
	@property final static Transactor DefaultProperties() { mixin(MGDPC!(Transactor, "Transactor UnrealEd.Default__Transactor")()); }
}
