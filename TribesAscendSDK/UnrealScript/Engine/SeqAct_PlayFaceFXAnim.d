module UnrealScript.Engine.SeqAct_PlayFaceFXAnim;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.FaceFXAnimSet;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_PlayFaceFXAnim : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_PlayFaceFXAnim")); }
	private static __gshared SeqAct_PlayFaceFXAnim mDefaultProperties;
	@property final static SeqAct_PlayFaceFXAnim DefaultProperties() { mixin(MGDPC("SeqAct_PlayFaceFXAnim", "SeqAct_PlayFaceFXAnim Engine.Default__SeqAct_PlayFaceFXAnim")); }
	@property final auto ref
	{
		FaceFXAnimSet FaceFXAnimSetRef() { mixin(MGPC("FaceFXAnimSet", 232)); }
		ScriptString FaceFXAnimName() { mixin(MGPC("ScriptString", 248)); }
		ScriptString FaceFXGroupName() { mixin(MGPC("ScriptString", 236)); }
		SoundCue SoundCueToPlay() { mixin(MGPC("SoundCue", 260)); }
	}
}
