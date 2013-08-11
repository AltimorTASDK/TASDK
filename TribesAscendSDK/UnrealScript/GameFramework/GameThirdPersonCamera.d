module UnrealScript.GameFramework.GameThirdPersonCamera;

import ScriptClasses;
import UnrealScript.GameFramework.GameThirdPersonCameraMode;
import UnrealScript.Engine.Pawn;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Camera;
import UnrealScript.Engine.PostProcessVolume;
import UnrealScript.GameFramework.GameCameraBase;
import UnrealScript.GameFramework.GamePlayerCamera;

extern(C++) interface GameThirdPersonCamera : GameCameraBase
{
	struct PenetrationAvoidanceFeeler
	{
		public @property final auto ref int FramesUntilNextTrace() { return *cast(int*)(cast(size_t)&this + 36); }
		private ubyte __FramesUntilNextTrace[4];
		public @property final auto ref int TraceInterval() { return *cast(int*)(cast(size_t)&this + 32); }
		private ubyte __TraceInterval[4];
		public @property final auto ref Vector Extent() { return *cast(Vector*)(cast(size_t)&this + 20); }
		private ubyte __Extent[12];
		public @property final auto ref float PawnWeight() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __PawnWeight[4];
		public @property final auto ref float WorldWeight() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __WorldWeight[4];
		public @property final auto ref Rotator AdjustmentRot() { return *cast(Rotator*)(cast(size_t)&this + 0); }
		private ubyte __AdjustmentRot[12];
	}
	struct CamFocusPointParams
	{
		public @property final auto ref float FocusPitchOffsetDeg() { return *cast(float*)(cast(size_t)&this + 48); }
		private ubyte __FocusPitchOffsetDeg[4];
		public @property final bool bIgnoreTrace() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x4) != 0; }
		public @property final bool bIgnoreTrace(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x4; } return val; }
		private ubyte __bIgnoreTrace[4];
		public @property final bool bAdjustCamera() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x2) != 0; }
		public @property final bool bAdjustCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x2; } return val; }
		private ubyte __bAdjustCamera[4];
		public @property final bool bAlwaysFocus() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x1) != 0; }
		public @property final bool bAlwaysFocus(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x1; } return val; }
		private ubyte __bAlwaysFocus[4];
		public @property final auto ref UObject.Vector2D InFocusFOV() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 36); }
		private ubyte __InFocusFOV[8];
		public @property final auto ref UObject.Vector2D InterpSpeedRange() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 28); }
		private ubyte __InterpSpeedRange[8];
		public @property final auto ref float CameraFOV() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __CameraFOV[4];
		public @property final auto ref Vector FocusWorldLoc() { return *cast(Vector*)(cast(size_t)&this + 12); }
		private ubyte __FocusWorldLoc[12];
		public @property final auto ref ScriptName FocusBoneName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __FocusBoneName[8];
		public @property final auto ref Actor FocusActor() { return *cast(Actor*)(cast(size_t)&this + 0); }
		private ubyte __FocusActor[4];
	}
	public @property final auto ref ScriptArray!(GameThirdPersonCamera.PenetrationAvoidanceFeeler) PenetrationAvoidanceFeelers() { return *cast(ScriptArray!(GameThirdPersonCamera.PenetrationAvoidanceFeeler)*)(cast(size_t)cast(void*)this + 348); }
	public @property final auto ref Vector LastOffsetAdjustment() { return *cast(Vector*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref Rotator LastPreModifierCameraRot() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 336); }
	public @property final auto ref Vector LastPreModifierCameraLoc() { return *cast(Vector*)(cast(size_t)cast(void*)this + 324); }
	public @property final auto ref Vector LastWorstLocationLocal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref float WorstLocInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 308); }
	public @property final auto ref float DirectLookInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 304); }
	public @property final auto ref int DirectLookYaw() { return *cast(int*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref int LastPostCamTurnYaw() { return *cast(int*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref float TurnDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref float TurnTotalTime() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref int TurnEndAngle() { return *cast(int*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref int TurnStartAngle() { return *cast(int*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref float TurnCurTime() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
	public @property final bool bDebugChangedCameraMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 272) & 0x40) != 0; }
	public @property final bool bDebugChangedCameraMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 272) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 272) &= ~0x40; } return val; }
	public @property final bool bDoingDirectLook() { return (*cast(uint*)(cast(size_t)cast(void*)this + 272) & 0x20) != 0; }
	public @property final bool bDoingDirectLook(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 272) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 272) &= ~0x20; } return val; }
	public @property final bool bDrawDebug() { return (*cast(uint*)(cast(size_t)cast(void*)this + 272) & 0x10) != 0; }
	public @property final bool bDrawDebug(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 272) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 272) &= ~0x10; } return val; }
	public @property final bool bTurnAlignTargetWhenFinished() { return (*cast(uint*)(cast(size_t)cast(void*)this + 272) & 0x8) != 0; }
	public @property final bool bTurnAlignTargetWhenFinished(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 272) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 272) &= ~0x8; } return val; }
	public @property final bool bDoingACameraTurn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 272) & 0x4) != 0; }
	public @property final bool bDoingACameraTurn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 272) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 272) &= ~0x4; } return val; }
	public @property final bool bFocusPointSuccessful() { return (*cast(uint*)(cast(size_t)cast(void*)this + 272) & 0x2) != 0; }
	public @property final bool bFocusPointSuccessful(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 272) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 272) &= ~0x2; } return val; }
	public @property final bool bFocusPointSet() { return (*cast(uint*)(cast(size_t)cast(void*)this + 272) & 0x1) != 0; }
	public @property final bool bFocusPointSet(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 272) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 272) &= ~0x1; } return val; }
	public @property final auto ref GameThirdPersonCamera.CamFocusPointParams FocusPoint() { return *cast(GameThirdPersonCamera.CamFocusPointParams*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref Vector LastFocusPointLoc() { return *cast(Vector*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref Vector ActualFocusPointWorldLoc() { return *cast(Vector*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref float LastFocusChangeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref float Focus_FastAdjustKickInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref int Focus_MaxTries() { return *cast(int*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref float Focus_StepHeightAdjustment() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref float Focus_BackOffStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref float LeftoverPitchAdjustment() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref float LastYawAdjustment() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref float LastPitchAdjustment() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref float LastHeightAdjustment() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref GameThirdPersonCameraMode CurrentCamMode() { return *cast(GameThirdPersonCameraMode*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref ScriptClass ThirdPersonCamDefaultClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref GameThirdPersonCameraMode ThirdPersonCamDefault() { return *cast(GameThirdPersonCameraMode*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref float LastCamFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref Vector LastViewOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref float OriginOffsetInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref Rotator LastActualCameraOriginRot() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref Vector LastActualOriginOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref float PenetrationExtentScale() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref float PenetrationBlockedPct() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref float PenetrationBlendInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref float PenetrationBlendOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref float WorstLocPenetrationExtentScale() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float WorstLocBlockedPct() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref Vector LastActualCameraOrigin() { return *cast(Vector*)(cast(size_t)cast(void*)this + 68); }
	final GameThirdPersonCameraMode CreateCameraMode(ScriptClass ModeClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ModeClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32107], params.ptr, cast(void*)0);
		return *cast(GameThirdPersonCameraMode*)&params[4];
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32112], cast(void*)0, cast(void*)0);
	}
	final void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32113], cast(void*)0, cast(void*)0);
	}
	final float GetDesiredFOV(Pawn ViewedPawn)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = ViewedPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32114], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final void UpdateCamera(Pawn P, GamePlayerCamera CameraActor, float DeltaTime, Camera.TViewTarget* OutVT)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(GamePlayerCamera*)&params[4] = CameraActor;
		*cast(float*)&params[8] = DeltaTime;
		*cast(Camera.TViewTarget*)&params[12] = *OutVT;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32119], params.ptr, cast(void*)0);
		*OutVT = *cast(Camera.TViewTarget*)&params[12];
	}
	final void UpdateCameraMode(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32124], params.ptr, cast(void*)0);
	}
	final void PlayerUpdateCamera(Pawn P, GamePlayerCamera CameraActor, float DeltaTime, Camera.TViewTarget* OutVT)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(GamePlayerCamera*)&params[4] = CameraActor;
		*cast(float*)&params[8] = DeltaTime;
		*cast(Camera.TViewTarget*)&params[12] = *OutVT;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32125], params.ptr, cast(void*)0);
		*OutVT = *cast(Camera.TViewTarget*)&params[12];
	}
	final void BeginTurn(int StartAngle, int EndAngle, float TimeSec, float DelaySec, bool bAlignTargetWhenFinished)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = StartAngle;
		*cast(int*)&params[4] = EndAngle;
		*cast(float*)&params[8] = TimeSec;
		*cast(float*)&params[12] = DelaySec;
		*cast(bool*)&params[16] = bAlignTargetWhenFinished;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32130], params.ptr, cast(void*)0);
	}
	final void EndTurn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32136], cast(void*)0, cast(void*)0);
	}
	final void AdjustTurn(int AngleOffset)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = AngleOffset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32137], params.ptr, cast(void*)0);
	}
	final void SetFocusOnLoc(Vector FocusWorldLoc, UObject.Vector2D InterpSpeedRange, UObject.Vector2D InFocusFOV, float CameraFOV, bool bAlwaysFocus, bool bAdjustCamera, bool bIgnoreTrace, float FocusPitchOffsetDeg)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Vector*)params.ptr = FocusWorldLoc;
		*cast(UObject.Vector2D*)&params[12] = InterpSpeedRange;
		*cast(UObject.Vector2D*)&params[20] = InFocusFOV;
		*cast(float*)&params[28] = CameraFOV;
		*cast(bool*)&params[32] = bAlwaysFocus;
		*cast(bool*)&params[36] = bAdjustCamera;
		*cast(bool*)&params[40] = bIgnoreTrace;
		*cast(float*)&params[44] = FocusPitchOffsetDeg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32139], params.ptr, cast(void*)0);
	}
	final void SetFocusOnActor(Actor FocusActor, ScriptName FocusBoneName, UObject.Vector2D InterpSpeedRange, UObject.Vector2D InFocusFOV, float CameraFOV, bool bAlwaysFocus, bool bAdjustCamera, bool bIgnoreTrace, float FocusPitchOffsetDeg)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Actor*)params.ptr = FocusActor;
		*cast(ScriptName*)&params[4] = FocusBoneName;
		*cast(UObject.Vector2D*)&params[12] = InterpSpeedRange;
		*cast(UObject.Vector2D*)&params[20] = InFocusFOV;
		*cast(float*)&params[28] = CameraFOV;
		*cast(bool*)&params[32] = bAlwaysFocus;
		*cast(bool*)&params[36] = bAdjustCamera;
		*cast(bool*)&params[40] = bIgnoreTrace;
		*cast(float*)&params[44] = FocusPitchOffsetDeg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32148], params.ptr, cast(void*)0);
	}
	final Actor GetFocusActor()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32158], params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	final void ClearFocusPoint(bool bLeaveCameraRotation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bLeaveCameraRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32160], params.ptr, cast(void*)0);
	}
	final void UpdateFocusPoint(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32162], params.ptr, cast(void*)0);
	}
	final Vector GetActualFocusLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32166], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	final void AdjustFocusPointInterpolation(Rotator Delta)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = Delta;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32170], params.ptr, cast(void*)0);
	}
	final GameThirdPersonCameraMode FindBestCameraMode(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32172], params.ptr, cast(void*)0);
		return *cast(GameThirdPersonCameraMode*)&params[4];
	}
	final void ProcessViewRotation(float DeltaTime, Actor ViewTarget, Rotator* out_ViewRotation, Rotator* out_DeltaRot)
	{
		ubyte params[32];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Actor*)&params[4] = ViewTarget;
		*cast(Rotator*)&params[8] = *out_ViewRotation;
		*cast(Rotator*)&params[20] = *out_DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32177], params.ptr, cast(void*)0);
		*out_ViewRotation = *cast(Rotator*)&params[8];
		*out_DeltaRot = *cast(Rotator*)&params[20];
	}
	final void OnBecomeActive(GameCameraBase OldCamera)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCameraBase*)params.ptr = OldCamera;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32182], params.ptr, cast(void*)0);
	}
	final void ModifyPostProcessSettings(PostProcessVolume.PostProcessSettings* PP)
	{
		ubyte params[220];
		params[] = 0;
		*cast(PostProcessVolume.PostProcessSettings*)params.ptr = *PP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32184], params.ptr, cast(void*)0);
		*PP = *cast(PostProcessVolume.PostProcessSettings*)params.ptr;
	}
	final void ResetInterpolation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32186], cast(void*)0, cast(void*)0);
	}
}
