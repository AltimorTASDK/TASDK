module UnrealScript.Engine.ParticleModuleEventGenerator;

import ScriptClasses;
import UnrealScript.Engine.ParticleSystemComponent;
import UnrealScript.Engine.ParticleModuleEventBase;
import UnrealScript.Engine.ParticleModuleEventSendToGame;

extern(C++) interface ParticleModuleEventGenerator : ParticleModuleEventBase
{
public extern(D):
	struct ParticleEvent_GenerateInfo
	{
		private ubyte __buffer__[40];
	public extern(D):
		@property final
		{
			auto ref
			{
				ScriptArray!(ParticleModuleEventSendToGame) ParticleModuleEventsToSendToGame() { return *cast(ScriptArray!(ParticleModuleEventSendToGame)*)(cast(size_t)&this + 28); }
				ScriptName CustomName() { return *cast(ScriptName*)(cast(size_t)&this + 20); }
				int ParticleFrequency() { return *cast(int*)(cast(size_t)&this + 12); }
				int LowFreq() { return *cast(int*)(cast(size_t)&this + 8); }
				int Frequency() { return *cast(int*)(cast(size_t)&this + 4); }
				ParticleSystemComponent.EParticleEventType Type() { return *cast(ParticleSystemComponent.EParticleEventType*)(cast(size_t)&this + 0); }
			}
			bool UseReflectedImpactVector() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x4) != 0; }
			bool UseReflectedImpactVector(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x4; } return val; }
			bool LastTimeOnly() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x2) != 0; }
			bool LastTimeOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x2; } return val; }
			bool FirstTimeOnly() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x1) != 0; }
			bool FirstTimeOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x1; } return val; }
		}
	}
	@property final auto ref ScriptArray!(ParticleModuleEventGenerator.ParticleEvent_GenerateInfo) Events() { return *cast(ScriptArray!(ParticleModuleEventGenerator.ParticleEvent_GenerateInfo)*)(cast(size_t)cast(void*)this + 72); }
}
