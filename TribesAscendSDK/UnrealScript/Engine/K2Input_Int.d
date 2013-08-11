module UnrealScript.Engine.K2Input_Int;

import UnrealScript.Engine.K2Input;

extern(C++) interface K2Input_Int : K2Input
{
	public @property final auto ref int DefaultInt() { return *cast(int*)(cast(size_t)cast(void*)this + 84); }
}
