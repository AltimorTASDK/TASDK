module UnrealScript.Engine.InterpTrackSound;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.InterpTrackVectorBase;

extern(C++) interface InterpTrackSound : InterpTrackVectorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackSound")); }
	struct SoundTrackKey
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.InterpTrackSound.SoundTrackKey")); }
		@property final auto ref
		{
			SoundCue Sound() { return *cast(SoundCue*)(cast(size_t)&this + 12); }
			float Pitch() { return *cast(float*)(cast(size_t)&this + 8); }
			// WARNING: Property 'Volume' has the same name as a defined type!
			float Time() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		@property final auto ref ScriptArray!(InterpTrackSound.SoundTrackKey) Sounds() { return *cast(ScriptArray!(InterpTrackSound.SoundTrackKey)*)(cast(size_t)cast(void*)this + 148); }
		bool bTreatAsDialogue() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x8) != 0; }
		bool bTreatAsDialogue(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x8; } return val; }
		bool bSuppressSubtitles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x4) != 0; }
		bool bSuppressSubtitles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x4; } return val; }
		bool bContinueSoundOnMatineeEnd() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x2) != 0; }
		bool bContinueSoundOnMatineeEnd(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x2; } return val; }
		bool bPlayOnReverse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x1) != 0; }
		bool bPlayOnReverse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x1; } return val; }
	}
}
