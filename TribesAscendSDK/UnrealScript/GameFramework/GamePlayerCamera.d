module UnrealScript.GameFramework.GamePlayerCamera;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Camera;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.GameFramework.GameCameraBase;
import UnrealScript.Engine.HUD;

extern(C++) interface GamePlayerCamera : Camera
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.GamePlayerCamera")()); }
	private static __gshared GamePlayerCamera mDefaultProperties;
	@property final static GamePlayerCamera DefaultProperties() { mixin(MGDPC!(GamePlayerCamera, "GamePlayerCamera GameFramework.Default__GamePlayerCamera")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCreateCamera;
			ScriptFunction mCacheLastTargetBaseInfo;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mReset;
			ScriptFunction mFindBestCameraType;
			ScriptFunction mShouldConstrainAspectRatio;
			ScriptFunction mUpdateViewTarget;
			ScriptFunction mAdjustFOVForViewport;
			ScriptFunction mUpdateCameraLensEffects;
			ScriptFunction mDisplayDebug;
			ScriptFunction mSetColorScale;
			ScriptFunction mResetInterpolation;
			ScriptFunction mProcessViewRotation;
		}
		public @property static final
		{
			ScriptFunction CreateCamera() { mixin(MGF!("mCreateCamera", "Function GameFramework.GamePlayerCamera.CreateCamera")()); }
			ScriptFunction CacheLastTargetBaseInfo() { mixin(MGF!("mCacheLastTargetBaseInfo", "Function GameFramework.GamePlayerCamera.CacheLastTargetBaseInfo")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function GameFramework.GamePlayerCamera.PostBeginPlay")()); }
			ScriptFunction Reset() { mixin(MGF!("mReset", "Function GameFramework.GamePlayerCamera.Reset")()); }
			ScriptFunction FindBestCameraType() { mixin(MGF!("mFindBestCameraType", "Function GameFramework.GamePlayerCamera.FindBestCameraType")()); }
			ScriptFunction ShouldConstrainAspectRatio() { mixin(MGF!("mShouldConstrainAspectRatio", "Function GameFramework.GamePlayerCamera.ShouldConstrainAspectRatio")()); }
			ScriptFunction UpdateViewTarget() { mixin(MGF!("mUpdateViewTarget", "Function GameFramework.GamePlayerCamera.UpdateViewTarget")()); }
			ScriptFunction AdjustFOVForViewport() { mixin(MGF!("mAdjustFOVForViewport", "Function GameFramework.GamePlayerCamera.AdjustFOVForViewport")()); }
			ScriptFunction UpdateCameraLensEffects() { mixin(MGF!("mUpdateCameraLensEffects", "Function GameFramework.GamePlayerCamera.UpdateCameraLensEffects")()); }
			ScriptFunction DisplayDebug() { mixin(MGF!("mDisplayDebug", "Function GameFramework.GamePlayerCamera.DisplayDebug")()); }
			ScriptFunction SetColorScale() { mixin(MGF!("mSetColorScale", "Function GameFramework.GamePlayerCamera.SetColorScale")()); }
			ScriptFunction ResetInterpolation() { mixin(MGF!("mResetInterpolation", "Function GameFramework.GamePlayerCamera.ResetInterpolation")()); }
			ScriptFunction ProcessViewRotation() { mixin(MGF!("mProcessViewRotation", "Function GameFramework.GamePlayerCamera.ProcessViewRotation")()); }
		}
	}
	@property final
	{
		auto ref
		{
			UObject.Matrix LastTargetBaseTM() { mixin(MGPC!(UObject.Matrix, 1136)()); }
			Actor LastTargetBase() { mixin(MGPC!(Actor, 1124)()); }
			float SplitScreenShakeScale() { mixin(MGPC!(float, 1120)()); }
			Actor LastViewTarget() { mixin(MGPC!(Actor, 1116)()); }
			float ForcedCamFOV() { mixin(MGPC!(float, 1112)()); }
			GameCameraBase CurrentCamera() { mixin(MGPC!(GameCameraBase, 1104)()); }
			ScriptClass FixedCameraClass() { mixin(MGPC!(ScriptClass, 1100)()); }
			GameCameraBase FixedCam() { mixin(MGPC!(GameCameraBase, 1096)()); }
			ScriptClass ThirdPersonCameraClass() { mixin(MGPC!(ScriptClass, 1092)()); }
			GameCameraBase ThirdPersonCam() { mixin(MGPC!(GameCameraBase, 1088)()); }
		}
		bool bResetInterp() { mixin(MGBPC!(1108, 0x4)()); }
		bool bResetInterp(bool val) { mixin(MSBPC!(1108, 0x4)()); }
		bool bInterpolateCamChanges() { mixin(MGBPC!(1108, 0x2)()); }
		bool bInterpolateCamChanges(bool val) { mixin(MSBPC!(1108, 0x2)()); }
		bool bUseForcedCamFOV() { mixin(MGBPC!(1108, 0x1)()); }
		bool bUseForcedCamFOV(bool val) { mixin(MSBPC!(1108, 0x1)()); }
	}
final:
	GameCameraBase CreateCamera(ScriptClass CameraClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = CameraClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateCamera, params.ptr, cast(void*)0);
		return *cast(GameCameraBase*)&params[4];
	}
	void CacheLastTargetBaseInfo(Actor TargetBase)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = TargetBase;
		(cast(ScriptObject)this).ProcessEvent(Functions.CacheLastTargetBaseInfo, params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	GameCameraBase FindBestCameraType(Actor CameraTarget)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = CameraTarget;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindBestCameraType, params.ptr, cast(void*)0);
		return *cast(GameCameraBase*)&params[4];
	}
	bool ShouldConstrainAspectRatio()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldConstrainAspectRatio, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void UpdateViewTarget(ref Camera.TViewTarget OutVT, float DeltaTime)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Camera.TViewTarget*)params.ptr = OutVT;
		*cast(float*)&params[44] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateViewTarget, params.ptr, cast(void*)0);
		*OutVT = *cast(Camera.TViewTarget*)params.ptr;
	}
	float AdjustFOVForViewport(float inHorizFOV, Pawn CameraTargetPawn)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = inHorizFOV;
		*cast(Pawn*)&params[4] = CameraTargetPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustFOVForViewport, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	void UpdateCameraLensEffects(ref const Camera.TViewTarget OutVT)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Camera.TViewTarget*)params.ptr = OutVT;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateCameraLensEffects, params.ptr, cast(void*)0);
		*OutVT = *cast(Camera.TViewTarget*)params.ptr;
	}
	void DisplayDebug(HUD pHUD, ref float out_YL, ref float out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = out_YL;
		*cast(float*)&params[8] = out_YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	void SetColorScale(Vector NewColorScale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewColorScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetColorScale, params.ptr, cast(void*)0);
	}
	void ResetInterpolation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetInterpolation, cast(void*)0, cast(void*)0);
	}
	void ProcessViewRotation(float DeltaTime, ref Rotator out_ViewRotation, ref Rotator out_DeltaRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Rotator*)&params[4] = out_ViewRotation;
		*cast(Rotator*)&params[16] = out_DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessViewRotation, params.ptr, cast(void*)0);
		*out_ViewRotation = *cast(Rotator*)&params[4];
		*out_DeltaRot = *cast(Rotator*)&params[16];
	}
}
