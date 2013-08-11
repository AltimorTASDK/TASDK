module UnrealScript.Engine.ParticleModuleOrbitBase;

import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleOrbitBase : ParticleModule
{
	public @property final bool bUseEmitterTime() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
	public @property final bool bUseEmitterTime(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
}
