module UnrealScript.Engine.ForceFeedbackManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ForceFeedbackWaveform;

extern(C++) interface ForceFeedbackManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ForceFeedbackManager")); }
	private static __gshared ForceFeedbackManager mDefaultProperties;
	@property final static ForceFeedbackManager DefaultProperties() { mixin(MGDPC("ForceFeedbackManager", "ForceFeedbackManager Engine.Default__ForceFeedbackManager")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPlayForceFeedbackWaveform;
			ScriptFunction mStopForceFeedbackWaveform;
			ScriptFunction mPauseWaveform;
		}
		public @property static final
		{
			ScriptFunction PlayForceFeedbackWaveform() { mixin(MGF("mPlayForceFeedbackWaveform", "Function Engine.ForceFeedbackManager.PlayForceFeedbackWaveform")); }
			ScriptFunction StopForceFeedbackWaveform() { mixin(MGF("mStopForceFeedbackWaveform", "Function Engine.ForceFeedbackManager.StopForceFeedbackWaveform")); }
			ScriptFunction PauseWaveform() { mixin(MGF("mPauseWaveform", "Function Engine.ForceFeedbackManager.PauseWaveform")); }
		}
	}
	@property final
	{
		auto ref
		{
			float ScaleAllWaveformsBy() { mixin(MGPC("float", 76)); }
			Actor WaveformInstigator() { mixin(MGPC("Actor", 80)); }
			float ElapsedTime() { mixin(MGPC("float", 72)); }
			int CurrentSample() { mixin(MGPC("int", 68)); }
			ForceFeedbackWaveform FFWaveform() { mixin(MGPC("ForceFeedbackWaveform", 64)); }
		}
		bool bAllowsForceFeedback() { mixin(MGBPC(60, 0x1)); }
		bool bAllowsForceFeedback(bool val) { mixin(MSBPC(60, 0x1)); }
		bool bIsPaused() { mixin(MGBPC(60, 0x2)); }
		bool bIsPaused(bool val) { mixin(MSBPC(60, 0x2)); }
	}
final:
	void PlayForceFeedbackWaveform(ForceFeedbackWaveform WaveForm, Actor WaveInstigator)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ForceFeedbackWaveform*)params.ptr = WaveForm;
		*cast(Actor*)&params[4] = WaveInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayForceFeedbackWaveform, params.ptr, cast(void*)0);
	}
	void StopForceFeedbackWaveform(ForceFeedbackWaveform* WaveForm = null)
	{
		ubyte params[4];
		params[] = 0;
		if (WaveForm !is null)
			*cast(ForceFeedbackWaveform*)params.ptr = *WaveForm;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopForceFeedbackWaveform, params.ptr, cast(void*)0);
	}
	void PauseWaveform(bool* bPause = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bPause !is null)
			*cast(bool*)params.ptr = *bPause;
		(cast(ScriptObject)this).ProcessEvent(Functions.PauseWaveform, params.ptr, cast(void*)0);
	}
}
