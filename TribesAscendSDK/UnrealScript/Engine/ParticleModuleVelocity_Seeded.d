module UnrealScript.Engine.ParticleModuleVelocity_Seeded;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;
import UnrealScript.Engine.ParticleModuleVelocity;

extern(C++) interface ParticleModuleVelocity_Seeded : ParticleModuleVelocity
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleVelocity_Seeded")()); }
	private static __gshared ParticleModuleVelocity_Seeded mDefaultProperties;
	@property final static ParticleModuleVelocity_Seeded DefaultProperties() { mixin(MGDPC!(ParticleModuleVelocity_Seeded, "ParticleModuleVelocity_Seeded Engine.Default__ParticleModuleVelocity_Seeded")()); }
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { mixin(MGPC!(ParticleModule.ParticleRandomSeedInfo, 132)()); }
}
