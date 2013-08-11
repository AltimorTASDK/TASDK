module UnrealScript.Engine.CoverSlipReachSpec;

import UnrealScript.Engine.ForcedReachSpec;

extern(C++) interface CoverSlipReachSpec : ForcedReachSpec
{
	public @property final auto ref ubyte SpecDirection() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 144); }
}
