module UnrealScript.Engine.ParticleModuleMeshRotation_Seeded;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleMeshRotation;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleMeshRotation_Seeded : ParticleModuleMeshRotation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleMeshRotation_Seeded")()); }
	private static __gshared ParticleModuleMeshRotation_Seeded mDefaultProperties;
	@property final static ParticleModuleMeshRotation_Seeded DefaultProperties() { mixin(MGDPC!(ParticleModuleMeshRotation_Seeded, "ParticleModuleMeshRotation_Seeded Engine.Default__ParticleModuleMeshRotation_Seeded")()); }
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { mixin(MGPC!(ParticleModule.ParticleRandomSeedInfo, 104)()); }
}
