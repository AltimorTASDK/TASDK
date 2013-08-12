module UnrealScript.Engine.ForceFeedbackManager;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ForceFeedbackWaveform;

extern(C++) interface ForceFeedbackManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ForceFeedbackManager")); }
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
			ScriptFunction PlayForceFeedbackWaveform() { return mPlayForceFeedbackWaveform ? mPlayForceFeedbackWaveform : (mPlayForceFeedbackWaveform = ScriptObject.Find!(ScriptFunction)("Function Engine.ForceFeedbackManager.PlayForceFeedbackWaveform")); }
			ScriptFunction StopForceFeedbackWaveform() { return mStopForceFeedbackWaveform ? mStopForceFeedbackWaveform : (mStopForceFeedbackWaveform = ScriptObject.Find!(ScriptFunction)("Function Engine.ForceFeedbackManager.StopForceFeedbackWaveform")); }
			ScriptFunction PauseWaveform() { return mPauseWaveform ? mPauseWaveform : (mPauseWaveform = ScriptObject.Find!(ScriptFunction)("Function Engine.ForceFeedbackManager.PauseWaveform")); }
		}
	}
	@property final
	{
		auto ref
		{
			float ScaleAllWaveformsBy() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
			Actor WaveformInstigator() { return *cast(Actor*)(cast(size_t)cast(void*)this + 80); }
			float ElapsedTime() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
			int CurrentSample() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
			ForceFeedbackWaveform FFWaveform() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 64); }
		}
		bool bAllowsForceFeedback() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool bAllowsForceFeedback(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
		bool bIsPaused() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
		bool bIsPaused(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
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
	void StopForceFeedbackWaveform(ForceFeedbackWaveform WaveForm)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ForceFeedbackWaveform*)params.ptr = WaveForm;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopForceFeedbackWaveform, params.ptr, cast(void*)0);
	}
	void PauseWaveform(bool bPause)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPause;
		(cast(ScriptObject)this).ProcessEvent(Functions.PauseWaveform, params.ptr, cast(void*)0);
	}
}
