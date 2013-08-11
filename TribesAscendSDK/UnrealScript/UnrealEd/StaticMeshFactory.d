module UnrealScript.UnrealEd.StaticMeshFactory;

import UnrealScript.Core.Factory;

extern(C++) interface StaticMeshFactory : Factory
{
	public @property final auto ref int Pitch() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref int Roll() { return *cast(int*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref int Yaw() { return *cast(int*)(cast(size_t)cast(void*)this + 120); }
	public @property final bool bOneConvexPerUCXObject() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x1) != 0; }
	public @property final bool bOneConvexPerUCXObject(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x1; } return val; }
	public @property final bool bSingleSmoothGroupSingleTangent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x1) != 0; }
	public @property final bool bSingleSmoothGroupSingleTangent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x1; } return val; }
	public @property final bool bReplaceExistingVertexColors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x1) != 0; }
	public @property final bool bReplaceExistingVertexColors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x1; } return val; }
}
