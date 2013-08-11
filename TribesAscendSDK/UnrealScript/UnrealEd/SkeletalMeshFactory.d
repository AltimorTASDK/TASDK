module UnrealScript.UnrealEd.SkeletalMeshFactory;

import UnrealScript.Core.Factory;

extern(C++) interface SkeletalMeshFactory : Factory
{
	public @property final bool bAssumeMayaCoordinates() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x1) != 0; }
	public @property final bool bAssumeMayaCoordinates(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x1; } return val; }
}
