module UnrealScript.Engine.ParticleModuleEventReceiverKillParticles;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleEventReceiverBase;

extern(C++) interface ParticleModuleEventReceiverKillParticles : ParticleModuleEventReceiverBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleEventReceiverKillParticles")()); }
	private static __gshared ParticleModuleEventReceiverKillParticles mDefaultProperties;
	@property final static ParticleModuleEventReceiverKillParticles DefaultProperties() { mixin(MGDPC!(ParticleModuleEventReceiverKillParticles, "ParticleModuleEventReceiverKillParticles Engine.Default__ParticleModuleEventReceiverKillParticles")()); }
	@property final
	{
		bool bStopSpawning() { mixin(MGBPC!(84, 0x1)()); }
		bool bStopSpawning(bool val) { mixin(MSBPC!(84, 0x1)()); }
	}
}
