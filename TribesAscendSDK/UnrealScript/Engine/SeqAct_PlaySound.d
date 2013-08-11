module UnrealScript.Engine.SeqAct_PlaySound;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.Engine.SoundCue;

extern(C++) interface SeqAct_PlaySound : SeqAct_Latent
{
	public @property final bool bStopped() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x2) != 0; }
	public @property final bool bStopped(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x2; } return val; }
	public @property final bool bSuppressSubtitles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x1) != 0; }
	public @property final bool bSuppressSubtitles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x1; } return val; }
	public @property final auto ref float PitchMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref float VolumeMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref float FadeOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref float FadeInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref float SoundDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref float ExtraDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref SoundCue PlaySound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 248); }
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25824], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
