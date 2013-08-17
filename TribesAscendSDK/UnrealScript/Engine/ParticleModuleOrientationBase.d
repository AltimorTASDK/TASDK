module UnrealScript.Engine.ParticleModuleOrientationBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleOrientationBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleOrientationBase")); }
	private static __gshared ParticleModuleOrientationBase mDefaultProperties;
	@property final static ParticleModuleOrientationBase DefaultProperties() { mixin(MGDPC("ParticleModuleOrientationBase", "ParticleModuleOrientationBase Engine.Default__ParticleModuleOrientationBase")); }
}
