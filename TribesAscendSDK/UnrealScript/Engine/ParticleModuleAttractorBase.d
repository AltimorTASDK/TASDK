module UnrealScript.Engine.ParticleModuleAttractorBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleAttractorBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleAttractorBase")); }
	private static __gshared ParticleModuleAttractorBase mDefaultProperties;
	@property final static ParticleModuleAttractorBase DefaultProperties() { mixin(MGDPC("ParticleModuleAttractorBase", "ParticleModuleAttractorBase Engine.Default__ParticleModuleAttractorBase")); }
}
