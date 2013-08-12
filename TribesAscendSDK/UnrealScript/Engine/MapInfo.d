module UnrealScript.Engine.MapInfo;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface MapInfo : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MapInfo")); }
}
