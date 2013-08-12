module UnrealScript.Engine.SlotToSlotReachSpec;

import ScriptClasses;
import UnrealScript.Engine.ForcedReachSpec;

extern(C++) interface SlotToSlotReachSpec : ForcedReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SlotToSlotReachSpec")); }
	@property final auto ref ubyte SpecDirection() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 144); }
}
