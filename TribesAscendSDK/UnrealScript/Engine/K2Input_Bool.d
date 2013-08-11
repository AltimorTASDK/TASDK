module UnrealScript.Engine.K2Input_Bool;

import UnrealScript.Engine.K2Input;

extern(C++) interface K2Input_Bool : K2Input
{
public extern(D):
	@property final
	{
		bool bDefaultBool() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x1) != 0; }
		bool bDefaultBool(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x1; } return val; }
	}
}
