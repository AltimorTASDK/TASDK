module UnrealScript.Engine.AnimNotify_PlayFaceFXAnim;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.FaceFXAnimSet;
import UnrealScript.Engine.AnimNotify_Scripted;

extern(C++) interface AnimNotify_PlayFaceFXAnim : AnimNotify_Scripted
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNotify_PlayFaceFXAnim")); }
	private static __gshared AnimNotify_PlayFaceFXAnim mDefaultProperties;
	@property final static AnimNotify_PlayFaceFXAnim DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimNotify_PlayFaceFXAnim)("AnimNotify_PlayFaceFXAnim Engine.Default__AnimNotify_PlayFaceFXAnim")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mNotify;
		public @property static final ScriptFunction Notify() { return mNotify ? mNotify : (mNotify = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNotify_PlayFaceFXAnim.Notify")); }
	}
	@property final
	{
		auto ref
		{
			float PlayFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
			SoundCue SoundCueToPlay() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 92); }
			ScriptString AnimName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 80); }
			ScriptString GroupName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 68); }
			FaceFXAnimSet FaceFXAnimSetRef() { return *cast(FaceFXAnimSet*)(cast(size_t)cast(void*)this + 64); }
		}
		bool bOverridePlayingAnim() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x1) != 0; }
		bool bOverridePlayingAnim(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x1; } return val; }
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
