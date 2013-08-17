module UnrealScript.Engine.ParticleModuleCameraBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleCameraBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleCameraBase")); }
	private static __gshared ParticleModuleCameraBase mDefaultProperties;
	@property final static ParticleModuleCameraBase DefaultProperties() { mixin(MGDPC("ParticleModuleCameraBase", "ParticleModuleCameraBase Engine.Default__ParticleModuleCameraBase")); }
}
