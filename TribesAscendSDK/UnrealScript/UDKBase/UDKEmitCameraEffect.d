module UnrealScript.UDKBase.UDKEmitCameraEffect;

import ScriptClasses;
import UnrealScript.UDKBase.UDKPlayerController;
import UnrealScript.Engine.Emitter;

extern(C++) interface UDKEmitCameraEffect : Emitter
{
public extern(D):
	@property final auto ref
	{
		UDKPlayerController Cam() { return *cast(UDKPlayerController*)(cast(size_t)cast(void*)this + 492); }
		float DistFromCamera() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34778], cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34779], cast(void*)0, cast(void*)0);
	}
	void RegisterCamera(UDKPlayerController inCam)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKPlayerController*)params.ptr = inCam;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34780], params.ptr, cast(void*)0);
	}
	void Activate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34782], cast(void*)0, cast(void*)0);
	}
	void Deactivate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34783], cast(void*)0, cast(void*)0);
	}
	void UpdateLocation(Vector* CamLoc, Rotator* CamRot, float CamFOVDeg)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = *CamLoc;
		*cast(Rotator*)&params[12] = *CamRot;
		*cast(float*)&params[24] = CamFOVDeg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34784], params.ptr, cast(void*)0);
		*CamLoc = *cast(Vector*)params.ptr;
		*CamRot = *cast(Rotator*)&params[12];
	}
}
