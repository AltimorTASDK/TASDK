module UnrealScript.Engine.SeqAct_PlayFaceFXAnim;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.FaceFXAnimSet;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_PlayFaceFXAnim : SequenceAction
{
public extern(D):
	@property final auto ref
	{
		FaceFXAnimSet FaceFXAnimSetRef() { return *cast(FaceFXAnimSet*)(cast(size_t)cast(void*)this + 232); }
		ScriptString FaceFXAnimName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 248); }
		ScriptString FaceFXGroupName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 236); }
		SoundCue SoundCueToPlay() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 260); }
	}
}
