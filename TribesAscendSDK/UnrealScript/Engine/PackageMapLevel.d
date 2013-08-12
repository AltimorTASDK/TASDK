module UnrealScript.Engine.PackageMapLevel;

import ScriptClasses;
import UnrealScript.Core.PackageMap;

extern(C++) interface PackageMapLevel : PackageMap
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PackageMapLevel")); }
}
