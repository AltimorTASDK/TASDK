module UnrealScript.Engine.PackageMapSeekFree;

import ScriptClasses;
import UnrealScript.Engine.PackageMapLevel;

extern(C++) interface PackageMapSeekFree : PackageMapLevel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PackageMapSeekFree")); }
	private static __gshared PackageMapSeekFree mDefaultProperties;
	@property final static PackageMapSeekFree DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PackageMapSeekFree)("PackageMapSeekFree Engine.Default__PackageMapSeekFree")); }
}
