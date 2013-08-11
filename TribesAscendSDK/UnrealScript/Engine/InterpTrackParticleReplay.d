module UnrealScript.Engine.InterpTrackParticleReplay;

import ScriptClasses;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackParticleReplay : InterpTrack
{
public extern(D):
	struct ParticleReplayTrackKey
	{
		private ubyte __buffer__[12];
	public extern(D):
		@property final auto ref
		{
			int ClipIDNumber() { return *cast(int*)(cast(size_t)&this + 8); }
			float Duration() { return *cast(float*)(cast(size_t)&this + 4); }
			float Time() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(InterpTrackParticleReplay.ParticleReplayTrackKey) TrackKeys() { return *cast(ScriptArray!(InterpTrackParticleReplay.ParticleReplayTrackKey)*)(cast(size_t)cast(void*)this + 128); }
			float FixedTimeStep() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
		}
		bool bIsCapturingReplay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
		bool bIsCapturingReplay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
	}
}
