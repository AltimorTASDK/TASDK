module UnrealScript.UDKBase.UDKAnimBlendByHoverboarding;

import UnrealScript.UDKBase.UDKAnimBlendBase;

extern(C++) interface UDKAnimBlendByHoverboarding : UDKAnimBlendBase
{
public extern(D):
	@property final auto ref
	{
		float FallTimeBeforeAnim() { return *cast(float*)(cast(size_t)cast(void*)this + 304); }
		float BoardLeanAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 300); }
		int LastActiveChildIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 296); }
	}
}
