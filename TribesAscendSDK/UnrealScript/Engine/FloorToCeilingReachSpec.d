module UnrealScript.Engine.FloorToCeilingReachSpec;

import ScriptClasses;
import UnrealScript.Engine.ForcedReachSpec;

extern(C++) interface FloorToCeilingReachSpec : ForcedReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FloorToCeilingReachSpec")); }
}
