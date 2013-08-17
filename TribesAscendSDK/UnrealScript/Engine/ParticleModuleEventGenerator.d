module UnrealScript.Engine.ParticleModuleEventGenerator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleSystemComponent;
import UnrealScript.Engine.ParticleModuleEventBase;
import UnrealScript.Engine.ParticleModuleEventSendToGame;

extern(C++) interface ParticleModuleEventGenerator : ParticleModuleEventBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleEventGenerator")); }
	private static __gshared ParticleModuleEventGenerator mDefaultProperties;
	@property final static ParticleModuleEventGenerator DefaultProperties() { mixin(MGDPC("ParticleModuleEventGenerator", "ParticleModuleEventGenerator Engine.Default__ParticleModuleEventGenerator")); }
	struct ParticleEvent_GenerateInfo
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.ParticleModuleEventGenerator.ParticleEvent_GenerateInfo")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(ParticleModuleEventSendToGame) ParticleModuleEventsToSendToGame() { mixin(MGPS("ScriptArray!(ParticleModuleEventSendToGame)", 28)); }
				ScriptName CustomName() { mixin(MGPS("ScriptName", 20)); }
				int ParticleFrequency() { mixin(MGPS("int", 12)); }
				int LowFreq() { mixin(MGPS("int", 8)); }
				int Frequency() { mixin(MGPS("int", 4)); }
				ParticleSystemComponent.EParticleEventType Type() { mixin(MGPS("ParticleSystemComponent.EParticleEventType", 0)); }
			}
			bool UseReflectedImpactVector() { mixin(MGBPS(16, 0x4)); }
			bool UseReflectedImpactVector(bool val) { mixin(MSBPS(16, 0x4)); }
			bool LastTimeOnly() { mixin(MGBPS(16, 0x2)); }
			bool LastTimeOnly(bool val) { mixin(MSBPS(16, 0x2)); }
			bool FirstTimeOnly() { mixin(MGBPS(16, 0x1)); }
			bool FirstTimeOnly(bool val) { mixin(MSBPS(16, 0x1)); }
		}
	}
	@property final auto ref ScriptArray!(ParticleModuleEventGenerator.ParticleEvent_GenerateInfo) Events() { mixin(MGPC("ScriptArray!(ParticleModuleEventGenerator.ParticleEvent_GenerateInfo)", 72)); }
}
