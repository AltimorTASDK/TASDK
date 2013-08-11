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
	public @property final auto ref UObject.Matrix LastTargetBaseTM() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 1136); }
	public @property final auto ref Actor LastTargetBase() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1124); }
	public @property final auto ref float SplitScreenShakeScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1120); }
	public @property final auto ref Actor LastViewTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1116); }
	public @property final auto ref float ForcedCamFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 1112); }
	public @property final bool bResetInterp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1108) & 0x4) != 0; }
	public @property final bool bResetInterp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1108) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1108) &= ~0x4; } return val; }
	public @property final bool bInterpolateCamChanges() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1108) & 0x2) != 0; }
	public @property final bool bInterpolateCamChanges(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1108) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1108) &= ~0x2; } return val; }
	public @property final bool bUseForcedCamFOV() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1108) & 0x1) != 0; }
	public @property final bool bUseForcedCamFOV(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1108) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1108) &= ~0x1; } return val; }
	public @property final auto ref GameCameraBase CurrentCamera() { return *cast(GameCameraBase*)(cast(size_t)cast(void*)this + 1104); }
	public @property final auto ref ScriptClass FixedCameraClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1100); }
	public @property final auto ref GameCameraBase FixedCam() { return *cast(GameCameraBase*)(cast(size_t)cast(void*)this + 1096); }
	public @property final auto ref ScriptClass ThirdPersonCameraClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1092); }
	public @property final auto ref GameCameraBase ThirdPersonCam() { return *cast(GameCameraBase*)(cast(size_t)cast(void*)this + 1088); }
	final GameCameraBase CreateCamera(ScriptClass CameraClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = CameraClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31745], params.ptr, cast(void*)0);
		return *cast(GameCameraBase*)&params[4];
	}
	final void CacheLastTargetBaseInfo(Actor TargetBase)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = TargetBase;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31749], params.ptr, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31751], cast(void*)0, cast(void*)0);
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31752], cast(void*)0, cast(void*)0);
	}
	final GameCameraBase FindBestCameraType(Actor CameraTarget)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = CameraTarget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31753], params.ptr, cast(void*)0);
		return *cast(GameCameraBase*)&params[4];
	}
	final bool ShouldConstrainAspectRatio()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31757], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void UpdateViewTarget(Camera.TViewTarget* OutVT, float DeltaTime)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Camera.TViewTarget*)params.ptr = *OutVT;
		*cast(float*)&params[44] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31759], params.ptr, cast(void*)0);
		*OutVT = *cast(Camera.TViewTarget*)params.ptr;
	}
	final float AdjustFOVForViewport(float inHorizFOV, Pawn CameraTargetPawn)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = inHorizFOV;
		*cast(Pawn*)&params[4] = CameraTargetPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31765], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final void UpdateCameraLensEffects(Camera.TViewTarget* OutVT)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Camera.TViewTarget*)params.ptr = *OutVT;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31766], params.ptr, cast(void*)0);
		*OutVT = *cast(Camera.TViewTarget*)params.ptr;
	}
	final void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31769], params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	final void SetColorScale(Vector NewColorScale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewColorScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31774], params.ptr, cast(void*)0);
	}
	final void ResetInterpolation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31776], cast(void*)0, cast(void*)0);
	}
	final void ProcessViewRotation(float DeltaTime, Rotator* out_ViewRotation, Rotator* out_DeltaRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Rotator*)&params[4] = *out_ViewRotation;
		*cast(Rotator*)&params[16] = *out_DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31777], params.ptr, cast(void*)0);
		*out_ViewRotation = *cast(Rotator*)&params[4];
		*out_DeltaRot = *cast(Rotator*)&params[16];
	}
}
