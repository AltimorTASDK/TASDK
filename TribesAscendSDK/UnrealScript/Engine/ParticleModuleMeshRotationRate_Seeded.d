module UnrealScript.Engine.ParticleModuleMeshRotationRate_Seeded;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleMeshRotationRate;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleMeshRotationRate_Seeded : ParticleModuleMeshRotationRate
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleMeshRotationRate_Seeded")()); }
	private static __gshared ParticleModuleMeshRotationRate_Seeded mDefaultProperties;
	@property final static ParticleModuleMeshRotationRate_Seeded DefaultProperties() { mixin(MGDPC!(ParticleModuleMeshRotationRate_Seeded, "ParticleModuleMeshRotationRate_Seeded Engine.Default__ParticleModuleMeshRotationRate_Seeded")()); }
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { mixin(MGPC!(ParticleModule.ParticleRandomSeedInfo, 100)()); }
}
