module UnrealScript.Engine.ParticleModuleEventGenerator;

import ScriptClasses;
import UnrealScript.Engine.ParticleSystemComponent;
import UnrealScript.Engine.ParticleModuleEventBase;
import UnrealScript.Engine.ParticleModuleEventSendToGame;

extern(C++) interface ParticleModuleEventGenerator : ParticleModuleEventBase
{
	struct ParticleEvent_GenerateInfo
	{
		public @property final auto ref ScriptArray!(ParticleModuleEventSendToGame) ParticleModuleEventsToSendToGame() { return *cast(ScriptArray!(ParticleModuleEventSendToGame)*)(cast(size_t)&this + 28); }
		private ubyte __ParticleModuleEventsToSendToGame[12];
		public @property final auto ref ScriptName CustomName() { return *cast(ScriptName*)(cast(size_t)&this + 20); }
		private ubyte __CustomName[8];
		public @property final bool UseReflectedImpactVector() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x4) != 0; }
		public @property final bool UseReflectedImpactVector(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x4; } return val; }
		private ubyte __UseReflectedImpactVector[4];
		public @property final bool LastTimeOnly() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x2) != 0; }
		public @property final bool LastTimeOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x2; } return val; }
		private ubyte __LastTimeOnly[4];
		public @property final bool FirstTimeOnly() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x1) != 0; }
		public @property final bool FirstTimeOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x1; } return val; }
		private ubyte __FirstTimeOnly[4];
		public @property final auto ref int ParticleFrequency() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __ParticleFrequency[4];
		public @property final auto ref int LowFreq() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __LowFreq[4];
		public @property final auto ref int Frequency() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __Frequency[4];
		public @property final auto ref ParticleSystemComponent.EParticleEventType Type() { return *cast(ParticleSystemComponent.EParticleEventType*)(cast(size_t)&this + 0); }
		private ubyte __Type[1];
	}
	public @property final auto ref ScriptArray!(ParticleModuleEventGenerator.ParticleEvent_GenerateInfo) Events() { return *cast(ScriptArray!(ParticleModuleEventGenerator.ParticleEvent_GenerateInfo)*)(cast(size_t)cast(void*)this + 72); }
}
