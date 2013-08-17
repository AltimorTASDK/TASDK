module UnrealScript.Engine.ParticleModuleParameterBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleParameterBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleParameterBase")()); }
	private static __gshared ParticleModuleParameterBase mDefaultProperties;
	@property final static ParticleModuleParameterBase DefaultProperties() { mixin(MGDPC!(ParticleModuleParameterBase, "ParticleModuleParameterBase Engine.Default__ParticleModuleParameterBase")()); }
}
