module UnrealScript.Engine.SwatTurnReachSpec;

import ScriptClasses;
import UnrealScript.Engine.ForcedReachSpec;

extern(C++) interface SwatTurnReachSpec : ForcedReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SwatTurnReachSpec")); }
	@property final auto ref ubyte SpecDirection() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 144); }
}
