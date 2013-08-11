module UnrealScript.Engine.ParticleModuleEventReceiverBase;

import ScriptClasses;
import UnrealScript.Engine.ParticleSystemComponent;
import UnrealScript.Engine.ParticleModuleEventBase;

extern(C++) interface ParticleModuleEventReceiverBase : ParticleModuleEventBase
{
public extern(D):
	@property final auto ref
	{
		ScriptName EventName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 76); }
		ParticleSystemComponent.EParticleEventType EventGeneratorType() { return *cast(ParticleSystemComponent.EParticleEventType*)(cast(size_t)cast(void*)this + 72); }
	}
}
