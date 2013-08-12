module UnrealScript.Engine.WallTransReachSpec;

import ScriptClasses;
import UnrealScript.Engine.ForcedReachSpec;

extern(C++) interface WallTransReachSpec : ForcedReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.WallTransReachSpec")); }
}
