module UnrealScript.Engine.InterpTrackParticleReplay;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackParticleReplay : InterpTrack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpTrackParticleReplay")); }
	private static __gshared InterpTrackParticleReplay mDefaultProperties;
	@property final static InterpTrackParticleReplay DefaultProperties() { mixin(MGDPC("InterpTrackParticleReplay", "InterpTrackParticleReplay Engine.Default__InterpTrackParticleReplay")); }
	struct ParticleReplayTrackKey
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.InterpTrackParticleReplay.ParticleReplayTrackKey")); }
		@property final auto ref
		{
			int ClipIDNumber() { mixin(MGPS("int", 8)); }
			float Duration() { mixin(MGPS("float", 4)); }
			float Time() { mixin(MGPS("float", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(InterpTrackParticleReplay.ParticleReplayTrackKey) TrackKeys() { mixin(MGPC("ScriptArray!(InterpTrackParticleReplay.ParticleReplayTrackKey)", 128)); }
			float FixedTimeStep() { mixin(MGPC("float", 144)); }
		}
		bool bIsCapturingReplay() { mixin(MGBPC(140, 0x1)); }
		bool bIsCapturingReplay(bool val) { mixin(MSBPC(140, 0x1)); }
	}
}
