module UnrealScript.GameFramework.GamePlayerController;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.CameraShake;
import UnrealScript.Core.UObject;

extern(C++) interface GamePlayerController : PlayerController
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GamePlayerController")); }
	private static __gshared GamePlayerController mDefaultProperties;
	@property final static GamePlayerController DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GamePlayerController)("GamePlayerController GameFramework.Default__GamePlayerController")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetUIPlayerIndex;
			ScriptFunction mNotifyCrowdAgentRefresh;
			ScriptFunction mNotifyCrowdAgentInRadius;
			ScriptFunction mDoForceFeedbackForScreenShake;
			ScriptFunction mSetSoundMode;
			ScriptFunction mShowLoadingMovie;
			ScriptFunction mKeepPlayingLoadingMovie;
			ScriptFunction mClientPlayMovie;
			ScriptFunction mClientStopMovie;
			ScriptFunction mGetCurrentMovie;
			ScriptFunction mCanUnpauseWarmup;
			ScriptFunction mWarmupPause;
			ScriptFunction mDoMemLeakChecking;
			ScriptFunction mStopMemLeakChecking;
			ScriptFunction mCallMemLeakCheck;
			ScriptFunction mClientColorFade;
		}
		public @property static final
		{
			ScriptFunction GetUIPlayerIndex() { return mGetUIPlayerIndex ? mGetUIPlayerIndex : (mGetUIPlayerIndex = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerController.GetUIPlayerIndex")); }
			ScriptFunction NotifyCrowdAgentRefresh() { return mNotifyCrowdAgentRefresh ? mNotifyCrowdAgentRefresh : (mNotifyCrowdAgentRefresh = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerController.NotifyCrowdAgentRefresh")); }
			ScriptFunction NotifyCrowdAgentInRadius() { return mNotifyCrowdAgentInRadius ? mNotifyCrowdAgentInRadius : (mNotifyCrowdAgentInRadius = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerController.NotifyCrowdAgentInRadius")); }
			ScriptFunction DoForceFeedbackForScreenShake() { return mDoForceFeedbackForScreenShake ? mDoForceFeedbackForScreenShake : (mDoForceFeedbackForScreenShake = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerController.DoForceFeedbackForScreenShake")); }
			ScriptFunction SetSoundMode() { return mSetSoundMode ? mSetSoundMode : (mSetSoundMode = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerController.SetSoundMode")); }
			ScriptFunction ShowLoadingMovie() { return mShowLoadingMovie ? mShowLoadingMovie : (mShowLoadingMovie = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerController.ShowLoadingMovie")); }
			ScriptFunction KeepPlayingLoadingMovie() { return mKeepPlayingLoadingMovie ? mKeepPlayingLoadingMovie : (mKeepPlayingLoadingMovie = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerController.KeepPlayingLoadingMovie")); }
			ScriptFunction ClientPlayMovie() { return mClientPlayMovie ? mClientPlayMovie : (mClientPlayMovie = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerController.ClientPlayMovie")); }
			ScriptFunction ClientStopMovie() { return mClientStopMovie ? mClientStopMovie : (mClientStopMovie = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerController.ClientStopMovie")); }
			ScriptFunction GetCurrentMovie() { return mGetCurrentMovie ? mGetCurrentMovie : (mGetCurrentMovie = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerController.GetCurrentMovie")); }
			ScriptFunction CanUnpauseWarmup() { return mCanUnpauseWarmup ? mCanUnpauseWarmup : (mCanUnpauseWarmup = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerController.CanUnpauseWarmup")); }
			ScriptFunction WarmupPause() { return mWarmupPause ? mWarmupPause : (mWarmupPause = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerController.WarmupPause")); }
			ScriptFunction DoMemLeakChecking() { return mDoMemLeakChecking ? mDoMemLeakChecking : (mDoMemLeakChecking = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerController.DoMemLeakChecking")); }
			ScriptFunction StopMemLeakChecking() { return mStopMemLeakChecking ? mStopMemLeakChecking : (mStopMemLeakChecking = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerController.StopMemLeakChecking")); }
			ScriptFunction CallMemLeakCheck() { return mCallMemLeakCheck ? mCallMemLeakCheck : (mCallMemLeakCheck = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerController.CallMemLeakCheck")); }
			ScriptFunction ClientColorFade() { return mClientColorFade ? mClientColorFade : (mClientColorFade = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerController.ClientColorFade")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptName CurrentSoundMode() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1456); }
			float AgentAwareRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 1452); }
		}
		bool bIsWarmupPaused() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1448) & 0x4) != 0; }
		bool bIsWarmupPaused(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1448) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1448) &= ~0x4; } return val; }
		bool bDebugCrowdAwareness() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1448) & 0x2) != 0; }
		bool bDebugCrowdAwareness(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1448) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1448) &= ~0x2; } return val; }
		bool bWarnCrowdMembers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1448) & 0x1) != 0; }
		bool bWarnCrowdMembers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1448) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1448) &= ~0x1; } return val; }
	}
final:
	int GetUIPlayerIndex()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetUIPlayerIndex, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void NotifyCrowdAgentRefresh()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyCrowdAgentRefresh, cast(void*)0, cast(void*)0);
	}
	void NotifyCrowdAgentInRadius(GameCrowdAgent Agent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyCrowdAgentInRadius, params.ptr, cast(void*)0);
	}
	void DoForceFeedbackForScreenShake(CameraShake ShakeData, float Scale)
	{
		ubyte params[8];
		params[] = 0;
		*cast(CameraShake*)params.ptr = ShakeData;
		*cast(float*)&params[4] = Scale;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoForceFeedbackForScreenShake, params.ptr, cast(void*)0);
	}
	void SetSoundMode(ScriptName InSoundModeName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InSoundModeName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSoundMode, params.ptr, cast(void*)0);
	}
	static void ShowLoadingMovie(bool bShowMovie, bool bPauseAfterHide, float PauseDuration, float KeepPlayingDuration, bool bOverridePreviousDelays)
	{
		ubyte params[20];
		params[] = 0;
		*cast(bool*)params.ptr = bShowMovie;
		*cast(bool*)&params[4] = bPauseAfterHide;
		*cast(float*)&params[8] = PauseDuration;
		*cast(float*)&params[12] = KeepPlayingDuration;
		*cast(bool*)&params[16] = bOverridePreviousDelays;
		StaticClass.ProcessEvent(Functions.ShowLoadingMovie, params.ptr, cast(void*)0);
	}
	static void KeepPlayingLoadingMovie()
	{
		StaticClass.ProcessEvent(Functions.KeepPlayingLoadingMovie, cast(void*)0, cast(void*)0);
	}
	void ClientPlayMovie(ScriptString MovieName, int InStartOfRenderingMovieFrame, int InEndOfRenderingMovieFrame)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MovieName;
		*cast(int*)&params[12] = InStartOfRenderingMovieFrame;
		*cast(int*)&params[16] = InEndOfRenderingMovieFrame;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientPlayMovie, params.ptr, cast(void*)0);
	}
	void ClientStopMovie(float DelayInSeconds, bool bAllowMovieToFinish, bool bForceStopNonSkippable, bool bForceStopLoadingMovie)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = DelayInSeconds;
		*cast(bool*)&params[4] = bAllowMovieToFinish;
		*cast(bool*)&params[8] = bForceStopNonSkippable;
		*cast(bool*)&params[12] = bForceStopLoadingMovie;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientStopMovie, params.ptr, cast(void*)0);
	}
	void GetCurrentMovie(ScriptString* MovieName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *MovieName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentMovie, params.ptr, cast(void*)0);
		*MovieName = *cast(ScriptString*)params.ptr;
	}
	bool CanUnpauseWarmup()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanUnpauseWarmup, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void WarmupPause(bool bDesiredPauseState)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDesiredPauseState;
		(cast(ScriptObject)this).ProcessEvent(Functions.WarmupPause, params.ptr, cast(void*)0);
	}
	void DoMemLeakChecking(float InTimeBetweenMemLeakChecks)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = InTimeBetweenMemLeakChecks;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoMemLeakChecking, params.ptr, cast(void*)0);
	}
	void StopMemLeakChecking()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopMemLeakChecking, cast(void*)0, cast(void*)0);
	}
	void CallMemLeakCheck()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CallMemLeakCheck, cast(void*)0, cast(void*)0);
	}
	void ClientColorFade(UObject.Color FadeColor, ubyte FromAlpha, ubyte ToAlpha, float FadeTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UObject.Color*)params.ptr = FadeColor;
		params[4] = FromAlpha;
		params[5] = ToAlpha;
		*cast(float*)&params[8] = FadeTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientColorFade, params.ptr, cast(void*)0);
	}
}
