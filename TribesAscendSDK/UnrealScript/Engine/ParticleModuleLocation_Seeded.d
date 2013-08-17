module UnrealScript.Engine.ParticleModuleLocation_Seeded;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;
import UnrealScript.Engine.ParticleModuleLocation;

extern(C++) interface ParticleModuleLocation_Seeded : ParticleModuleLocation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleLocation_Seeded")()); }
	private static __gshared ParticleModuleLocation_Seeded mDefaultProperties;
	@property final static ParticleModuleLocation_Seeded DefaultProperties() { mixin(MGDPC!(ParticleModuleLocation_Seeded, "ParticleModuleLocation_Seeded Engine.Default__ParticleModuleLocation_Seeded")()); }
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { mixin(MGPC!("ParticleModule.ParticleRandomSeedInfo", 100)()); }
}
