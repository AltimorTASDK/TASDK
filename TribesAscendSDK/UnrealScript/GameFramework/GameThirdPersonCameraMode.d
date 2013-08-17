module UnrealScript.GameFramework.GameThirdPersonCameraMode;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.GameThirdPersonCameraMode")()); }
	private static __gshared GameThirdPersonCameraMode mDefaultProperties;
	@property final static GameThirdPersonCameraMode DefaultProperties() { mixin(MGDPC!(GameThirdPersonCameraMode, "GameThirdPersonCameraMode GameFramework.Default__GameThirdPersonCameraMode")()); }
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
			ScriptFunction GetDesiredFOV() { mixin(MGF!("mGetDesiredFOV", "Function GameFramework.GameThirdPersonCameraMode.GetDesiredFOV")()); }
			ScriptFunction SetFocusPoint() { mixin(MGF!("mSetFocusPoint", "Function GameFramework.GameThirdPersonCameraMode.SetFocusPoint")()); }
			ScriptFunction Init() { mixin(MGF!("mInit", "Function GameFramework.GameThirdPersonCameraMode.Init")()); }
			ScriptFunction OnBecomeActive() { mixin(MGF!("mOnBecomeActive", "Function GameFramework.GameThirdPersonCameraMode.OnBecomeActive")()); }
			ScriptFunction OnBecomeInActive() { mixin(MGF!("mOnBecomeInActive", "Function GameFramework.GameThirdPersonCameraMode.OnBecomeInActive")()); }
			ScriptFunction AdjustViewOffset() { mixin(MGF!("mAdjustViewOffset", "Function GameFramework.GameThirdPersonCameraMode.AdjustViewOffset")()); }
			ScriptFunction GetCameraWorstCaseLoc() { mixin(MGF!("mGetCameraWorstCaseLoc", "Function GameFramework.GameThirdPersonCameraMode.GetCameraWorstCaseLoc")()); }
			ScriptFunction ProcessViewRotation() { mixin(MGF!("mProcessViewRotation", "Function GameFramework.GameThirdPersonCameraMode.ProcessViewRotation")()); }
			ScriptFunction GetDOFFocusLoc() { mixin(MGF!("mGetDOFFocusLoc", "Function GameFramework.GameThirdPersonCameraMode.GetDOFFocusLoc")()); }
			ScriptFunction DOFTrace() { mixin(MGF!("mDOFTrace", "Function GameFramework.GameThirdPersonCameraMode.DOFTrace")()); }
			ScriptFunction UpdatePostProcess() { mixin(MGF!("mUpdatePostProcess", "Function GameFramework.GameThirdPersonCameraMode.UpdatePostProcess")()); }
			ScriptFunction ModifyPostProcessSettings() { mixin(MGF!("mModifyPostProcessSettings", "Function GameFramework.GameThirdPersonCameraMode.ModifyPostProcessSettings")()); }
			ScriptFunction SetViewOffset() { mixin(MGF!("mSetViewOffset", "Function GameFramework.GameThirdPersonCameraMode.SetViewOffset")()); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct GameFramework.GameThirdPersonCameraMode.ViewOffsetData")()); }
		@property final auto ref
		{
			Vector OffsetLow() { mixin(MGPS!("Vector", 24)()); }
			Vector OffsetMid() { mixin(MGPS!("Vector", 12)()); }
			Vector OffsetHigh() { mixin(MGPS!("Vector", 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			GameThirdPersonCamera ThirdPersonCam() { mixin(MGPC!("GameThirdPersonCamera", 60)()); }
			GameThirdPersonCameraMode.ECameraViewportTypes CurrentViewportType() { mixin(MGPC!("GameThirdPersonCameraMode.ECameraViewportTypes", 556)()); }
			float OffsetAdjustmentInterpSpeed() { mixin(MGPC!("float", 552)()); }
			float ViewOffsetInterp() { mixin(MGPC!("float", 548)()); }
			UObject.Vector2D DOF_RadiusDistRange() { mixin(MGPC!("UObject.Vector2D", 540)()); }
			UObject.Vector2D DOF_RadiusRange() { mixin(MGPC!("UObject.Vector2D", 532)()); }
			float DOF_RadiusFalloff() { mixin(MGPC!("float", 528)()); }
			Vector DOFTraceExtent() { mixin(MGPC!("Vector", 516)()); }
			float DOFDistanceInterpSpeed() { mixin(MGPC!("float", 512)()); }
			float LastDOFDistance() { mixin(MGPC!("float", 508)()); }
			float LastDOFRadius() { mixin(MGPC!("float", 504)()); }
			float DOF_MaxFarBlurAmount() { mixin(MGPC!("float", 500)()); }
			float DOF_MaxNearBlurAmount() { mixin(MGPC!("float", 496)()); }
			float DOF_FocusInnerRadius() { mixin(MGPC!("float", 492)()); }
			float DOF_BlurKernelSize() { mixin(MGPC!("float", 488)()); }
			float DOF_FalloffExponent() { mixin(MGPC!("float", 484)()); }
			GameThirdPersonCameraMode.ViewOffsetData ViewOffset_ViewportAdjustments() { mixin(MGPC!("GameThirdPersonCameraMode.ViewOffsetData", 268)()); }
			GameThirdPersonCameraMode.ViewOffsetData ViewOffset() { mixin(MGPC!("GameThirdPersonCameraMode.ViewOffsetData", 232)()); }
			Vector TargetRelativeCameraOriginOffset() { mixin(MGPC!("Vector", 220)()); }
			Vector WorstLocOffset() { mixin(MGPC!("Vector", 208)()); }
			Vector LastRunOffset() { mixin(MGPC!("Vector", 196)()); }
			float RunOffsetInterpSpeedOut() { mixin(MGPC!("float", 192)()); }
			float RunOffsetInterpSpeedIn() { mixin(MGPC!("float", 188)()); }
			float RunOffsetScalingThreshold() { mixin(MGPC!("float", 184)()); }
			Vector RunBackAdjustment() { mixin(MGPC!("Vector", 172)()); }
			Vector RunFwdAdjustment() { mixin(MGPC!("Vector", 160)()); }
			Vector LastStrafeOffset() { mixin(MGPC!("Vector", 148)()); }
			float StrafeOffsetInterpSpeedOut() { mixin(MGPC!("float", 144)()); }
			float StrafeOffsetInterpSpeedIn() { mixin(MGPC!("float", 140)()); }
			float StrafeOffsetScalingThreshold() { mixin(MGPC!("float", 136)()); }
			Vector StrafeRightAdjustment() { mixin(MGPC!("Vector", 124)()); }
			Vector StrafeLeftAdjustment() { mixin(MGPC!("Vector", 112)()); }
			float OriginRotInterpSpeed() { mixin(MGPC!("float", 108)()); }
			Vector PerAxisOriginLocInterpSpeed() { mixin(MGPC!("Vector", 96)()); }
			float OriginLocInterpSpeed() { mixin(MGPC!("float", 92)()); }
			float FollowingCameraVelThreshold() { mixin(MGPC!("float", 88)()); }
			float FollowingInterpSpeed_Roll() { mixin(MGPC!("float", 84)()); }
			float FollowingInterpSpeed_Yaw() { mixin(MGPC!("float", 80)()); }
			float FollowingInterpSpeed_Pitch() { mixin(MGPC!("float", 76)()); }
			float BlendTime() { mixin(MGPC!("float", 68)()); }
			float FOVAngle() { mixin(MGPC!("float", 64)()); }
		}
		bool bInterpViewOffsetOnlyForCamTransition() { mixin(MGBPC!(72, 0x8000)()); }
		bool bInterpViewOffsetOnlyForCamTransition(bool val) { mixin(MSBPC!(72, 0x8000)()); }
		bool bNoFOVPostProcess() { mixin(MGBPC!(72, 0x4000)()); }
		bool bNoFOVPostProcess(bool val) { mixin(MSBPC!(72, 0x4000)()); }
		bool bDOFUpdated() { mixin(MGBPC!(72, 0x2000)()); }
		bool bDOFUpdated(bool val) { mixin(MSBPC!(72, 0x2000)()); }
		bool bAdjustDOF() { mixin(MGBPC!(72, 0x1000)()); }
		bool bAdjustDOF(bool val) { mixin(MSBPC!(72, 0x1000)()); }
		bool bApplyDeltaViewOffset() { mixin(MGBPC!(72, 0x800)()); }
		bool bApplyDeltaViewOffset(bool val) { mixin(MSBPC!(72, 0x800)()); }
		bool bSmoothViewOffsetPitchChanges() { mixin(MGBPC!(72, 0x400)()); }
		bool bSmoothViewOffsetPitchChanges(bool val) { mixin(MSBPC!(72, 0x400)()); }
		bool bSkipCameraCollision() { mixin(MGBPC!(72, 0x200)()); }
		bool bSkipCameraCollision(bool val) { mixin(MSBPC!(72, 0x200)()); }
		bool bValidateWorstLoc() { mixin(MGBPC!(72, 0x100)()); }
		bool bValidateWorstLoc(bool val) { mixin(MSBPC!(72, 0x100)()); }
		bool bDoPredictiveAvoidance() { mixin(MGBPC!(72, 0x80)()); }
		bool bDoPredictiveAvoidance(bool val) { mixin(MSBPC!(72, 0x80)()); }
		bool bRotInterpSpeedConstant() { mixin(MGBPC!(72, 0x40)()); }
		bool bRotInterpSpeedConstant(bool val) { mixin(MSBPC!(72, 0x40)()); }
		bool bInterpRotation() { mixin(MGBPC!(72, 0x20)()); }
		bool bInterpRotation(bool val) { mixin(MSBPC!(72, 0x20)()); }
		bool bUsePerAxisOriginLocInterp() { mixin(MGBPC!(72, 0x10)()); }
		bool bUsePerAxisOriginLocInterp(bool val) { mixin(MSBPC!(72, 0x10)()); }
		bool bInterpLocation() { mixin(MGBPC!(72, 0x8)()); }
		bool bInterpLocation(bool val) { mixin(MSBPC!(72, 0x8)()); }
		bool bFollowTarget() { mixin(MGBPC!(72, 0x4)()); }
		bool bFollowTarget(bool val) { mixin(MSBPC!(72, 0x4)()); }
		bool bDirectLook() { mixin(MGBPC!(72, 0x2)()); }
		bool bDirectLook(bool val) { mixin(MSBPC!(72, 0x2)()); }
		bool bLockedToViewTarget() { mixin(MGBPC!(72, 0x1)()); }
		bool bLockedToViewTarget(bool val) { mixin(MSBPC!(72, 0x1)()); }
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
	void ProcessViewRotation(float DeltaTime, Actor ViewTarget, ref Rotator out_ViewRotation, ref Rotator out_DeltaRot)
	{
		ubyte params[32];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Actor*)&params[4] = ViewTarget;
		*cast(Rotator*)&params[8] = out_ViewRotation;
		*cast(Rotator*)&params[20] = out_DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessViewRotation, params.ptr, cast(void*)0);
		out_ViewRotation = *cast(Rotator*)&params[8];
		out_DeltaRot = *cast(Rotator*)&params[20];
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
	void UpdatePostProcess(ref in Camera.TViewTarget VT, float DeltaTime)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Camera.TViewTarget*)params.ptr = cast(Camera.TViewTarget)VT;
		*cast(float*)&params[44] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdatePostProcess, params.ptr, cast(void*)0);
	}
	void ModifyPostProcessSettings(ref PostProcessVolume.PostProcessSettings PP)
	{
		ubyte params[220];
		params[] = 0;
		*cast(PostProcessVolume.PostProcessSettings*)params.ptr = PP;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyPostProcessSettings, params.ptr, cast(void*)0);
		PP = *cast(PostProcessVolume.PostProcessSettings*)params.ptr;
	}
	void SetViewOffset(ref in GameThirdPersonCameraMode.ViewOffsetData NewViewOffset)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GameThirdPersonCameraMode.ViewOffsetData*)params.ptr = cast(GameThirdPersonCameraMode.ViewOffsetData)NewViewOffset;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetViewOffset, params.ptr, cast(void*)0);
	}
}
