module UnrealScript.Engine.ParticleModuleLocationEmitterDirect;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleLocationBase;

extern(C++) interface ParticleModuleLocationEmitterDirect : ParticleModuleLocationBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleLocationEmitterDirect")()); }
	private static __gshared ParticleModuleLocationEmitterDirect mDefaultProperties;
	@property final static ParticleModuleLocationEmitterDirect DefaultProperties() { mixin(MGDPC!(ParticleModuleLocationEmitterDirect, "ParticleModuleLocationEmitterDirect Engine.Default__ParticleModuleLocationEmitterDirect")()); }
	@property final auto ref ScriptName EmitterName() { mixin(MGPC!(ScriptName, 72)()); }
}
