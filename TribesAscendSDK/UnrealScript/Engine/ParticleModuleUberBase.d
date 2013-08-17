module UnrealScript.Engine.ParticleModuleUberBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleUberBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleUberBase")()); }
	private static __gshared ParticleModuleUberBase mDefaultProperties;
	@property final static ParticleModuleUberBase DefaultProperties() { mixin(MGDPC!(ParticleModuleUberBase, "ParticleModuleUberBase Engine.Default__ParticleModuleUberBase")()); }
	@property final auto ref ScriptArray!(ScriptName) RequiredModules() { mixin(MGPC!("ScriptArray!(ScriptName)", 72)()); }
}
