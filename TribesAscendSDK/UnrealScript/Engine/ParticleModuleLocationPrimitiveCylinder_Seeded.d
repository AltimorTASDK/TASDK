module UnrealScript.Engine.ParticleModuleLocationPrimitiveCylinder_Seeded;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleLocationPrimitiveCylinder;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleLocationPrimitiveCylinder_Seeded : ParticleModuleLocationPrimitiveCylinder
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleLocationPrimitiveCylinder_Seeded")); }
	private static __gshared ParticleModuleLocationPrimitiveCylinder_Seeded mDefaultProperties;
	@property final static ParticleModuleLocationPrimitiveCylinder_Seeded DefaultProperties() { mixin(MGDPC("ParticleModuleLocationPrimitiveCylinder_Seeded", "ParticleModuleLocationPrimitiveCylinder_Seeded Engine.Default__ParticleModuleLocationPrimitiveCylinder_Seeded")); }
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { mixin(MGPC("ParticleModule.ParticleRandomSeedInfo", 196)); }
}
