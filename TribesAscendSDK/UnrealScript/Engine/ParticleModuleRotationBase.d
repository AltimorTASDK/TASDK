module UnrealScript.Engine.ParticleModuleRotationBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleRotationBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleRotationBase")); }
	private static __gshared ParticleModuleRotationBase mDefaultProperties;
	@property final static ParticleModuleRotationBase DefaultProperties() { mixin(MGDPC("ParticleModuleRotationBase", "ParticleModuleRotationBase Engine.Default__ParticleModuleRotationBase")); }
}
