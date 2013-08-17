module UnrealScript.Engine.ParticleModuleMaterialBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleMaterialBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleMaterialBase")()); }
	private static __gshared ParticleModuleMaterialBase mDefaultProperties;
	@property final static ParticleModuleMaterialBase DefaultProperties() { mixin(MGDPC!(ParticleModuleMaterialBase, "ParticleModuleMaterialBase Engine.Default__ParticleModuleMaterialBase")()); }
}
