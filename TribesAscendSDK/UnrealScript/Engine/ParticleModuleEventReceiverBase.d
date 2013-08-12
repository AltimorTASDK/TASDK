module UnrealScript.Engine.ParticleModuleEventReceiverBase;

import ScriptClasses;
import UnrealScript.Engine.ParticleSystemComponent;
import UnrealScript.Engine.ParticleModuleEventBase;

extern(C++) interface ParticleModuleEventReceiverBase : ParticleModuleEventBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleEventReceiverBase")); }
	@property final auto ref
	{
		ScriptName EventName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 76); }
		ParticleSystemComponent.EParticleEventType EventGeneratorType() { return *cast(ParticleSystemComponent.EParticleEventType*)(cast(size_t)cast(void*)this + 72); }
	}
}
