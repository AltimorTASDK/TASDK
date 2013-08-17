module UnrealScript.Core.Package;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface Package : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Core.Package")()); }
	private static __gshared Package mDefaultProperties;
	@property final static Package DefaultProperties() { mixin(MGDPC!(Package, "Package Core.Default__Package")()); }
}
