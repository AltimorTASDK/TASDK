module UnrealScript.Engine.K2Input_Vector;

import ScriptClasses;
import UnrealScript.Engine.K2Input;

extern(C++) interface K2Input_Vector : K2Input
{
public extern(D):
	@property final auto ref Vector DefaultVector() { return *cast(Vector*)(cast(size_t)cast(void*)this + 84); }
}
