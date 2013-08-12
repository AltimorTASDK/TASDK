module UnrealScript.Engine.SeqAct_PlayMusicTrack;

import ScriptClasses;
import UnrealScript.Engine.MusicTrackDataStructures;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_PlayMusicTrack : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_PlayMusicTrack")); }
	@property final auto ref MusicTrackDataStructures.MusicTrackStruct MusicTrack() { return *cast(MusicTrackDataStructures.MusicTrackStruct*)(cast(size_t)cast(void*)this + 232); }
}
