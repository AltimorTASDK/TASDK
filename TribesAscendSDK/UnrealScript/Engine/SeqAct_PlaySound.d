module UnrealScript.Engine.SeqAct_PlaySound;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.Engine.SoundCue;

extern(C++) interface SeqAct_PlaySound : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_PlaySound")()); }
	private static __gshared SeqAct_PlaySound mDefaultProperties;
	@property final static SeqAct_PlaySound DefaultProperties() { mixin(MGDPC!(SeqAct_PlaySound, "SeqAct_PlaySound Engine.Default__SeqAct_PlaySound")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqAct_PlaySound.GetObjClassVersion")()); }
	}
	@property final
	{
		auto ref
		{
			float PitchMultiplier() { mixin(MGPC!("float", 272)()); }
			float VolumeMultiplier() { mixin(MGPC!("float", 268)()); }
			float FadeOutTime() { mixin(MGPC!("float", 264)()); }
			float FadeInTime() { mixin(MGPC!("float", 260)()); }
			float SoundDuration() { mixin(MGPC!("float", 256)()); }
			float ExtraDelay() { mixin(MGPC!("float", 252)()); }
			SoundCue PlaySound() { mixin(MGPC!("SoundCue", 248)()); }
		}
		bool bStopped() { mixin(MGBPC!(276, 0x2)()); }
		bool bStopped(bool val) { mixin(MSBPC!(276, 0x2)()); }
		bool bSuppressSubtitles() { mixin(MGBPC!(276, 0x1)()); }
		bool bSuppressSubtitles(bool val) { mixin(MSBPC!(276, 0x1)()); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
