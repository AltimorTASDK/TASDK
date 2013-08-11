module UnrealScript.Engine.K2Input_Rotator;

import ScriptClasses;
import UnrealScript.Engine.K2Input;

extern(C++) interface K2Input_Rotator : K2Input
{
	public @property final auto ref Rotator DefaultRotator() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 84); }
}
