module UnrealScript.GameFramework.GamePlayerController;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.CameraShake;
import UnrealScript.Core.UObject;

extern(C++) interface GamePlayerController : PlayerController
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.GamePlayerController")()); }
	private static __gshared GamePlayerController mDefaultProperties;
	@property final static GamePlayerController DefaultProperties() { mixin(MGDPC!(GamePlayerController, "GamePlayerController GameFramework.Default__GamePlayerController")()); }
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
			ScriptFunction GetUIPlayerIndex() { mixin(MGF!("mGetUIPlayerIndex", "Function GameFramework.GamePlayerController.GetUIPlayerIndex")()); }
			ScriptFunction NotifyCrowdAgentRefresh() { mixin(MGF!("mNotifyCrowdAgentRefresh", "Function GameFramework.GamePlayerController.NotifyCrowdAgentRefresh")()); }
			ScriptFunction NotifyCrowdAgentInRadius() { mixin(MGF!("mNotifyCrowdAgentInRadius", "Function GameFramework.GamePlayerController.NotifyCrowdAgentInRadius")()); }
			ScriptFunction DoForceFeedbackForScreenShake() { mixin(MGF!("mDoForceFeedbackForScreenShake", "Function GameFramework.GamePlayerController.DoForceFeedbackForScreenShake")()); }
			ScriptFunction SetSoundMode() { mixin(MGF!("mSetSoundMode", "Function GameFramework.GamePlayerController.SetSoundMode")()); }
			ScriptFunction ShowLoadingMovie() { mixin(MGF!("mShowLoadingMovie", "Function GameFramework.GamePlayerController.ShowLoadingMovie")()); }
			ScriptFunction KeepPlayingLoadingMovie() { mixin(MGF!("mKeepPlayingLoadingMovie", "Function GameFramework.GamePlayerController.KeepPlayingLoadingMovie")()); }
			ScriptFunction ClientPlayMovie() { mixin(MGF!("mClientPlayMovie", "Function GameFramework.GamePlayerController.ClientPlayMovie")()); }
			ScriptFunction ClientStopMovie() { mixin(MGF!("mClientStopMovie", "Function GameFramework.GamePlayerController.ClientStopMovie")()); }
			ScriptFunction GetCurrentMovie() { mixin(MGF!("mGetCurrentMovie", "Function GameFramework.GamePlayerController.GetCurrentMovie")()); }
			ScriptFunction CanUnpauseWarmup() { mixin(MGF!("mCanUnpauseWarmup", "Function GameFramework.GamePlayerController.CanUnpauseWarmup")()); }
			ScriptFunction WarmupPause() { mixin(MGF!("mWarmupPause", "Function GameFramework.GamePlayerController.WarmupPause")()); }
			ScriptFunction DoMemLeakChecking() { mixin(MGF!("mDoMemLeakChecking", "Function GameFramework.GamePlayerController.DoMemLeakChecking")()); }
			ScriptFunction StopMemLeakChecking() { mixin(MGF!("mStopMemLeakChecking", "Function GameFramework.GamePlayerController.StopMemLeakChecking")()); }
			ScriptFunction CallMemLeakCheck() { mixin(MGF!("mCallMemLeakCheck", "Function GameFramework.GamePlayerController.CallMemLeakCheck")()); }
			ScriptFunction ClientColorFade() { mixin(MGF!("mClientColorFade", "Function GameFramework.GamePlayerController.ClientColorFade")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptName CurrentSoundMode() { mixin(MGPC!(ScriptName, 1456)()); }
			float AgentAwareRadius() { mixin(MGPC!(float, 1452)()); }
		}
		bool bIsWarmupPaused() { mixin(MGBPC!(1448, 0x4)()); }
		bool bIsWarmupPaused(bool val) { mixin(MSBPC!(1448, 0x4)()); }
		bool bDebugCrowdAwareness() { mixin(MGBPC!(1448, 0x2)()); }
		bool bDebugCrowdAwareness(bool val) { mixin(MSBPC!(1448, 0x2)()); }
		bool bWarnCrowdMembers() { mixin(MGBPC!(1448, 0x1)()); }
		bool bWarnCrowdMembers(bool val) { mixin(MSBPC!(1448, 0x1)()); }
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
	void GetCurrentMovie(ref ScriptString MovieName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MovieName;
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
