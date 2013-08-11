module UnrealScript.Engine.InterpTrackSound;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.InterpTrackVectorBase;

extern(C++) interface InterpTrackSound : InterpTrackVectorBase
{
	struct SoundTrackKey
	{
		public @property final auto ref SoundCue Sound() { return *cast(SoundCue*)(cast(size_t)&this + 12); }
		private ubyte __Sound[4];
		public @property final auto ref float Pitch() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __Pitch[4];
		// WARNING: Property 'Volume' has the same name as a defined type!
		public @property final auto ref float Time() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __Time[4];
	}
	public @property final auto ref ScriptArray!(InterpTrackSound.SoundTrackKey) Sounds() { return *cast(ScriptArray!(InterpTrackSound.SoundTrackKey)*)(cast(size_t)cast(void*)this + 148); }
	public @property final bool bTreatAsDialogue() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x8) != 0; }
	public @property final bool bTreatAsDialogue(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x8; } return val; }
	public @property final bool bSuppressSubtitles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x4) != 0; }
	public @property final bool bSuppressSubtitles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x4; } return val; }
	public @property final bool bContinueSoundOnMatineeEnd() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x2) != 0; }
	public @property final bool bContinueSoundOnMatineeEnd(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x2; } return val; }
	public @property final bool bPlayOnReverse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x1) != 0; }
	public @property final bool bPlayOnReverse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x1; } return val; }
}
