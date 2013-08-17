module UnrealScript.Engine.ParticleModuleRotation_Seeded;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleRotation;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleRotation_Seeded : ParticleModuleRotation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleRotation_Seeded")()); }
	private static __gshared ParticleModuleRotation_Seeded mDefaultProperties;
	@property final static ParticleModuleRotation_Seeded DefaultProperties() { mixin(MGDPC!(ParticleModuleRotation_Seeded, "ParticleModuleRotation_Seeded Engine.Default__ParticleModuleRotation_Seeded")()); }
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { mixin(MGPC!("ParticleModule.ParticleRandomSeedInfo", 100)()); }
}
