module UnrealScript.Engine.ParticleModuleSpawn;

import ScriptClasses;
import UnrealScript.Engine.ParticleEmitter;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleSpawnBase;

extern(C++) interface ParticleModuleSpawn : ParticleModuleSpawnBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleSpawn")); }
	@property final auto ref
	{
		ScriptArray!(ParticleEmitter.ParticleBurst) BurstList() { return *cast(ScriptArray!(ParticleEmitter.ParticleBurst)*)(cast(size_t)cast(void*)this + 136); }
		ParticleEmitter.EParticleBurstMethod ParticleBurstMethod() { return *cast(ParticleEmitter.EParticleBurstMethod*)(cast(size_t)cast(void*)this + 132); }
		DistributionFloat.RawDistributionFloat RateScale() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 104); }
		DistributionFloat.RawDistributionFloat Rate() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 76); }
	}
}
