module UnrealScript.Engine.EnvironmentVolume;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Volume;

extern(C++) interface EnvironmentVolume : Volume
{
	public @property final bool bSplitNavMesh() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x1) != 0; }
	public @property final bool bSplitNavMesh(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x1; } return val; }
	public @property final auto ref UObject.Pointer VfTable_IInterface_NavMeshPathObject() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 524); }
	public @property final auto ref UObject.Pointer VfTable_IInterface_NavMeshPathObstacle() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 520); }
	final void SetSplitNavMesh(bool bNewValue)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15594], params.ptr, cast(void*)0);
	}
}
