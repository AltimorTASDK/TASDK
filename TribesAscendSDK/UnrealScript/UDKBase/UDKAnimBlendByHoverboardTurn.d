module UnrealScript.UDKBase.UDKAnimBlendByHoverboardTurn;

import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface UDKAnimBlendByHoverboardTurn : AnimNodeBlendBase
{
public extern(D):
	@property final auto ref
	{
		float CurrentAnimWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
		float MaxBlendPerSec() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
		float TurnScale() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	}
}
