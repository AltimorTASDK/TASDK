module UnrealScript.IpDrv.MCPBase;

import UnrealScript.Core.UObject;

extern(C++) interface MCPBase : UObject
{
public extern(D):
	@property final auto ref UObject.Pointer VfTable_FTickableObject() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
}
