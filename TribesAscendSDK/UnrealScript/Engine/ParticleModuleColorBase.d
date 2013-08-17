module UnrealScript.Engine.ParticleModuleColorBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleColorBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleColorBase")); }
	private static __gshared ParticleModuleColorBase mDefaultProperties;
	@property final static ParticleModuleColorBase DefaultProperties() { mixin(MGDPC("ParticleModuleColorBase", "ParticleModuleColorBase Engine.Default__ParticleModuleColorBase")); }
}
