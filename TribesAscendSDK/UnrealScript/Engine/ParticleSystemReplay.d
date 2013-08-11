module UnrealScript.Engine.ParticleSystemReplay;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface ParticleSystemReplay : UObject
{
	struct ParticleSystemReplayFrame
	{
		public @property final auto ref ScriptArray!(ParticleSystemReplay.ParticleEmitterReplayFrame) Emitters() { return *cast(ScriptArray!(ParticleSystemReplay.ParticleEmitterReplayFrame)*)(cast(size_t)&this + 0); }
		private ubyte __Emitters[12];
	}
	struct ParticleEmitterReplayFrame
	{
		public @property final auto ref UObject.Pointer FrameState() { return *cast(UObject.Pointer*)(cast(size_t)&this + 8); }
		private ubyte __FrameState[4];
		public @property final auto ref int OriginalEmitterIndex() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __OriginalEmitterIndex[4];
		public @property final auto ref int EmitterType() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __EmitterType[4];
	}
	public @property final auto ref ScriptArray!(ParticleSystemReplay.ParticleSystemReplayFrame) Frames() { return *cast(ScriptArray!(ParticleSystemReplay.ParticleSystemReplayFrame)*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref int ClipIDNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
}
