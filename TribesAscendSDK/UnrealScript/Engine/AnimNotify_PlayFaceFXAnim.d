module UnrealScript.Engine.AnimNotify_PlayFaceFXAnim;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.FaceFXAnimSet;
import UnrealScript.Engine.AnimNotify_Scripted;

extern(C++) interface AnimNotify_PlayFaceFXAnim : AnimNotify_Scripted
{
	public @property final auto ref float PlayFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	public @property final bool bOverridePlayingAnim() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x1) != 0; }
	public @property final bool bOverridePlayingAnim(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x1; } return val; }
	public @property final auto ref SoundCue SoundCueToPlay() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref ScriptString AnimName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref ScriptString GroupName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref FaceFXAnimSet FaceFXAnimSetRef() { return *cast(FaceFXAnimSet*)(cast(size_t)cast(void*)this + 64); }
	final void Notify(Actor Owner, AnimNodeSequence AnimSeqInstigator)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Owner;
		*cast(AnimNodeSequence*)&params[4] = AnimSeqInstigator;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11407], params.ptr, cast(void*)0);
	}
}
