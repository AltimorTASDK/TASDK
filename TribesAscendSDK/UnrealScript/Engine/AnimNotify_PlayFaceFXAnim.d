module UnrealScript.Engine.AnimNotify_PlayFaceFXAnim;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.FaceFXAnimSet;
import UnrealScript.Engine.AnimNotify_Scripted;

extern(C++) interface AnimNotify_PlayFaceFXAnim : AnimNotify_Scripted
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNotify_PlayFaceFXAnim")()); }
	private static __gshared AnimNotify_PlayFaceFXAnim mDefaultProperties;
	@property final static AnimNotify_PlayFaceFXAnim DefaultProperties() { mixin(MGDPC!(AnimNotify_PlayFaceFXAnim, "AnimNotify_PlayFaceFXAnim Engine.Default__AnimNotify_PlayFaceFXAnim")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mNotify;
		public @property static final ScriptFunction Notify() { mixin(MGF!("mNotify", "Function Engine.AnimNotify_PlayFaceFXAnim.Notify")()); }
	}
	@property final
	{
		auto ref
		{
			float PlayFrequency() { mixin(MGPC!("float", 100)()); }
			SoundCue SoundCueToPlay() { mixin(MGPC!("SoundCue", 92)()); }
			ScriptString AnimName() { mixin(MGPC!("ScriptString", 80)()); }
			ScriptString GroupName() { mixin(MGPC!("ScriptString", 68)()); }
			FaceFXAnimSet FaceFXAnimSetRef() { mixin(MGPC!("FaceFXAnimSet", 64)()); }
		}
		bool bOverridePlayingAnim() { mixin(MGBPC!(96, 0x1)()); }
		bool bOverridePlayingAnim(bool val) { mixin(MSBPC!(96, 0x1)()); }
	}
	final void Notify(Actor Owner, AnimNodeSequence AnimSeqInstigator)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Owner;
		*cast(AnimNodeSequence*)&params[4] = AnimSeqInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.Notify, params.ptr, cast(void*)0);
	}
}
