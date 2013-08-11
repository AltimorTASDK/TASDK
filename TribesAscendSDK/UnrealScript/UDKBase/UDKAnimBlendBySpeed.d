module UnrealScript.UDKBase.UDKAnimBlendBySpeed;

import UnrealScript.Engine.AnimNodeBlend;

extern(C++) interface UDKAnimBlendBySpeed : AnimNodeBlend
{
	public @property final auto ref float MaxSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref float MinSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
}
