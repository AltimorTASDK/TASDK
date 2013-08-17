module UnrealScript.Engine.SeqAct_PlayMusicTrack;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MusicTrackDataStructures;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_PlayMusicTrack : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_PlayMusicTrack")()); }
	private static __gshared SeqAct_PlayMusicTrack mDefaultProperties;
	@property final static SeqAct_PlayMusicTrack DefaultProperties() { mixin(MGDPC!(SeqAct_PlayMusicTrack, "SeqAct_PlayMusicTrack Engine.Default__SeqAct_PlayMusicTrack")()); }
	@property final auto ref MusicTrackDataStructures.MusicTrackStruct MusicTrack() { mixin(MGPC!("MusicTrackDataStructures.MusicTrackStruct", 232)()); }
}
