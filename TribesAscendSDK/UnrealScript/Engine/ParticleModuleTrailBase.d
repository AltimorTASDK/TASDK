module UnrealScript.Engine.ParticleModuleTrailBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleTrailBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleTrailBase")()); }
	private static __gshared ParticleModuleTrailBase mDefaultProperties;
	@property final static ParticleModuleTrailBase DefaultProperties() { mixin(MGDPC!(ParticleModuleTrailBase, "ParticleModuleTrailBase Engine.Default__ParticleModuleTrailBase")()); }
}
