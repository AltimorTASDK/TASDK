module UnrealScript.UDKBase.UDKEmitCameraEffect;

import ScriptClasses;
import UnrealScript.UDKBase.UDKPlayerController;
import UnrealScript.Engine.Emitter;

extern(C++) interface UDKEmitCameraEffect : Emitter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKEmitCameraEffect")); }
	private static __gshared UDKEmitCameraEffect mDefaultProperties;
	@property final static UDKEmitCameraEffect DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKEmitCameraEffect)("UDKEmitCameraEffect UDKBase.Default__UDKEmitCameraEffect")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mDestroyed;
			ScriptFunction mRegisterCamera;
			ScriptFunction mActivate;
			ScriptFunction mDeactivate;
			ScriptFunction mUpdateLocation;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKEmitCameraEffect.PostBeginPlay")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKEmitCameraEffect.Destroyed")); }
			ScriptFunction RegisterCamera() { return mRegisterCamera ? mRegisterCamera : (mRegisterCamera = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKEmitCameraEffect.RegisterCamera")); }
			ScriptFunction Activate() { return mActivate ? mActivate : (mActivate = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKEmitCameraEffect.Activate")); }
			ScriptFunction Deactivate() { return mDeactivate ? mDeactivate : (mDeactivate = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKEmitCameraEffect.Deactivate")); }
			ScriptFunction UpdateLocation() { return mUpdateLocation ? mUpdateLocation : (mUpdateLocation = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKEmitCameraEffect.UpdateLocation")); }
		}
	}
	@property final auto ref
	{
		UDKPlayerController Cam() { return *cast(UDKPlayerController*)(cast(size_t)cast(void*)this + 492); }
		float DistFromCamera() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void RegisterCamera(UDKPlayerController inCam)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKPlayerController*)params.ptr = inCam;
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterCamera, params.ptr, cast(void*)0);
	}
	void Activate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activate, cast(void*)0, cast(void*)0);
	}
	void Deactivate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Deactivate, cast(void*)0, cast(void*)0);
	}
	void UpdateLocation(Vector* CamLoc, Rotator* CamRot, float CamFOVDeg)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = *CamLoc;
		*cast(Rotator*)&params[12] = *CamRot;
		*cast(float*)&params[24] = CamFOVDeg;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateLocation, params.ptr, cast(void*)0);
		*CamLoc = *cast(Vector*)params.ptr;
		*CamRot = *cast(Rotator*)&params[12];
	}
}
