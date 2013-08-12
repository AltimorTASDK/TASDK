module UnrealScript.Engine.TeleportReachSpec;

import ScriptClasses;
import UnrealScript.Engine.ReachSpec;

extern(C++) interface TeleportReachSpec : ReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.TeleportReachSpec")); }
}
