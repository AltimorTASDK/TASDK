module UnrealScript.Engine.K2Input_Float;

import UnrealScript.Engine.K2Input;

extern(C++) interface K2Input_Float : K2Input
{
public extern(D):
	@property final auto ref float DefaultFloat() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
}
