module UnrealScript.Engine.PackageMapSeekFree;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PackageMapLevel;

extern(C++) interface PackageMapSeekFree : PackageMapLevel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PackageMapSeekFree")); }
	private static __gshared PackageMapSeekFree mDefaultProperties;
	@property final static PackageMapSeekFree DefaultProperties() { mixin(MGDPC("PackageMapSeekFree", "PackageMapSeekFree Engine.Default__PackageMapSeekFree")); }
}
