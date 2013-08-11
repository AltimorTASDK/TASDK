module UnrealScript.Engine.ParticleModuleEventReceiverKillParticles;

import UnrealScript.Engine.ParticleModuleEventReceiverBase;

extern(C++) interface ParticleModuleEventReceiverKillParticles : ParticleModuleEventReceiverBase
{
	public @property final bool bStopSpawning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x1) != 0; }
	public @property final bool bStopSpawning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x1; } return val; }
}
