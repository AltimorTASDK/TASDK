module UnrealScript.UDKBase.UDKAnimBlendBySpeed;

import UnrealScript.Engine.AnimNodeBlend;

extern(C++) interface UDKAnimBlendBySpeed : AnimNodeBlend
{
public extern(D):
	@property final auto ref
	{
		float MaxSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
		float MinSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
	}
}
