module UnrealScript.Engine.CameraModifier;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Camera;
import UnrealScript.Engine.Actor;

extern(C++) interface CameraModifier : UObject
{
	public @property final auto ref float TargetAlpha() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float Alpha() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref float AlphaOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref float AlphaInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref ubyte Priority() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref Camera CameraOwner() { return *cast(Camera*)(cast(size_t)cast(void*)this + 64); }
	public @property final bool bDebug() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x8) != 0; }
	public @property final bool bDebug(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x8; } return val; }
	public @property final bool bExclusive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x4) != 0; }
	public @property final bool bExclusive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x4; } return val; }
	public @property final bool bPendingDisable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
	public @property final bool bPendingDisable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
	public @property final bool bDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
	public @property final bool bDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
	final bool AddCameraModifier(Camera pCamera)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Camera*)params.ptr = pCamera;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6408], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool ProcessViewRotation(Actor ViewTarget, float DeltaTime, Rotator* out_ViewRotation, Rotator* out_DeltaRot)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Actor*)params.ptr = ViewTarget;
		*cast(float*)&params[4] = DeltaTime;
		*cast(Rotator*)&params[8] = *out_ViewRotation;
		*cast(Rotator*)&params[20] = *out_DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6618], params.ptr, cast(void*)0);
		*out_ViewRotation = *cast(Rotator*)&params[8];
		*out_DeltaRot = *cast(Rotator*)&params[20];
		return *cast(bool*)&params[32];
	}
	final void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12200], cast(void*)0, cast(void*)0);
	}
	final bool ModifyCamera(Camera pCamera, float DeltaTime, UObject.TPOV* OutPOV)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Camera*)params.ptr = pCamera;
		*cast(float*)&params[4] = DeltaTime;
		*cast(UObject.TPOV*)&params[8] = *OutPOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12201], params.ptr, cast(void*)0);
		*OutPOV = *cast(UObject.TPOV*)&params[8];
		return *cast(bool*)&params[36];
	}
	final bool IsDisabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12206], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool RemoveCameraModifier(Camera pCamera)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Camera*)params.ptr = pCamera;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12212], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void DisableModifier(bool bImmediate)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bImmediate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12216], params.ptr, cast(void*)0);
	}
	final void EnableModifier()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12218], cast(void*)0, cast(void*)0);
	}
	final void ToggleModifier()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12219], cast(void*)0, cast(void*)0);
	}
	final void UpdateAlpha(Camera pCamera, float DeltaTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Camera*)params.ptr = pCamera;
		*cast(float*)&params[4] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12224], params.ptr, cast(void*)0);
	}
}
