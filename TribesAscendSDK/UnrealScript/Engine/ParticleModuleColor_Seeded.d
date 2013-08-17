module UnrealScript.Engine.ParticleModuleColor_Seeded;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleColor;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleColor_Seeded : ParticleModuleColor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleColor_Seeded")); }
	private static __gshared ParticleModuleColor_Seeded mDefaultProperties;
	@property final static ParticleModuleColor_Seeded DefaultProperties() { mixin(MGDPC("ParticleModuleColor_Seeded", "ParticleModuleColor_Seeded Engine.Default__ParticleModuleColor_Seeded")); }
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { mixin(MGPC("ParticleModule.ParticleRandomSeedInfo", 132)); }
}
