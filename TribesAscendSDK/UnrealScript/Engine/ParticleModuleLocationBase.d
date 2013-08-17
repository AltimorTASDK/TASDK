module UnrealScript.Engine.ParticleModuleLocationBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleLocationBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleLocationBase")); }
	private static __gshared ParticleModuleLocationBase mDefaultProperties;
	@property final static ParticleModuleLocationBase DefaultProperties() { mixin(MGDPC("ParticleModuleLocationBase", "ParticleModuleLocationBase Engine.Default__ParticleModuleLocationBase")); }
}
