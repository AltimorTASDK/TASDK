module UnrealScript.Engine.ParticleModuleSpawnBase;

import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleSpawnBase : ParticleModule
{
	public @property final bool bProcessBurstList() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x2) != 0; }
	public @property final bool bProcessBurstList(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x2; } return val; }
	public @property final bool bProcessSpawnRate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
	public @property final bool bProcessSpawnRate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
}
