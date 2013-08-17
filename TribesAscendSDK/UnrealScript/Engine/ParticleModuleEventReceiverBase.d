module UnrealScript.Engine.ParticleModuleEventReceiverBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleSystemComponent;
import UnrealScript.Engine.ParticleModuleEventBase;

extern(C++) interface ParticleModuleEventReceiverBase : ParticleModuleEventBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleEventReceiverBase")()); }
	private static __gshared ParticleModuleEventReceiverBase mDefaultProperties;
	@property final static ParticleModuleEventReceiverBase DefaultProperties() { mixin(MGDPC!(ParticleModuleEventReceiverBase, "ParticleModuleEventReceiverBase Engine.Default__ParticleModuleEventReceiverBase")()); }
	@property final auto ref
	{
		ScriptName EventName() { mixin(MGPC!("ScriptName", 76)()); }
		ParticleSystemComponent.EParticleEventType EventGeneratorType() { mixin(MGPC!("ParticleSystemComponent.EParticleEventType", 72)()); }
	}
}
