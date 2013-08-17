module UnrealScript.Engine.PackageMapLevel;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.PackageMap;

extern(C++) interface PackageMapLevel : PackageMap
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PackageMapLevel")); }
	private static __gshared PackageMapLevel mDefaultProperties;
	@property final static PackageMapLevel DefaultProperties() { mixin(MGDPC("PackageMapLevel", "PackageMapLevel Engine.Default__PackageMapLevel")); }
}
