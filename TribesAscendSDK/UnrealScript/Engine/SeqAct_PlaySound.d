module UnrealScript.Engine.SeqAct_PlaySound;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.Engine.SoundCue;

extern(C++) interface SeqAct_PlaySound : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_PlaySound")); }
	private static __gshared SeqAct_PlaySound mDefaultProperties;
	@property final static SeqAct_PlaySound DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_PlaySound)("SeqAct_PlaySound Engine.Default__SeqAct_PlaySound")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_PlaySound.GetObjClassVersion")); }
	}
	@property final
	{
		auto ref
		{
			float PitchMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
			float VolumeMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
			float FadeOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
			float FadeInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
			float SoundDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
			float ExtraDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
			SoundCue PlaySound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 248); }
		}
		bool bStopped() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x2) != 0; }
		bool bStopped(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x2; } return val; }
		bool bSuppressSubtitles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x1) != 0; }
		bool bSuppressSubtitles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x1; } return val; }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
