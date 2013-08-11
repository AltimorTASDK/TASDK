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
public extern(D):
	struct PenetrationAvoidanceFeeler
	{
		private ubyte __buffer__[40];
	public extern(D):
		@property final auto ref
		{
			int FramesUntilNextTrace() { return *cast(int*)(cast(size_t)&this + 36); }
			int TraceInterval() { return *cast(int*)(cast(size_t)&this + 32); }
			Vector Extent() { return *cast(Vector*)(cast(size_t)&this + 20); }
			float PawnWeight() { return *cast(float*)(cast(size_t)&this + 16); }
			float WorldWeight() { return *cast(float*)(cast(size_t)&this + 12); }
			Rotator AdjustmentRot() { return *cast(Rotator*)(cast(size_t)&this + 0); }
		}
	}
	struct CamFocusPointParams
	{
		private ubyte __buffer__[52];
	public extern(D):
		@property final
		{
			auto ref
			{
				float FocusPitchOffsetDeg() { return *cast(float*)(cast(size_t)&this + 48); }
				UObject.Vector2D InFocusFOV() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 36); }
				UObject.Vector2D InterpSpeedRange() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 28); }
				float CameraFOV() { return *cast(float*)(cast(size_t)&this + 24); }
				Vector FocusWorldLoc() { return *cast(Vector*)(cast(size_t)&this + 12); }
				ScriptName FocusBoneName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
				Actor FocusActor() { return *cast(Actor*)(cast(size_t)&this + 0); }
			}
			bool bIgnoreTrace() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x4) != 0; }
			bool bIgnoreTrace(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x4; } return val; }
			bool bAdjustCamera() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x2) != 0; }
			bool bAdjustCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x2; } return val; }
			bool bAlwaysFocus() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x1) != 0; }
			bool bAlwaysFocus(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(GameThirdPersonCamera.PenetrationAvoidanceFeeler) PenetrationAvoidanceFeelers() { return *cast(ScriptArray!(GameThirdPersonCamera.PenetrationAvoidanceFeeler)*)(cast(size_t)cast(void*)this + 348); }
			Vector LastOffsetAdjustment() { return *cast(Vector*)(cast(size_t)cast(void*)this + 360); }
			Rotator LastPreModifierCameraRot() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 336); }
			Vector LastPreModifierCameraLoc() { return *cast(Vector*)(cast(size_t)cast(void*)this + 324); }
			Vector LastWorstLocationLocal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 312); }
			float WorstLocInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 308); }
			float DirectLookInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 304); }
			int DirectLookYaw() { return *cast(int*)(cast(size_t)cast(void*)this + 300); }
			int LastPostCamTurnYaw() { return *cast(int*)(cast(size_t)cast(void*)this + 296); }
			float TurnDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 292); }
			float TurnTotalTime() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
			int TurnEndAngle() { return *cast(int*)(cast(size_t)cast(void*)this + 284); }
			int TurnStartAngle() { return *cast(int*)(cast(size_t)cast(void*)this + 280); }
			float TurnCurTime() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
			GameThirdPersonCamera.CamFocusPointParams FocusPoint() { return *cast(GameThirdPersonCamera.CamFocusPointParams*)(cast(size_t)cast(void*)this + 220); }
			Vector LastFocusPointLoc() { return *cast(Vector*)(cast(size_t)cast(void*)this + 208); }
			Vector ActualFocusPointWorldLoc() { return *cast(Vector*)(cast(size_t)cast(void*)this + 196); }
			float LastFocusChangeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 192); }
			float Focus_FastAdjustKickInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
			int Focus_MaxTries() { return *cast(int*)(cast(size_t)cast(void*)this + 184); }
			float Focus_StepHeightAdjustment() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
			float Focus_BackOffStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
			float LeftoverPitchAdjustment() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
			float LastYawAdjustment() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
			float LastPitchAdjustment() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
			float LastHeightAdjustment() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
			GameThirdPersonCameraMode CurrentCamMode() { return *cast(GameThirdPersonCameraMode*)(cast(size_t)cast(void*)this + 156); }
			ScriptClass ThirdPersonCamDefaultClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 152); }
			GameThirdPersonCameraMode ThirdPersonCamDefault() { return *cast(GameThirdPersonCameraMode*)(cast(size_t)cast(void*)this + 148); }
			float LastCamFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
			Vector LastViewOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 132); }
			float OriginOffsetInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
			Rotator LastActualCameraOriginRot() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 116); }
			Vector LastActualOriginOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 104); }
			float PenetrationExtentScale() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
			float PenetrationBlockedPct() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
			float PenetrationBlendInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
			float PenetrationBlendOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
			float WorstLocPenetrationExtentScale() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
			float WorstLocBlockedPct() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
			Vector LastActualCameraOrigin() { return *cast(Vector*)(cast(size_t)cast(void*)this + 68); }
		}
		bool bDebugChangedCameraMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 272) & 0x40) != 0; }
		bool bDebugChangedCameraMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 272) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 272) &= ~0x40; } return val; }
		bool bDoingDirectLook() { return (*cast(uint*)(cast(size_t)cast(void*)this + 272) & 0x20) != 0; }
		bool bDoingDirectLook(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 272) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 272) &= ~0x20; } return val; }
		bool bDrawDebug() { return (*cast(uint*)(cast(size_t)cast(void*)this + 272) & 0x10) != 0; }
		bool bDrawDebug(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 272) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 272) &= ~0x10; } return val; }
		bool bTurnAlignTargetWhenFinished() { return (*cast(uint*)(cast(size_t)cast(void*)this + 272) & 0x8) != 0; }
		bool bTurnAlignTargetWhenFinished(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 272) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 272) &= ~0x8; } return val; }
		bool bDoingACameraTurn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 272) & 0x4) != 0; }
		bool bDoingACameraTurn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 272) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 272) &= ~0x4; } return val; }
		bool bFocusPointSuccessful() { return (*cast(uint*)(cast(size_t)cast(void*)this + 272) & 0x2) != 0; }
		bool bFocusPointSuccessful(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 272) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 272) &= ~0x2; } return val; }
		bool bFocusPointSet() { return (*cast(uint*)(cast(size_t)cast(void*)this + 272) & 0x1) != 0; }
		bool bFocusPointSet(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 272) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 272) &= ~0x1; } return val; }
	}
final:
	GameThirdPersonCameraMode CreateCameraMode(ScriptClass ModeClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ModeClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32107], params.ptr, cast(void*)0);
		return *cast(GameThirdPersonCameraMode*)&params[4];
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32112], cast(void*)0, cast(void*)0);
	}
	void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32113], cast(void*)0, cast(void*)0);
	}
	float GetDesiredFOV(Pawn ViewedPawn)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = ViewedPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32114], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void UpdateCamera(Pawn P, GamePlayerCamera pCameraActor, float DeltaTime, Camera.TViewTarget* OutVT)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(GamePlayerCamera*)&params[4] = pCameraActor;
		*cast(float*)&params[8] = DeltaTime;
		*cast(Camera.TViewTarget*)&params[12] = *OutVT;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32119], params.ptr, cast(void*)0);
		*OutVT = *cast(Camera.TViewTarget*)&params[12];
	}
	void UpdateCameraMode(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32124], params.ptr, cast(void*)0);
	}
	void PlayerUpdateCamera(Pawn P, GamePlayerCamera pCameraActor, float DeltaTime, Camera.TViewTarget* OutVT)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(GamePlayerCamera*)&params[4] = pCameraActor;
		*cast(float*)&params[8] = DeltaTime;
		*cast(Camera.TViewTarget*)&params[12] = *OutVT;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32125], params.ptr, cast(void*)0);
		*OutVT = *cast(Camera.TViewTarget*)&params[12];
	}
	void BeginTurn(int StartAngle, int EndAngle, float TimeSec, float DelaySec, bool bAlignTargetWhenFinished)
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
	void EndTurn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32136], cast(void*)0, cast(void*)0);
	}
	void AdjustTurn(int AngleOffset)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = AngleOffset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32137], params.ptr, cast(void*)0);
	}
	void SetFocusOnLoc(Vector FocusWorldLoc, UObject.Vector2D InterpSpeedRange, UObject.Vector2D InFocusFOV, float CameraFOV, bool bAlwaysFocus, bool bAdjustCamera, bool bIgnoreTrace, float FocusPitchOffsetDeg)
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
	void SetFocusOnActor(Actor FocusActor, ScriptName FocusBoneName, UObject.Vector2D InterpSpeedRange, UObject.Vector2D InFocusFOV, float CameraFOV, bool bAlwaysFocus, bool bAdjustCamera, bool bIgnoreTrace, float FocusPitchOffsetDeg)
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
	Actor GetFocusActor()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32158], params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	void ClearFocusPoint(bool bLeaveCameraRotation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bLeaveCameraRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32160], params.ptr, cast(void*)0);
	}
	void UpdateFocusPoint(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32162], params.ptr, cast(void*)0);
	}
	Vector GetActualFocusLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32166], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void AdjustFocusPointInterpolation(Rotator Delta)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = Delta;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32170], params.ptr, cast(void*)0);
	}
	GameThirdPersonCameraMode FindBestCameraMode(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32172], params.ptr, cast(void*)0);
		return *cast(GameThirdPersonCameraMode*)&params[4];
	}
	void ProcessViewRotation(float DeltaTime, Actor ViewTarget, Rotator* out_ViewRotation, Rotator* out_DeltaRot)
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
	void OnBecomeActive(GameCameraBase OldCamera)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCameraBase*)params.ptr = OldCamera;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32182], params.ptr, cast(void*)0);
	}
	void ModifyPostProcessSettings(PostProcessVolume.PostProcessSettings* PP)
	{
		ubyte params[220];
		params[] = 0;
		*cast(PostProcessVolume.PostProcessSettings*)params.ptr = *PP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32184], params.ptr, cast(void*)0);
		*PP = *cast(PostProcessVolume.PostProcessSettings*)params.ptr;
	}
	void ResetInterpolation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32186], cast(void*)0, cast(void*)0);
	}
}
