module UnrealScript.Engine.SlotToSlotReachSpec;

import UnrealScript.Engine.ForcedReachSpec;

extern(C++) interface SlotToSlotReachSpec : ForcedReachSpec
{
public extern(D):
	@property final auto ref ubyte SpecDirection() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 144); }
}
