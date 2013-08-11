module UnrealScript.GameFramework.GamePlayerController;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.CameraShake;
import UnrealScript.Core.UObject;

extern(C++) interface GamePlayerController : PlayerController
{
	public @property final auto ref ScriptName CurrentSoundMode() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1456); }
	public @property final auto ref float AgentAwareRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 1452); }
	public @property final bool bIsWarmupPaused() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1448) & 0x4) != 0; }
	public @property final bool bIsWarmupPaused(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1448) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1448) &= ~0x4; } return val; }
	public @property final bool bDebugCrowdAwareness() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1448) & 0x2) != 0; }
	public @property final bool bDebugCrowdAwareness(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1448) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1448) &= ~0x2; } return val; }
	public @property final bool bWarnCrowdMembers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1448) & 0x1) != 0; }
	public @property final bool bWarnCrowdMembers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1448) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1448) &= ~0x1; } return val; }
	final int GetUIPlayerIndex()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31789], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void NotifyCrowdAgentRefresh()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31791], cast(void*)0, cast(void*)0);
	}
	final void NotifyCrowdAgentInRadius(GameCrowdAgent Agent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31792], params.ptr, cast(void*)0);
	}
	final void DoForceFeedbackForScreenShake(CameraShake ShakeData, float Scale)
	{
		ubyte params[8];
		params[] = 0;
		*cast(CameraShake*)params.ptr = ShakeData;
		*cast(float*)&params[4] = Scale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31794], params.ptr, cast(void*)0);
	}
	final void SetSoundMode(ScriptName InSoundModeName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InSoundModeName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31806], params.ptr, cast(void*)0);
	}
	final void ShowLoadingMovie(bool bShowMovie, bool bPauseAfterHide, float PauseDuration, float KeepPlayingDuration, bool bOverridePreviousDelays)
	{
		ubyte params[20];
		params[] = 0;
		*cast(bool*)params.ptr = bShowMovie;
		*cast(bool*)&params[4] = bPauseAfterHide;
		*cast(float*)&params[8] = PauseDuration;
		*cast(float*)&params[12] = KeepPlayingDuration;
		*cast(bool*)&params[16] = bOverridePreviousDelays;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31810], params.ptr, cast(void*)0);
	}
	final void KeepPlayingLoadingMovie()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31816], cast(void*)0, cast(void*)0);
	}
	final void ClientPlayMovie(ScriptString MovieName, int InStartOfRenderingMovieFrame, int InEndOfRenderingMovieFrame)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MovieName;
		*cast(int*)&params[12] = InStartOfRenderingMovieFrame;
		*cast(int*)&params[16] = InEndOfRenderingMovieFrame;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31817], params.ptr, cast(void*)0);
	}
	final void ClientStopMovie(float DelayInSeconds, bool bAllowMovieToFinish, bool bForceStopNonSkippable, bool bForceStopLoadingMovie)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = DelayInSeconds;
		*cast(bool*)&params[4] = bAllowMovieToFinish;
		*cast(bool*)&params[8] = bForceStopNonSkippable;
		*cast(bool*)&params[12] = bForceStopLoadingMovie;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31821], params.ptr, cast(void*)0);
	}
	final void GetCurrentMovie(ScriptString* MovieName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *MovieName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31826], params.ptr, cast(void*)0);
		*MovieName = *cast(ScriptString*)params.ptr;
	}
	final bool CanUnpauseWarmup()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31828], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void WarmupPause(bool bDesiredPauseState)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDesiredPauseState;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31830], params.ptr, cast(void*)0);
	}
	final void DoMemLeakChecking(float InTimeBetweenMemLeakChecks)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = InTimeBetweenMemLeakChecks;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31834], params.ptr, cast(void*)0);
	}
	final void StopMemLeakChecking()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31836], cast(void*)0, cast(void*)0);
	}
	final void CallMemLeakCheck()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31837], cast(void*)0, cast(void*)0);
	}
	final void ClientColorFade(UObject.Color FadeColor, ubyte FromAlpha, ubyte ToAlpha, float FadeTime)
	{
		ubyte params[10];
		params[] = 0;
		*cast(UObject.Color*)params.ptr = FadeColor;
		params[4] = FromAlpha;
		params[5] = ToAlpha;
		*cast(float*)&params[8] = FadeTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31838], params.ptr, cast(void*)0);
	}
}
