module UnrealScript.Engine.ParticleModuleEventReceiverKillParticles;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleEventReceiverBase;

extern(C++) interface ParticleModuleEventReceiverKillParticles : ParticleModuleEventReceiverBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleEventReceiverKillParticles")); }
	private static __gshared ParticleModuleEventReceiverKillParticles mDefaultProperties;
	@property final static ParticleModuleEventReceiverKillParticles DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleEventReceiverKillParticles)("ParticleModuleEventReceiverKillParticles Engine.Default__ParticleModuleEventReceiverKillParticles")); }
	@property final
	{
		bool bStopSpawning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x1) != 0; }
		bool bStopSpawning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x1; } return val; }
	}
}
