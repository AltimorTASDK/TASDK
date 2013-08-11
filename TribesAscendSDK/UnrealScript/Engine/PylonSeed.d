module UnrealScript.Engine.PylonSeed;

import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;

extern(C++) interface PylonSeed : Actor
{
public extern(D):
	@property final auto ref UObject.Pointer VfTable_IInterface_NavMeshPathObject() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 476); }
}
