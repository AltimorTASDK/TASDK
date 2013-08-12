module UnrealScript.GameFramework.GameCameraBase;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Camera;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PostProcessVolume;
import UnrealScript.GameFramework.GamePlayerCamera;
import UnrealScript.Engine.HUD;

extern(C++) interface GameCameraBase : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameCameraBase")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnBecomeActive;
			ScriptFunction mOnBecomeInActive;
			ScriptFunction mResetInterpolation;
			ScriptFunction mUpdateCamera;
			ScriptFunction mProcessViewRotation;
			ScriptFunction mDisplayDebug;
			ScriptFunction mInit;
			ScriptFunction mModifyPostProcessSettings;
		}
		public @property static final
		{
			ScriptFunction OnBecomeActive() { return mOnBecomeActive ? mOnBecomeActive : (mOnBecomeActive = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCameraBase.OnBecomeActive")); }
			ScriptFunction OnBecomeInActive() { return mOnBecomeInActive ? mOnBecomeInActive : (mOnBecomeInActive = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCameraBase.OnBecomeInActive")); }
			ScriptFunction ResetInterpolation() { return mResetInterpolation ? mResetInterpolation : (mResetInterpolation = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCameraBase.ResetInterpolation")); }
			ScriptFunction UpdateCamera() { return mUpdateCamera ? mUpdateCamera : (mUpdateCamera = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCameraBase.UpdateCamera")); }
			ScriptFunction ProcessViewRotation() { return mProcessViewRotation ? mProcessViewRotation : (mProcessViewRotation = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCameraBase.ProcessViewRotation")); }
			ScriptFunction DisplayDebug() { return mDisplayDebug ? mDisplayDebug : (mDisplayDebug = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCameraBase.DisplayDebug")); }
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCameraBase.Init")); }
			ScriptFunction ModifyPostProcessSettings() { return mModifyPostProcessSettings ? mModifyPostProcessSettings : (mModifyPostProcessSettings = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCameraBase.ModifyPostProcessSettings")); }
		}
	}
	@property final
	{
		@property final auto ref GamePlayerCamera PlayerCamera() { return *cast(GamePlayerCamera*)(cast(size_t)cast(void*)this + 60); }
		bool bResetCameraInterpolation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 64) & 0x1) != 0; }
		bool bResetCameraInterpolation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 64) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 64) &= ~0x1; } return val; }
	}
final:
	void OnBecomeActive(GameCameraBase OldCamera)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCameraBase*)params.ptr = OldCamera;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnBecomeActive, params.ptr, cast(void*)0);
	}
	void OnBecomeInActive(GameCameraBase NewCamera)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCameraBase*)params.ptr = NewCamera;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnBecomeInActive, params.ptr, cast(void*)0);
	}
	void ResetInterpolation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetInterpolation, cast(void*)0, cast(void*)0);
	}
	void UpdateCamera(Pawn P, GamePlayerCamera pCameraActor, float DeltaTime, Camera.TViewTarget* OutVT)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(GamePlayerCamera*)&params[4] = pCameraActor;
		*cast(float*)&params[8] = DeltaTime;
		*cast(Camera.TViewTarget*)&params[12] = *OutVT;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateCamera, params.ptr, cast(void*)0);
		*OutVT = *cast(Camera.TViewTarget*)&params[12];
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
	void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, cast(void*)0, cast(void*)0);
	}
	void ModifyPostProcessSettings(PostProcessVolume.PostProcessSettings* PP)
	{
		ubyte params[220];
		params[] = 0;
		*cast(PostProcessVolume.PostProcessSettings*)params.ptr = *PP;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyPostProcessSettings, params.ptr, cast(void*)0);
		*PP = *cast(PostProcessVolume.PostProcessSettings*)params.ptr;
	}
}
