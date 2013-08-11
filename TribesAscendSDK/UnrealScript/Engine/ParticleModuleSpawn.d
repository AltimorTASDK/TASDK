module UnrealScript.Engine.ParticleModuleSpawn;

import ScriptClasses;
import UnrealScript.Engine.ParticleEmitter;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleSpawnBase;

extern(C++) interface ParticleModuleSpawn : ParticleModuleSpawnBase
{
	public @property final auto ref ScriptArray!(ParticleEmitter.ParticleBurst) BurstList() { return *cast(ScriptArray!(ParticleEmitter.ParticleBurst)*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref ParticleEmitter.EParticleBurstMethod ParticleBurstMethod() { return *cast(ParticleEmitter.EParticleBurstMethod*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref DistributionFloat.RawDistributionFloat RateScale() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref DistributionFloat.RawDistributionFloat Rate() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 76); }
}
