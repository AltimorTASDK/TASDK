module UnrealScript.UDKBase.UDKAnimBlendByHoverboardTurn;

import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface UDKAnimBlendByHoverboardTurn : AnimNodeBlendBase
{
	public @property final auto ref float CurrentAnimWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref float MaxBlendPerSec() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref float TurnScale() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
}
