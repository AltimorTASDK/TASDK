module UnrealScript.GameFramework.GameThirdPersonCamera;

import ScriptClasses;
import UnrealScript.Helpers;
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
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.GameThirdPersonCamera")()); }
	private static __gshared GameThirdPersonCamera mDefaultProperties;
	@property final static GameThirdPersonCamera DefaultProperties() { mixin(MGDPC!(GameThirdPersonCamera, "GameThirdPersonCamera GameFramework.Default__GameThirdPersonCamera")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCreateCameraMode;
			ScriptFunction mReset;
			ScriptFunction mInit;
			ScriptFunction mGetDesiredFOV;
			ScriptFunction mUpdateCamera;
			ScriptFunction mUpdateCameraMode;
			ScriptFunction mPlayerUpdateCamera;
			ScriptFunction mBeginTurn;
			ScriptFunction mEndTurn;
			ScriptFunction mAdjustTurn;
			ScriptFunction mSetFocusOnLoc;
			ScriptFunction mSetFocusOnActor;
			ScriptFunction mGetFocusActor;
			ScriptFunction mClearFocusPoint;
			ScriptFunction mUpdateFocusPoint;
			ScriptFunction mGetActualFocusLocation;
			ScriptFunction mAdjustFocusPointInterpolation;
			ScriptFunction mFindBestCameraMode;
			ScriptFunction mProcessViewRotation;
			ScriptFunction mOnBecomeActive;
			ScriptFunction mModifyPostProcessSettings;
			ScriptFunction mResetInterpolation;
		}
		public @property static final
		{
			ScriptFunction CreateCameraMode() { mixin(MGF!("mCreateCameraMode", "Function GameFramework.GameThirdPersonCamera.CreateCameraMode")()); }
			ScriptFunction Reset() { mixin(MGF!("mReset", "Function GameFramework.GameThirdPersonCamera.Reset")()); }
			ScriptFunction Init() { mixin(MGF!("mInit", "Function GameFramework.GameThirdPersonCamera.Init")()); }
			ScriptFunction GetDesiredFOV() { mixin(MGF!("mGetDesiredFOV", "Function GameFramework.GameThirdPersonCamera.GetDesiredFOV")()); }
			ScriptFunction UpdateCamera() { mixin(MGF!("mUpdateCamera", "Function GameFramework.GameThirdPersonCamera.UpdateCamera")()); }
			ScriptFunction UpdateCameraMode() { mixin(MGF!("mUpdateCameraMode", "Function GameFramework.GameThirdPersonCamera.UpdateCameraMode")()); }
			ScriptFunction PlayerUpdateCamera() { mixin(MGF!("mPlayerUpdateCamera", "Function GameFramework.GameThirdPersonCamera.PlayerUpdateCamera")()); }
			ScriptFunction BeginTurn() { mixin(MGF!("mBeginTurn", "Function GameFramework.GameThirdPersonCamera.BeginTurn")()); }
			ScriptFunction EndTurn() { mixin(MGF!("mEndTurn", "Function GameFramework.GameThirdPersonCamera.EndTurn")()); }
			ScriptFunction AdjustTurn() { mixin(MGF!("mAdjustTurn", "Function GameFramework.GameThirdPersonCamera.AdjustTurn")()); }
			ScriptFunction SetFocusOnLoc() { mixin(MGF!("mSetFocusOnLoc", "Function GameFramework.GameThirdPersonCamera.SetFocusOnLoc")()); }
			ScriptFunction SetFocusOnActor() { mixin(MGF!("mSetFocusOnActor", "Function GameFramework.GameThirdPersonCamera.SetFocusOnActor")()); }
			ScriptFunction GetFocusActor() { mixin(MGF!("mGetFocusActor", "Function GameFramework.GameThirdPersonCamera.GetFocusActor")()); }
			ScriptFunction ClearFocusPoint() { mixin(MGF!("mClearFocusPoint", "Function GameFramework.GameThirdPersonCamera.ClearFocusPoint")()); }
			ScriptFunction UpdateFocusPoint() { mixin(MGF!("mUpdateFocusPoint", "Function GameFramework.GameThirdPersonCamera.UpdateFocusPoint")()); }
			ScriptFunction GetActualFocusLocation() { mixin(MGF!("mGetActualFocusLocation", "Function GameFramework.GameThirdPersonCamera.GetActualFocusLocation")()); }
			ScriptFunction AdjustFocusPointInterpolation() { mixin(MGF!("mAdjustFocusPointInterpolation", "Function GameFramework.GameThirdPersonCamera.AdjustFocusPointInterpolation")()); }
			ScriptFunction FindBestCameraMode() { mixin(MGF!("mFindBestCameraMode", "Function GameFramework.GameThirdPersonCamera.FindBestCameraMode")()); }
			ScriptFunction ProcessViewRotation() { mixin(MGF!("mProcessViewRotation", "Function GameFramework.GameThirdPersonCamera.ProcessViewRotation")()); }
			ScriptFunction OnBecomeActive() { mixin(MGF!("mOnBecomeActive", "Function GameFramework.GameThirdPersonCamera.OnBecomeActive")()); }
			ScriptFunction ModifyPostProcessSettings() { mixin(MGF!("mModifyPostProcessSettings", "Function GameFramework.GameThirdPersonCamera.ModifyPostProcessSettings")()); }
			ScriptFunction ResetInterpolation() { mixin(MGF!("mResetInterpolation", "Function GameFramework.GameThirdPersonCamera.ResetInterpolation")()); }
		}
	}
	struct PenetrationAvoidanceFeeler
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct GameFramework.GameThirdPersonCamera.PenetrationAvoidanceFeeler")()); }
		@property final auto ref
		{
			int FramesUntilNextTrace() { mixin(MGPS!("int", 36)()); }
			int TraceInterval() { mixin(MGPS!("int", 32)()); }
			Vector Extent() { mixin(MGPS!("Vector", 20)()); }
			float PawnWeight() { mixin(MGPS!("float", 16)()); }
			float WorldWeight() { mixin(MGPS!("float", 12)()); }
			Rotator AdjustmentRot() { mixin(MGPS!("Rotator", 0)()); }
		}
	}
	struct CamFocusPointParams
	{
		private ubyte __buffer__[52];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct GameFramework.GameThirdPersonCamera.CamFocusPointParams")()); }
		@property final
		{
			auto ref
			{
				float FocusPitchOffsetDeg() { mixin(MGPS!("float", 48)()); }
				UObject.Vector2D InFocusFOV() { mixin(MGPS!("UObject.Vector2D", 36)()); }
				UObject.Vector2D InterpSpeedRange() { mixin(MGPS!("UObject.Vector2D", 28)()); }
				float CameraFOV() { mixin(MGPS!("float", 24)()); }
				Vector FocusWorldLoc() { mixin(MGPS!("Vector", 12)()); }
				ScriptName FocusBoneName() { mixin(MGPS!("ScriptName", 4)()); }
				Actor FocusActor() { mixin(MGPS!("Actor", 0)()); }
			}
			bool bIgnoreTrace() { mixin(MGBPS!(44, 0x4)()); }
			bool bIgnoreTrace(bool val) { mixin(MSBPS!(44, 0x4)()); }
			bool bAdjustCamera() { mixin(MGBPS!(44, 0x2)()); }
			bool bAdjustCamera(bool val) { mixin(MSBPS!(44, 0x2)()); }
			bool bAlwaysFocus() { mixin(MGBPS!(44, 0x1)()); }
			bool bAlwaysFocus(bool val) { mixin(MSBPS!(44, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(GameThirdPersonCamera.PenetrationAvoidanceFeeler) PenetrationAvoidanceFeelers() { mixin(MGPC!("ScriptArray!(GameThirdPersonCamera.PenetrationAvoidanceFeeler)", 348)()); }
			Vector LastOffsetAdjustment() { mixin(MGPC!("Vector", 360)()); }
			Rotator LastPreModifierCameraRot() { mixin(MGPC!("Rotator", 336)()); }
			Vector LastPreModifierCameraLoc() { mixin(MGPC!("Vector", 324)()); }
			Vector LastWorstLocationLocal() { mixin(MGPC!("Vector", 312)()); }
			float WorstLocInterpSpeed() { mixin(MGPC!("float", 308)()); }
			float DirectLookInterpSpeed() { mixin(MGPC!("float", 304)()); }
			int DirectLookYaw() { mixin(MGPC!("int", 300)()); }
			int LastPostCamTurnYaw() { mixin(MGPC!("int", 296)()); }
			float TurnDelay() { mixin(MGPC!("float", 292)()); }
			float TurnTotalTime() { mixin(MGPC!("float", 288)()); }
			int TurnEndAngle() { mixin(MGPC!("int", 284)()); }
			int TurnStartAngle() { mixin(MGPC!("int", 280)()); }
			float TurnCurTime() { mixin(MGPC!("float", 276)()); }
			GameThirdPersonCamera.CamFocusPointParams FocusPoint() { mixin(MGPC!("GameThirdPersonCamera.CamFocusPointParams", 220)()); }
			Vector LastFocusPointLoc() { mixin(MGPC!("Vector", 208)()); }
			Vector ActualFocusPointWorldLoc() { mixin(MGPC!("Vector", 196)()); }
			float LastFocusChangeTime() { mixin(MGPC!("float", 192)()); }
			float Focus_FastAdjustKickInTime() { mixin(MGPC!("float", 188)()); }
			int Focus_MaxTries() { mixin(MGPC!("int", 184)()); }
			float Focus_StepHeightAdjustment() { mixin(MGPC!("float", 180)()); }
			float Focus_BackOffStrength() { mixin(MGPC!("float", 176)()); }
			float LeftoverPitchAdjustment() { mixin(MGPC!("float", 172)()); }
			float LastYawAdjustment() { mixin(MGPC!("float", 168)()); }
			float LastPitchAdjustment() { mixin(MGPC!("float", 164)()); }
			float LastHeightAdjustment() { mixin(MGPC!("float", 160)()); }
			GameThirdPersonCameraMode CurrentCamMode() { mixin(MGPC!("GameThirdPersonCameraMode", 156)()); }
			ScriptClass ThirdPersonCamDefaultClass() { mixin(MGPC!("ScriptClass", 152)()); }
			GameThirdPersonCameraMode ThirdPersonCamDefault() { mixin(MGPC!("GameThirdPersonCameraMode", 148)()); }
			float LastCamFOV() { mixin(MGPC!("float", 144)()); }
			Vector LastViewOffset() { mixin(MGPC!("Vector", 132)()); }
			float OriginOffsetInterpSpeed() { mixin(MGPC!("float", 128)()); }
			Rotator LastActualCameraOriginRot() { mixin(MGPC!("Rotator", 116)()); }
			Vector LastActualOriginOffset() { mixin(MGPC!("Vector", 104)()); }
			float PenetrationExtentScale() { mixin(MGPC!("float", 100)()); }
			float PenetrationBlockedPct() { mixin(MGPC!("float", 96)()); }
			float PenetrationBlendInTime() { mixin(MGPC!("float", 92)()); }
			float PenetrationBlendOutTime() { mixin(MGPC!("float", 88)()); }
			float WorstLocPenetrationExtentScale() { mixin(MGPC!("float", 84)()); }
			float WorstLocBlockedPct() { mixin(MGPC!("float", 80)()); }
			Vector LastActualCameraOrigin() { mixin(MGPC!("Vector", 68)()); }
		}
		bool bDebugChangedCameraMode() { mixin(MGBPC!(272, 0x40)()); }
		bool bDebugChangedCameraMode(bool val) { mixin(MSBPC!(272, 0x40)()); }
		bool bDoingDirectLook() { mixin(MGBPC!(272, 0x20)()); }
		bool bDoingDirectLook(bool val) { mixin(MSBPC!(272, 0x20)()); }
		bool bDrawDebug() { mixin(MGBPC!(272, 0x10)()); }
		bool bDrawDebug(bool val) { mixin(MSBPC!(272, 0x10)()); }
		bool bTurnAlignTargetWhenFinished() { mixin(MGBPC!(272, 0x8)()); }
		bool bTurnAlignTargetWhenFinished(bool val) { mixin(MSBPC!(272, 0x8)()); }
		bool bDoingACameraTurn() { mixin(MGBPC!(272, 0x4)()); }
		bool bDoingACameraTurn(bool val) { mixin(MSBPC!(272, 0x4)()); }
		bool bFocusPointSuccessful() { mixin(MGBPC!(272, 0x2)()); }
		bool bFocusPointSuccessful(bool val) { mixin(MSBPC!(272, 0x2)()); }
		bool bFocusPointSet() { mixin(MGBPC!(272, 0x1)()); }
		bool bFocusPointSet(bool val) { mixin(MSBPC!(272, 0x1)()); }
	}
final:
	GameThirdPersonCameraMode CreateCameraMode(ScriptClass ModeClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ModeClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateCameraMode, params.ptr, cast(void*)0);
		return *cast(GameThirdPersonCameraMode*)&params[4];
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, cast(void*)0, cast(void*)0);
	}
	float GetDesiredFOV(Pawn ViewedPawn)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = ViewedPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDesiredFOV, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void UpdateCamera(Pawn P, GamePlayerCamera pCameraActor, float DeltaTime, ref Camera.TViewTarget OutVT)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(GamePlayerCamera*)&params[4] = pCameraActor;
		*cast(float*)&params[8] = DeltaTime;
		*cast(Camera.TViewTarget*)&params[12] = OutVT;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateCamera, params.ptr, cast(void*)0);
		OutVT = *cast(Camera.TViewTarget*)&params[12];
	}
	void UpdateCameraMode(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateCameraMode, params.ptr, cast(void*)0);
	}
	void PlayerUpdateCamera(Pawn P, GamePlayerCamera pCameraActor, float DeltaTime, ref Camera.TViewTarget OutVT)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(GamePlayerCamera*)&params[4] = pCameraActor;
		*cast(float*)&params[8] = DeltaTime;
		*cast(Camera.TViewTarget*)&params[12] = OutVT;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayerUpdateCamera, params.ptr, cast(void*)0);
		OutVT = *cast(Camera.TViewTarget*)&params[12];
	}
	void BeginTurn(int StartAngle, int EndAngle, float TimeSec, float* DelaySec = null, bool* bAlignTargetWhenFinished = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = StartAngle;
		*cast(int*)&params[4] = EndAngle;
		*cast(float*)&params[8] = TimeSec;
		if (DelaySec !is null)
			*cast(float*)&params[12] = *DelaySec;
		if (bAlignTargetWhenFinished !is null)
			*cast(bool*)&params[16] = *bAlignTargetWhenFinished;
		(cast(ScriptObject)this).ProcessEvent(Functions.BeginTurn, params.ptr, cast(void*)0);
	}
	void EndTurn()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EndTurn, cast(void*)0, cast(void*)0);
	}
	void AdjustTurn(int AngleOffset)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = AngleOffset;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustTurn, params.ptr, cast(void*)0);
	}
	void SetFocusOnLoc(Vector FocusWorldLoc, UObject.Vector2D InterpSpeedRange, UObject.Vector2D InFocusFOV, float* CameraFOV = null, bool* bAlwaysFocus = null, bool* bAdjustCamera = null, bool* bIgnoreTrace = null, float* FocusPitchOffsetDeg = null)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Vector*)params.ptr = FocusWorldLoc;
		*cast(UObject.Vector2D*)&params[12] = InterpSpeedRange;
		*cast(UObject.Vector2D*)&params[20] = InFocusFOV;
		if (CameraFOV !is null)
			*cast(float*)&params[28] = *CameraFOV;
		if (bAlwaysFocus !is null)
			*cast(bool*)&params[32] = *bAlwaysFocus;
		if (bAdjustCamera !is null)
			*cast(bool*)&params[36] = *bAdjustCamera;
		if (bIgnoreTrace !is null)
			*cast(bool*)&params[40] = *bIgnoreTrace;
		if (FocusPitchOffsetDeg !is null)
			*cast(float*)&params[44] = *FocusPitchOffsetDeg;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFocusOnLoc, params.ptr, cast(void*)0);
	}
	void SetFocusOnActor(Actor FocusActor, ScriptName FocusBoneName, UObject.Vector2D InterpSpeedRange, UObject.Vector2D InFocusFOV, float* CameraFOV = null, bool* bAlwaysFocus = null, bool* bAdjustCamera = null, bool* bIgnoreTrace = null, float* FocusPitchOffsetDeg = null)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Actor*)params.ptr = FocusActor;
		*cast(ScriptName*)&params[4] = FocusBoneName;
		*cast(UObject.Vector2D*)&params[12] = InterpSpeedRange;
		*cast(UObject.Vector2D*)&params[20] = InFocusFOV;
		if (CameraFOV !is null)
			*cast(float*)&params[28] = *CameraFOV;
		if (bAlwaysFocus !is null)
			*cast(bool*)&params[32] = *bAlwaysFocus;
		if (bAdjustCamera !is null)
			*cast(bool*)&params[36] = *bAdjustCamera;
		if (bIgnoreTrace !is null)
			*cast(bool*)&params[40] = *bIgnoreTrace;
		if (FocusPitchOffsetDeg !is null)
			*cast(float*)&params[44] = *FocusPitchOffsetDeg;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFocusOnActor, params.ptr, cast(void*)0);
	}
	Actor GetFocusActor()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFocusActor, params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	void ClearFocusPoint(bool* bLeaveCameraRotation = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bLeaveCameraRotation !is null)
			*cast(bool*)params.ptr = *bLeaveCameraRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearFocusPoint, params.ptr, cast(void*)0);
	}
	void UpdateFocusPoint(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateFocusPoint, params.ptr, cast(void*)0);
	}
	Vector GetActualFocusLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetActualFocusLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void AdjustFocusPointInterpolation(Rotator Delta)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = Delta;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustFocusPointInterpolation, params.ptr, cast(void*)0);
	}
	GameThirdPersonCameraMode FindBestCameraMode(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindBestCameraMode, params.ptr, cast(void*)0);
		return *cast(GameThirdPersonCameraMode*)&params[4];
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
	void OnBecomeActive(GameCameraBase OldCamera)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCameraBase*)params.ptr = OldCamera;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnBecomeActive, params.ptr, cast(void*)0);
	}
	void ModifyPostProcessSettings(ref PostProcessVolume.PostProcessSettings PP)
	{
		ubyte params[220];
		params[] = 0;
		*cast(PostProcessVolume.PostProcessSettings*)params.ptr = PP;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyPostProcessSettings, params.ptr, cast(void*)0);
		PP = *cast(PostProcessVolume.PostProcessSettings*)params.ptr;
	}
	void ResetInterpolation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetInterpolation, cast(void*)0, cast(void*)0);
	}
}
