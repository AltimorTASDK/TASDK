module UnrealScript.Engine.ParticleModuleLifetimeBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleLifetimeBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleLifetimeBase")()); }
	private static __gshared ParticleModuleLifetimeBase mDefaultProperties;
	@property final static ParticleModuleLifetimeBase DefaultProperties() { mixin(MGDPC!(ParticleModuleLifetimeBase, "ParticleModuleLifetimeBase Engine.Default__ParticleModuleLifetimeBase")()); }
}
