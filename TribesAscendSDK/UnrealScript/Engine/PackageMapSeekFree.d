module UnrealScript.Engine.PackageMapSeekFree;

import ScriptClasses;
import UnrealScript.Engine.PackageMapLevel;

extern(C++) interface PackageMapSeekFree : PackageMapLevel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PackageMapSeekFree")); }
}
