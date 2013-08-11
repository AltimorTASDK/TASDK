module UnrealScript.Engine.AnimNotify_Footstep;

import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_Footstep : AnimNotify
{
public extern(D):
	@property final auto ref int FootDown() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
}
