module UnrealScript.Engine.ParticleModuleSpawn;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleEmitter;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleSpawnBase;

extern(C++) interface ParticleModuleSpawn : ParticleModuleSpawnBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleSpawn")()); }
	private static __gshared ParticleModuleSpawn mDefaultProperties;
	@property final static ParticleModuleSpawn DefaultProperties() { mixin(MGDPC!(ParticleModuleSpawn, "ParticleModuleSpawn Engine.Default__ParticleModuleSpawn")()); }
	@property final auto ref
	{
		ScriptArray!(ParticleEmitter.ParticleBurst) BurstList() { mixin(MGPC!("ScriptArray!(ParticleEmitter.ParticleBurst)", 136)()); }
		ParticleEmitter.EParticleBurstMethod ParticleBurstMethod() { mixin(MGPC!("ParticleEmitter.EParticleBurstMethod", 132)()); }
		DistributionFloat.RawDistributionFloat RateScale() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 104)()); }
		DistributionFloat.RawDistributionFloat Rate() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 76)()); }
	}
}
