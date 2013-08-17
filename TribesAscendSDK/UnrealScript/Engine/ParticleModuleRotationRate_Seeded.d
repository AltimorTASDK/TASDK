module UnrealScript.Engine.ParticleModuleRotationRate_Seeded;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleRotationRate;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleRotationRate_Seeded : ParticleModuleRotationRate
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleRotationRate_Seeded")); }
	private static __gshared ParticleModuleRotationRate_Seeded mDefaultProperties;
	@property final static ParticleModuleRotationRate_Seeded DefaultProperties() { mixin(MGDPC("ParticleModuleRotationRate_Seeded", "ParticleModuleRotationRate_Seeded Engine.Default__ParticleModuleRotationRate_Seeded")); }
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { mixin(MGPC("ParticleModule.ParticleRandomSeedInfo", 100)); }
}
