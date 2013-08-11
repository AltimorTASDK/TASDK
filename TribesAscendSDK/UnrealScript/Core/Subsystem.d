module UnrealScript.Core.Subsystem;

import UnrealScript.Core.UObject;

extern(C++) interface Subsystem : UObject
{
public extern(D):
	@property final auto ref UObject.Pointer VfTable_FExec() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
}
