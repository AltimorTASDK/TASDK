module UnrealScript.Engine.TestSplittingVolume;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.Volume;

extern(C++) interface TestSplittingVolume : Volume
{
	public @property final auto ref UObject.Pointer VfTable_IInterface_NavMeshPathObject() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 520); }
}
