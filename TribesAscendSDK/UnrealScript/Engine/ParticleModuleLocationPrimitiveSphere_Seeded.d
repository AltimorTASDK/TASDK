module UnrealScript.Engine.ParticleModuleLocationPrimitiveSphere_Seeded;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleLocationPrimitiveSphere;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleLocationPrimitiveSphere_Seeded : ParticleModuleLocationPrimitiveSphere
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleLocationPrimitiveSphere_Seeded")()); }
	private static __gshared ParticleModuleLocationPrimitiveSphere_Seeded mDefaultProperties;
	@property final static ParticleModuleLocationPrimitiveSphere_Seeded DefaultProperties() { mixin(MGDPC!(ParticleModuleLocationPrimitiveSphere_Seeded, "ParticleModuleLocationPrimitiveSphere_Seeded Engine.Default__ParticleModuleLocationPrimitiveSphere_Seeded")()); }
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { mixin(MGPC!(ParticleModule.ParticleRandomSeedInfo, 160)()); }
}
