module UnrealScript.GameFramework.GamePlayerCamera;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GamePlayerCamera")); }
	private static __gshared GamePlayerCamera mDefaultProperties;
	@property final static GamePlayerCamera DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GamePlayerCamera)("GamePlayerCamera GameFramework.Default__GamePlayerCamera")); }
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
			ScriptFunction CreateCamera() { return mCreateCamera ? mCreateCamera : (mCreateCamera = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerCamera.CreateCamera")); }
			ScriptFunction CacheLastTargetBaseInfo() { return mCacheLastTargetBaseInfo ? mCacheLastTargetBaseInfo : (mCacheLastTargetBaseInfo = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerCamera.CacheLastTargetBaseInfo")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerCamera.PostBeginPlay")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerCamera.Reset")); }
			ScriptFunction FindBestCameraType() { return mFindBestCameraType ? mFindBestCameraType : (mFindBestCameraType = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerCamera.FindBestCameraType")); }
			ScriptFunction ShouldConstrainAspectRatio() { return mShouldConstrainAspectRatio ? mShouldConstrainAspectRatio : (mShouldConstrainAspectRatio = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerCamera.ShouldConstrainAspectRatio")); }
			ScriptFunction UpdateViewTarget() { return mUpdateViewTarget ? mUpdateViewTarget : (mUpdateViewTarget = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerCamera.UpdateViewTarget")); }
			ScriptFunction AdjustFOVForViewport() { return mAdjustFOVForViewport ? mAdjustFOVForViewport : (mAdjustFOVForViewport = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerCamera.AdjustFOVForViewport")); }
			ScriptFunction UpdateCameraLensEffects() { return mUpdateCameraLensEffects ? mUpdateCameraLensEffects : (mUpdateCameraLensEffects = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerCamera.UpdateCameraLensEffects")); }
			ScriptFunction DisplayDebug() { return mDisplayDebug ? mDisplayDebug : (mDisplayDebug = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerCamera.DisplayDebug")); }
			ScriptFunction SetColorScale() { return mSetColorScale ? mSetColorScale : (mSetColorScale = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerCamera.SetColorScale")); }
			ScriptFunction ResetInterpolation() { return mResetInterpolation ? mResetInterpolation : (mResetInterpolation = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerCamera.ResetInterpolation")); }
			ScriptFunction ProcessViewRotation() { return mProcessViewRotation ? mProcessViewRotation : (mProcessViewRotation = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePlayerCamera.ProcessViewRotation")); }
		}
	}
	@property final
	{
		auto ref
		{
			UObject.Matrix LastTargetBaseTM() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 1136); }
			Actor LastTargetBase() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1124); }
			float SplitScreenShakeScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1120); }
			Actor LastViewTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1116); }
			float ForcedCamFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 1112); }
			GameCameraBase CurrentCamera() { return *cast(GameCameraBase*)(cast(size_t)cast(void*)this + 1104); }
			ScriptClass FixedCameraClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1100); }
			GameCameraBase FixedCam() { return *cast(GameCameraBase*)(cast(size_t)cast(void*)this + 1096); }
			ScriptClass ThirdPersonCameraClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1092); }
			GameCameraBase ThirdPersonCam() { return *cast(GameCameraBase*)(cast(size_t)cast(void*)this + 1088); }
		}
		bool bResetInterp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1108) & 0x4) != 0; }
		bool bResetInterp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1108) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1108) &= ~0x4; } return val; }
		bool bInterpolateCamChanges() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1108) & 0x2) != 0; }
		bool bInterpolateCamChanges(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1108) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1108) &= ~0x2; } return val; }
		bool bUseForcedCamFOV() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1108) & 0x1) != 0; }
		bool bUseForcedCamFOV(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1108) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1108) &= ~0x1; } return val; }
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
	void UpdateViewTarget(Camera.TViewTarget* OutVT, float DeltaTime)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Camera.TViewTarget*)params.ptr = *OutVT;
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
	void UpdateCameraLensEffects(Camera.TViewTarget* OutVT)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Camera.TViewTarget*)params.ptr = *OutVT;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateCameraLensEffects, params.ptr, cast(void*)0);
		*OutVT = *cast(Camera.TViewTarget*)params.ptr;
	}
	void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
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
	void ProcessViewRotation(float DeltaTime, Rotator* out_ViewRotation, Rotator* out_DeltaRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Rotator*)&params[4] = *out_ViewRotation;
		*cast(Rotator*)&params[16] = *out_DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessViewRotation, params.ptr, cast(void*)0);
		*out_ViewRotation = *cast(Rotator*)&params[4];
		*out_DeltaRot = *cast(Rotator*)&params[16];
	}
}
