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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameThirdPersonCameraMode")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetDesiredFOV;
			ScriptFunction mSetFocusPoint;
			ScriptFunction mInit;
			ScriptFunction mOnBecomeActive;
			ScriptFunction mOnBecomeInActive;
			ScriptFunction mAdjustViewOffset;
			ScriptFunction mGetCameraWorstCaseLoc;
			ScriptFunction mProcessViewRotation;
			ScriptFunction mGetDOFFocusLoc;
			ScriptFunction mDOFTrace;
			ScriptFunction mUpdatePostProcess;
			ScriptFunction mModifyPostProcessSettings;
			ScriptFunction mSetViewOffset;
		}
		public @property static final
		{
			ScriptFunction GetDesiredFOV() { return mGetDesiredFOV ? mGetDesiredFOV : (mGetDesiredFOV = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameThirdPersonCameraMode.GetDesiredFOV")); }
			ScriptFunction SetFocusPoint() { return mSetFocusPoint ? mSetFocusPoint : (mSetFocusPoint = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameThirdPersonCameraMode.SetFocusPoint")); }
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameThirdPersonCameraMode.Init")); }
			ScriptFunction OnBecomeActive() { return mOnBecomeActive ? mOnBecomeActive : (mOnBecomeActive = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameThirdPersonCameraMode.OnBecomeActive")); }
			ScriptFunction OnBecomeInActive() { return mOnBecomeInActive ? mOnBecomeInActive : (mOnBecomeInActive = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameThirdPersonCameraMode.OnBecomeInActive")); }
			ScriptFunction AdjustViewOffset() { return mAdjustViewOffset ? mAdjustViewOffset : (mAdjustViewOffset = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameThirdPersonCameraMode.AdjustViewOffset")); }
			ScriptFunction GetCameraWorstCaseLoc() { return mGetCameraWorstCaseLoc ? mGetCameraWorstCaseLoc : (mGetCameraWorstCaseLoc = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameThirdPersonCameraMode.GetCameraWorstCaseLoc")); }
			ScriptFunction ProcessViewRotation() { return mProcessViewRotation ? mProcessViewRotation : (mProcessViewRotation = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameThirdPersonCameraMode.ProcessViewRotation")); }
			ScriptFunction GetDOFFocusLoc() { return mGetDOFFocusLoc ? mGetDOFFocusLoc : (mGetDOFFocusLoc = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameThirdPersonCameraMode.GetDOFFocusLoc")); }
			ScriptFunction DOFTrace() { return mDOFTrace ? mDOFTrace : (mDOFTrace = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameThirdPersonCameraMode.DOFTrace")); }
			ScriptFunction UpdatePostProcess() { return mUpdatePostProcess ? mUpdatePostProcess : (mUpdatePostProcess = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameThirdPersonCameraMode.UpdatePostProcess")); }
			ScriptFunction ModifyPostProcessSettings() { return mModifyPostProcessSettings ? mModifyPostProcessSettings : (mModifyPostProcessSettings = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameThirdPersonCameraMode.ModifyPostProcessSettings")); }
			ScriptFunction SetViewOffset() { return mSetViewOffset ? mSetViewOffset : (mSetViewOffset = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameThirdPersonCameraMode.SetViewOffset")); }
		}
	}
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
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GameFramework.GameThirdPersonCameraMode.ViewOffsetData")); }
		@property final auto ref
		{
			Vector OffsetLow() { return *cast(Vector*)(cast(size_t)&this + 24); }
			Vector OffsetMid() { return *cast(Vector*)(cast(size_t)&this + 12); }
			Vector OffsetHigh() { return *cast(Vector*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			GameThirdPersonCamera ThirdPersonCam() { return *cast(GameThirdPersonCamera*)(cast(size_t)cast(void*)this + 60); }
			GameThirdPersonCameraMode.ECameraViewportTypes CurrentViewportType() { return *cast(GameThirdPersonCameraMode.ECameraViewportTypes*)(cast(size_t)cast(void*)this + 556); }
			float OffsetAdjustmentInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
			float ViewOffsetInterp() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
			UObject.Vector2D DOF_RadiusDistRange() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 540); }
			UObject.Vector2D DOF_RadiusRange() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 532); }
			float DOF_RadiusFalloff() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
			Vector DOFTraceExtent() { return *cast(Vector*)(cast(size_t)cast(void*)this + 516); }
			float DOFDistanceInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
			float LastDOFDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
			float LastDOFRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
			float DOF_MaxFarBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
			float DOF_MaxNearBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
			float DOF_FocusInnerRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
			float DOF_BlurKernelSize() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
			float DOF_FalloffExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
			GameThirdPersonCameraMode.ViewOffsetData ViewOffset_ViewportAdjustments() { return *cast(GameThirdPersonCameraMode.ViewOffsetData*)(cast(size_t)cast(void*)this + 268); }
			GameThirdPersonCameraMode.ViewOffsetData ViewOffset() { return *cast(GameThirdPersonCameraMode.ViewOffsetData*)(cast(size_t)cast(void*)this + 232); }
			Vector TargetRelativeCameraOriginOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 220); }
			Vector WorstLocOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 208); }
			Vector LastRunOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 196); }
			float RunOffsetInterpSpeedOut() { return *cast(float*)(cast(size_t)cast(void*)this + 192); }
			float RunOffsetInterpSpeedIn() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
			float RunOffsetScalingThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 184); }
			Vector RunBackAdjustment() { return *cast(Vector*)(cast(size_t)cast(void*)this + 172); }
			Vector RunFwdAdjustment() { return *cast(Vector*)(cast(size_t)cast(void*)this + 160); }
			Vector LastStrafeOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 148); }
			float StrafeOffsetInterpSpeedOut() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
			float StrafeOffsetInterpSpeedIn() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
			float StrafeOffsetScalingThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
			Vector StrafeRightAdjustment() { return *cast(Vector*)(cast(size_t)cast(void*)this + 124); }
			Vector StrafeLeftAdjustment() { return *cast(Vector*)(cast(size_t)cast(void*)this + 112); }
			float OriginRotInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			Vector PerAxisOriginLocInterpSpeed() { return *cast(Vector*)(cast(size_t)cast(void*)this + 96); }
			float OriginLocInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
			float FollowingCameraVelThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
			float FollowingInterpSpeed_Roll() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
			float FollowingInterpSpeed_Yaw() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
			float FollowingInterpSpeed_Pitch() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
			float BlendTime() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
			float FOVAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
		}
		bool bInterpViewOffsetOnlyForCamTransition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x8000) != 0; }
		bool bInterpViewOffsetOnlyForCamTransition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x8000; } return val; }
		bool bNoFOVPostProcess() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x4000) != 0; }
		bool bNoFOVPostProcess(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x4000; } return val; }
		bool bDOFUpdated() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x2000) != 0; }
		bool bDOFUpdated(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x2000; } return val; }
		bool bAdjustDOF() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1000) != 0; }
		bool bAdjustDOF(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1000; } return val; }
		bool bApplyDeltaViewOffset() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x800) != 0; }
		bool bApplyDeltaViewOffset(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x800; } return val; }
		bool bSmoothViewOffsetPitchChanges() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x400) != 0; }
		bool bSmoothViewOffsetPitchChanges(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x400; } return val; }
		bool bSkipCameraCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x200) != 0; }
		bool bSkipCameraCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x200; } return val; }
		bool bValidateWorstLoc() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x100) != 0; }
		bool bValidateWorstLoc(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x100; } return val; }
		bool bDoPredictiveAvoidance() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x80) != 0; }
		bool bDoPredictiveAvoidance(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x80; } return val; }
		bool bRotInterpSpeedConstant() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x40) != 0; }
		bool bRotInterpSpeedConstant(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x40; } return val; }
		bool bInterpRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x20) != 0; }
		bool bInterpRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x20; } return val; }
		bool bUsePerAxisOriginLocInterp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x10) != 0; }
		bool bUsePerAxisOriginLocInterp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x10; } return val; }
		bool bInterpLocation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x8) != 0; }
		bool bInterpLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x8; } return val; }
		bool bFollowTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x4) != 0; }
		bool bFollowTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x4; } return val; }
		bool bDirectLook() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x2) != 0; }
		bool bDirectLook(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x2; } return val; }
		bool bLockedToViewTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
		bool bLockedToViewTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
	}
final:
	float GetDesiredFOV(Pawn ViewedPawn)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = ViewedPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDesiredFOV, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	bool SetFocusPoint(Pawn ViewedPawn)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = ViewedPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFocusPoint, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, cast(void*)0, cast(void*)0);
	}
	void OnBecomeActive(Pawn TargetPawn, GameThirdPersonCameraMode PrevMode)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = TargetPawn;
		*cast(GameThirdPersonCameraMode*)&params[4] = PrevMode;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnBecomeActive, params.ptr, cast(void*)0);
	}
	void OnBecomeInActive(Pawn TargetPawn, GameThirdPersonCameraMode NewMode)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = TargetPawn;
		*cast(GameThirdPersonCameraMode*)&params[4] = NewMode;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnBecomeInActive, params.ptr, cast(void*)0);
	}
	Vector AdjustViewOffset(Pawn P, Vector Offset)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(Vector*)&params[4] = Offset;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustViewOffset, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[16];
	}
	Vector GetCameraWorstCaseLoc(Pawn TargetPawn, Camera.TViewTarget CurrentViewTarget)
	{
		ubyte params[60];
		params[] = 0;
		*cast(Pawn*)params.ptr = TargetPawn;
		*cast(Camera.TViewTarget*)&params[4] = CurrentViewTarget;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCameraWorstCaseLoc, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[48];
	}
	void ProcessViewRotation(float DeltaTime, Actor ViewTarget, Rotator* out_ViewRotation, Rotator* out_DeltaRot)
	{
		ubyte params[32];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Actor*)&params[4] = ViewTarget;
		*cast(Rotator*)&params[8] = *out_ViewRotation;
		*cast(Rotator*)&params[20] = *out_DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessViewRotation, params.ptr, cast(void*)0);
		*out_ViewRotation = *cast(Rotator*)&params[8];
		*out_DeltaRot = *cast(Rotator*)&params[20];
	}
	Vector GetDOFFocusLoc(Actor TraceOwner, Vector StartTrace, Vector EndTrace)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Actor*)params.ptr = TraceOwner;
		*cast(Vector*)&params[4] = StartTrace;
		*cast(Vector*)&params[16] = EndTrace;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDOFFocusLoc, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[28];
	}
	Vector DOFTrace(Actor TraceOwner, Vector StartTrace, Vector EndTrace)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Actor*)params.ptr = TraceOwner;
		*cast(Vector*)&params[4] = StartTrace;
		*cast(Vector*)&params[16] = EndTrace;
		(cast(ScriptObject)this).ProcessEvent(Functions.DOFTrace, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[28];
	}
	void UpdatePostProcess(Camera.TViewTarget* VT, float DeltaTime)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Camera.TViewTarget*)params.ptr = *VT;
		*cast(float*)&params[44] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdatePostProcess, params.ptr, cast(void*)0);
		*VT = *cast(Camera.TViewTarget*)params.ptr;
	}
	void ModifyPostProcessSettings(PostProcessVolume.PostProcessSettings* PP)
	{
		ubyte params[220];
		params[] = 0;
		*cast(PostProcessVolume.PostProcessSettings*)params.ptr = *PP;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyPostProcessSettings, params.ptr, cast(void*)0);
		*PP = *cast(PostProcessVolume.PostProcessSettings*)params.ptr;
	}
	void SetViewOffset(GameThirdPersonCameraMode.ViewOffsetData* NewViewOffset)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GameThirdPersonCameraMode.ViewOffsetData*)params.ptr = *NewViewOffset;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetViewOffset, params.ptr, cast(void*)0);
		*NewViewOffset = *cast(GameThirdPersonCameraMode.ViewOffsetData*)params.ptr;
	}
}
