module UnrealScript.Engine.ParticleModuleAccelerationBase;

import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleAccelerationBase : ParticleModule
{
	public @property final bool bAlwaysInWorldSpace() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
	public @property final bool bAlwaysInWorldSpace(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
}
