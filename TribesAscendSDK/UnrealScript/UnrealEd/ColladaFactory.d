module UnrealScript.UnrealEd.ColladaFactory;

import UnrealScript.Core.Factory;

extern(C++) interface ColladaFactory : Factory
{
	public @property final bool bImportAsSkeletalMesh() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x1) != 0; }
	public @property final bool bImportAsSkeletalMesh(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x1; } return val; }
}
