module UnrealScript.Engine.ParticleModuleVelocityBase;

import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleVelocityBase : ParticleModule
{
	public @property final bool bApplyOwnerScale() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x2) != 0; }
	public @property final bool bApplyOwnerScale(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x2; } return val; }
	public @property final bool bInWorldSpace() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
	public @property final bool bInWorldSpace(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
}
