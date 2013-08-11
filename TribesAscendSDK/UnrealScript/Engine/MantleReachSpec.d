module UnrealScript.Engine.MantleReachSpec;

import UnrealScript.Engine.ForcedReachSpec;

extern(C++) interface MantleReachSpec : ForcedReachSpec
{
public extern(D):
	@property final
	{
		bool bClimbUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 144) & 0x1) != 0; }
		bool bClimbUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 144) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 144) &= ~0x1; } return val; }
	}
}
