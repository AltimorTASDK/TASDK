module UnrealScript.Engine.ParticleModuleSubUVBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleSubUVBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleSubUVBase")()); }
	private static __gshared ParticleModuleSubUVBase mDefaultProperties;
	@property final static ParticleModuleSubUVBase DefaultProperties() { mixin(MGDPC!(ParticleModuleSubUVBase, "ParticleModuleSubUVBase Engine.Default__ParticleModuleSubUVBase")()); }
}
