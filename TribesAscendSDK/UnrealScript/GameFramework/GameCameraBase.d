module UnrealScript.GameFramework.GameCameraBase;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.GameCameraBase")()); }
	private static __gshared GameCameraBase mDefaultProperties;
	@property final static GameCameraBase DefaultProperties() { mixin(MGDPC!(GameCameraBase, "GameCameraBase GameFramework.Default__GameCameraBase")()); }
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
			ScriptFunction OnBecomeActive() { mixin(MGF!("mOnBecomeActive", "Function GameFramework.GameCameraBase.OnBecomeActive")()); }
			ScriptFunction OnBecomeInActive() { mixin(MGF!("mOnBecomeInActive", "Function GameFramework.GameCameraBase.OnBecomeInActive")()); }
			ScriptFunction ResetInterpolation() { mixin(MGF!("mResetInterpolation", "Function GameFramework.GameCameraBase.ResetInterpolation")()); }
			ScriptFunction UpdateCamera() { mixin(MGF!("mUpdateCamera", "Function GameFramework.GameCameraBase.UpdateCamera")()); }
			ScriptFunction ProcessViewRotation() { mixin(MGF!("mProcessViewRotation", "Function GameFramework.GameCameraBase.ProcessViewRotation")()); }
			ScriptFunction DisplayDebug() { mixin(MGF!("mDisplayDebug", "Function GameFramework.GameCameraBase.DisplayDebug")()); }
			ScriptFunction Init() { mixin(MGF!("mInit", "Function GameFramework.GameCameraBase.Init")()); }
			ScriptFunction ModifyPostProcessSettings() { mixin(MGF!("mModifyPostProcessSettings", "Function GameFramework.GameCameraBase.ModifyPostProcessSettings")()); }
		}
	}
	@property final
	{
		@property final auto ref GamePlayerCamera PlayerCamera() { mixin(MGPC!("GamePlayerCamera", 60)()); }
		bool bResetCameraInterpolation() { mixin(MGBPC!(64, 0x1)()); }
		bool bResetCameraInterpolation(bool val) { mixin(MSBPC!(64, 0x1)()); }
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
	void DisplayDebug(HUD pHUD, ref float out_YL, ref float out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = out_YL;
		*cast(float*)&params[8] = out_YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		out_YL = *cast(float*)&params[4];
		out_YPos = *cast(float*)&params[8];
	}
	void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, cast(void*)0, cast(void*)0);
	}
	void ModifyPostProcessSettings(ref PostProcessVolume.PostProcessSettings PP)
	{
		ubyte params[220];
		params[] = 0;
		*cast(PostProcessVolume.PostProcessSettings*)params.ptr = PP;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyPostProcessSettings, params.ptr, cast(void*)0);
		PP = *cast(PostProcessVolume.PostProcessSettings*)params.ptr;
	}
}
