module UnrealScript.Engine.ParticleModuleLifetime_Seeded;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;
import UnrealScript.Engine.ParticleModuleLifetime;

extern(C++) interface ParticleModuleLifetime_Seeded : ParticleModuleLifetime
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleLifetime_Seeded")); }
	private static __gshared ParticleModuleLifetime_Seeded mDefaultProperties;
	@property final static ParticleModuleLifetime_Seeded DefaultProperties() { mixin(MGDPC("ParticleModuleLifetime_Seeded", "ParticleModuleLifetime_Seeded Engine.Default__ParticleModuleLifetime_Seeded")); }
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { mixin(MGPC("ParticleModule.ParticleRandomSeedInfo", 100)); }
}
