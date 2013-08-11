module UnrealScript.Engine.CameraActor;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PostProcessVolume;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.HUD;

extern(C++) interface CameraActor : Actor
{
	public @property final bool bConstrainAspectRatio() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1) != 0; }
	public @property final bool bConstrainAspectRatio(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1; } return val; }
	public @property final auto ref float AspectRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
	public @property final auto ref float CamOverridePostProcessAlpha() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref PostProcessVolume.PostProcessSettings CamOverridePostProcess() { return *cast(PostProcessVolume.PostProcessSettings*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref float FOVAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
	public @property final bool bCamOverridePostProcess() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x2) != 0; }
	public @property final bool bCamOverridePostProcess(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x2; } return val; }
	final void GetCameraView(float DeltaTime, UObject.TPOV* OutPOV)
	{
		ubyte params[32];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(UObject.TPOV*)&params[4] = *OutPOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12119], params.ptr, cast(void*)0);
		*OutPOV = *cast(UObject.TPOV*)&params[4];
	}
	final void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12122], params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
}
