module UnrealScript.UDKBase.UDKAnimBlendByHoverboarding;

import UnrealScript.UDKBase.UDKAnimBlendBase;

extern(C++) interface UDKAnimBlendByHoverboarding : UDKAnimBlendBase
{
	public @property final auto ref float FallTimeBeforeAnim() { return *cast(float*)(cast(size_t)cast(void*)this + 304); }
	public @property final auto ref float BoardLeanAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref int LastActiveChildIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 296); }
}
