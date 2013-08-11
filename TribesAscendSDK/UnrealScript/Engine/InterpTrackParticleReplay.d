module UnrealScript.Engine.InterpTrackParticleReplay;

import ScriptClasses;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackParticleReplay : InterpTrack
{
	struct ParticleReplayTrackKey
	{
		public @property final auto ref int ClipIDNumber() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __ClipIDNumber[4];
		public @property final auto ref float Duration() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __Duration[4];
		public @property final auto ref float Time() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __Time[4];
	}
	public @property final auto ref ScriptArray!(InterpTrackParticleReplay.ParticleReplayTrackKey) TrackKeys() { return *cast(ScriptArray!(InterpTrackParticleReplay.ParticleReplayTrackKey)*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref float FixedTimeStep() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
	public @property final bool bIsCapturingReplay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
	public @property final bool bIsCapturingReplay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
}
