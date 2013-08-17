module UnrealScript.Engine.ParticleModuleEventBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleEventBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleEventBase")()); }
	private static __gshared ParticleModuleEventBase mDefaultProperties;
	@property final static ParticleModuleEventBase DefaultProperties() { mixin(MGDPC!(ParticleModuleEventBase, "ParticleModuleEventBase Engine.Default__ParticleModuleEventBase")()); }
}
