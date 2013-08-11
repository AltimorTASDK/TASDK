module UnrealScript.GameFramework.GameThirdPersonCameraMode;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.GameThirdPersonCamera;
import UnrealScript.Engine.Camera;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PostProcessVolume;

extern(C++) interface GameThirdPersonCameraMode : UObject
{
	enum ECameraViewportTypes : ubyte
	{
		CVT_16to9_Full = 0,
		CVT_16to9_VertSplit = 1,
		CVT_16to9_HorizSplit = 2,
		CVT_4to3_Full = 3,
		CVT_4to3_HorizSplit = 4,
		CVT_4to3_VertSplit = 5,
		CVT_MAX = 6,
	}
	struct ViewOffsetData
	{
		public @property final auto ref Vector OffsetLow() { return *cast(Vector*)(cast(size_t)&this + 24); }
		private ubyte __OffsetLow[12];
		public @property final auto ref Vector OffsetMid() { return *cast(Vector*)(cast(size_t)&this + 12); }
		private ubyte __OffsetMid[12];
		public @property final auto ref Vector OffsetHigh() { return *cast(Vector*)(cast(size_t)&this + 0); }
		private ubyte __OffsetHigh[12];
	}
	public @property final auto ref GameThirdPersonCamera ThirdPersonCam() { return *cast(GameThirdPersonCamera*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref GameThirdPersonCameraMode.ECameraViewportTypes CurrentViewportType() { return *cast(GameThirdPersonCameraMode.ECameraViewportTypes*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref float OffsetAdjustmentInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref float ViewOffsetInterp() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
	public @property final auto ref UObject.Vector2D DOF_RadiusDistRange() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref UObject.Vector2D DOF_RadiusRange() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref float DOF_RadiusFalloff() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref Vector DOFTraceExtent() { return *cast(Vector*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref float DOFDistanceInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref float LastDOFDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref float LastDOFRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref float DOF_MaxFarBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref float DOF_MaxNearBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref float DOF_FocusInnerRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref float DOF_BlurKernelSize() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref float DOF_FalloffExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref GameThirdPersonCameraMode.ViewOffsetData ViewOffset_ViewportAdjustments() { return *cast(GameThirdPersonCameraMode.ViewOffsetData*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref GameThirdPersonCameraMode.ViewOffsetData ViewOffset() { return *cast(GameThirdPersonCameraMode.ViewOffsetData*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref Vector TargetRelativeCameraOriginOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref Vector WorstLocOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref Vector LastRunOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref float RunOffsetInterpSpeedOut() { return *cast(float*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref float RunOffsetInterpSpeedIn() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref float RunOffsetScalingThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref Vector RunBackAdjustment() { return *cast(Vector*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref Vector RunFwdAdjustment() { return *cast(Vector*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref Vector LastStrafeOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref float StrafeOffsetInterpSpeedOut() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref float StrafeOffsetInterpSpeedIn() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref float StrafeOffsetScalingThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref Vector StrafeRightAdjustment() { return *cast(Vector*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref Vector StrafeLeftAdjustment() { return *cast(Vector*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float OriginRotInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref Vector PerAxisOriginLocInterpSpeed() { return *cast(Vector*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref float OriginLocInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref float FollowingCameraVelThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref float FollowingInterpSpeed_Roll() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float FollowingInterpSpeed_Yaw() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref float FollowingInterpSpeed_Pitch() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
	public @property final bool bInterpViewOffsetOnlyForCamTransition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x8000) != 0; }
	public @property final bool bInterpViewOffsetOnlyForCamTransition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x8000; } return val; }
	public @property final bool bNoFOVPostProcess() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x4000) != 0; }
	public @property final bool bNoFOVPostProcess(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x4000; } return val; }
	public @property final bool bDOFUpdated() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x2000) != 0; }
	public @property final bool bDOFUpdated(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x2000; } return val; }
	public @property final bool bAdjustDOF() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1000) != 0; }
	public @property final bool bAdjustDOF(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1000; } return val; }
	public @property final bool bApplyDeltaViewOffset() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x800) != 0; }
	public @property final bool bApplyDeltaViewOffset(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x800; } return val; }
	public @property final bool bSmoothViewOffsetPitchChanges() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x400) != 0; }
	public @property final bool bSmoothViewOffsetPitchChanges(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x400; } return val; }
	public @property final bool bSkipCameraCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x200) != 0; }
	public @property final bool bSkipCameraCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x200; } return val; }
	public @property final bool bValidateWorstLoc() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x100) != 0; }
	public @property final bool bValidateWorstLoc(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x100; } return val; }
	public @property final bool bDoPredictiveAvoidance() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x80) != 0; }
	public @property final bool bDoPredictiveAvoidance(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x80; } return val; }
	public @property final bool bRotInterpSpeedConstant() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x40) != 0; }
	public @property final bool bRotInterpSpeedConstant(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x40; } return val; }
	public @property final bool bInterpRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x20) != 0; }
	public @property final bool bInterpRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x20; } return val; }
	public @property final bool bUsePerAxisOriginLocInterp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x10) != 0; }
	public @property final bool bUsePerAxisOriginLocInterp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x10; } return val; }
	public @property final bool bInterpLocation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x8) != 0; }
	public @property final bool bInterpLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x8; } return val; }
	public @property final bool bFollowTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x4) != 0; }
	public @property final bool bFollowTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x4; } return val; }
	public @property final bool bDirectLook() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x2) != 0; }
	public @property final bool bDirectLook(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x2; } return val; }
	public @property final bool bLockedToViewTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
	public @property final bool bLockedToViewTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
	public @property final auto ref float BlendTime() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref float FOVAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
	final float GetDesiredFOV(Pawn ViewedPawn)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = ViewedPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32117], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final bool SetFocusPoint(Pawn ViewedPawn)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = ViewedPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32164], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32248], cast(void*)0, cast(void*)0);
	}
	final void OnBecomeActive(Pawn TargetPawn, GameThirdPersonCameraMode PrevMode)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = TargetPawn;
		*cast(GameThirdPersonCameraMode*)&params[4] = PrevMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32249], params.ptr, cast(void*)0);
	}
	final void OnBecomeInActive(Pawn TargetPawn, GameThirdPersonCameraMode NewMode)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = TargetPawn;
		*cast(GameThirdPersonCameraMode*)&params[4] = NewMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32252], params.ptr, cast(void*)0);
	}
	final Vector AdjustViewOffset(Pawn P, Vector Offset)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(Vector*)&params[4] = Offset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32255], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[16];
	}
	final Vector GetCameraWorstCaseLoc(Pawn TargetPawn, Camera.TViewTarget CurrentViewTarget)
	{
		ubyte params[60];
		params[] = 0;
		*cast(Pawn*)params.ptr = TargetPawn;
		*cast(Camera.TViewTarget*)&params[4] = CurrentViewTarget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32260], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[48];
	}
	final void ProcessViewRotation(float DeltaTime, Actor ViewTarget, Rotator* out_ViewRotation, Rotator* out_DeltaRot)
	{
		ubyte params[32];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Actor*)&params[4] = ViewTarget;
		*cast(Rotator*)&params[8] = *out_ViewRotation;
		*cast(Rotator*)&params[20] = *out_DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32265], params.ptr, cast(void*)0);
		*out_ViewRotation = *cast(Rotator*)&params[8];
		*out_DeltaRot = *cast(Rotator*)&params[20];
	}
	final Vector GetDOFFocusLoc(Actor TraceOwner, Vector StartTrace, Vector EndTrace)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Actor*)params.ptr = TraceOwner;
		*cast(Vector*)&params[4] = StartTrace;
		*cast(Vector*)&params[16] = EndTrace;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32270], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[28];
	}
	final Vector DOFTrace(Actor TraceOwner, Vector StartTrace, Vector EndTrace)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Actor*)params.ptr = TraceOwner;
		*cast(Vector*)&params[4] = StartTrace;
		*cast(Vector*)&params[16] = EndTrace;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32275], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[28];
	}
	final void UpdatePostProcess(Camera.TViewTarget* VT, float DeltaTime)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Camera.TViewTarget*)params.ptr = *VT;
		*cast(float*)&params[44] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32283], params.ptr, cast(void*)0);
		*VT = *cast(Camera.TViewTarget*)params.ptr;
	}
	final void ModifyPostProcessSettings(PostProcessVolume.PostProcessSettings* PP)
	{
		ubyte params[220];
		params[] = 0;
		*cast(PostProcessVolume.PostProcessSettings*)params.ptr = *PP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32293], params.ptr, cast(void*)0);
		*PP = *cast(PostProcessVolume.PostProcessSettings*)params.ptr;
	}
	final void SetViewOffset(GameThirdPersonCameraMode.ViewOffsetData* NewViewOffset)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GameThirdPersonCameraMode.ViewOffsetData*)params.ptr = *NewViewOffset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32295], params.ptr, cast(void*)0);
		*NewViewOffset = *cast(GameThirdPersonCameraMode.ViewOffsetData*)params.ptr;
	}
}
