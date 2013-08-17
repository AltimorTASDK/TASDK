module UnrealScript.Core.PackageMap;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface PackageMap : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Core.PackageMap")()); }
	private static __gshared PackageMap mDefaultProperties;
	@property final static PackageMap DefaultProperties() { mixin(MGDPC!(PackageMap, "PackageMap Core.Default__PackageMap")()); }
}
