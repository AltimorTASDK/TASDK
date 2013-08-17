module UnrealScript.Engine.ParticleModuleKillBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleKillBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleKillBase")()); }
	private static __gshared ParticleModuleKillBase mDefaultProperties;
	@property final static ParticleModuleKillBase DefaultProperties() { mixin(MGDPC!(ParticleModuleKillBase, "ParticleModuleKillBase Engine.Default__ParticleModuleKillBase")()); }
}
