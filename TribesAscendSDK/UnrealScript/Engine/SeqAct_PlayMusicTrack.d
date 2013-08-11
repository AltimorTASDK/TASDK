module UnrealScript.Engine.SeqAct_PlayMusicTrack;

import UnrealScript.Engine.MusicTrackDataStructures;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_PlayMusicTrack : SequenceAction
{
	public @property final auto ref MusicTrackDataStructures.MusicTrackStruct MusicTrack() { return *cast(MusicTrackDataStructures.MusicTrackStruct*)(cast(size_t)cast(void*)this + 232); }
}
