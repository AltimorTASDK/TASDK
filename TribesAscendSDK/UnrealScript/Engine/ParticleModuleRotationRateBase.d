module UnrealScript.Engine.ParticleModuleRotationRateBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleRotationRateBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleRotationRateBase")); }
	private static __gshared ParticleModuleRotationRateBase mDefaultProperties;
	@property final static ParticleModuleRotationRateBase DefaultProperties() { mixin(MGDPC("ParticleModuleRotationRateBase", "ParticleModuleRotationRateBase Engine.Default__ParticleModuleRotationRateBase")); }
}
