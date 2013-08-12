module UnrealScript.UDKBase.UDKJumpPadReachSpec;

import ScriptClasses;
import UnrealScript.UDKBase.UDKTrajectoryReachSpec;

extern(C++) interface UDKJumpPadReachSpec : UDKTrajectoryReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKJumpPadReachSpec")); }
}
