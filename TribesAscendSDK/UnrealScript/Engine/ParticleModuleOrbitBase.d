module UnrealScript.Engine.ParticleModuleOrbitBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleOrbitBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleOrbitBase")()); }
	private static __gshared ParticleModuleOrbitBase mDefaultProperties;
	@property final static ParticleModuleOrbitBase DefaultProperties() { mixin(MGDPC!(ParticleModuleOrbitBase, "ParticleModuleOrbitBase Engine.Default__ParticleModuleOrbitBase")()); }
	@property final
	{
		bool bUseEmitterTime() { mixin(MGBPC!(72, 0x1)()); }
		bool bUseEmitterTime(bool val) { mixin(MSBPC!(72, 0x1)()); }
	}
}
