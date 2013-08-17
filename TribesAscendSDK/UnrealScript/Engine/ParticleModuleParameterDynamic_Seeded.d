module UnrealScript.Engine.ParticleModuleParameterDynamic_Seeded;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleParameterDynamic;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleParameterDynamic_Seeded : ParticleModuleParameterDynamic
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleParameterDynamic_Seeded")); }
	private static __gshared ParticleModuleParameterDynamic_Seeded mDefaultProperties;
	@property final static ParticleModuleParameterDynamic_Seeded DefaultProperties() { mixin(MGDPC("ParticleModuleParameterDynamic_Seeded", "ParticleModuleParameterDynamic_Seeded Engine.Default__ParticleModuleParameterDynamic_Seeded")); }
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { mixin(MGPC("ParticleModule.ParticleRandomSeedInfo", 84)); }
}
