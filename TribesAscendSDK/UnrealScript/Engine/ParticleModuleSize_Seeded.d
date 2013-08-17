module UnrealScript.Engine.ParticleModuleSize_Seeded;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;
import UnrealScript.Engine.ParticleModuleSize;

extern(C++) interface ParticleModuleSize_Seeded : ParticleModuleSize
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleSize_Seeded")()); }
	private static __gshared ParticleModuleSize_Seeded mDefaultProperties;
	@property final static ParticleModuleSize_Seeded DefaultProperties() { mixin(MGDPC!(ParticleModuleSize_Seeded, "ParticleModuleSize_Seeded Engine.Default__ParticleModuleSize_Seeded")()); }
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { mixin(MGPC!("ParticleModule.ParticleRandomSeedInfo", 100)()); }
}
