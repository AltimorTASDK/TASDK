module UnrealScript.Engine.ParticleModuleSizeBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleSizeBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleSizeBase")); }
	private static __gshared ParticleModuleSizeBase mDefaultProperties;
	@property final static ParticleModuleSizeBase DefaultProperties() { mixin(MGDPC("ParticleModuleSizeBase", "ParticleModuleSizeBase Engine.Default__ParticleModuleSizeBase")); }
}
