module UnrealScript.UDKBase.UDKEmitCameraEffect;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKPlayerController;
import UnrealScript.Engine.Emitter;

extern(C++) interface UDKEmitCameraEffect : Emitter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKEmitCameraEffect")()); }
	private static __gshared UDKEmitCameraEffect mDefaultProperties;
	@property final static UDKEmitCameraEffect DefaultProperties() { mixin(MGDPC!(UDKEmitCameraEffect, "UDKEmitCameraEffect UDKBase.Default__UDKEmitCameraEffect")()); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UDKBase.UDKEmitCameraEffect.PostBeginPlay")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function UDKBase.UDKEmitCameraEffect.Destroyed")()); }
			ScriptFunction RegisterCamera() { mixin(MGF!("mRegisterCamera", "Function UDKBase.UDKEmitCameraEffect.RegisterCamera")()); }
			ScriptFunction Activate() { mixin(MGF!("mActivate", "Function UDKBase.UDKEmitCameraEffect.Activate")()); }
			ScriptFunction Deactivate() { mixin(MGF!("mDeactivate", "Function UDKBase.UDKEmitCameraEffect.Deactivate")()); }
			ScriptFunction UpdateLocation() { mixin(MGF!("mUpdateLocation", "Function UDKBase.UDKEmitCameraEffect.UpdateLocation")()); }
		}
	}
	@property final auto ref
	{
		UDKPlayerController Cam() { mixin(MGPC!(UDKPlayerController, 492)()); }
		float DistFromCamera() { mixin(MGPC!(float, 488)()); }
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
	void UpdateLocation(ref const Vector CamLoc, ref const Rotator CamRot, float CamFOVDeg)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = CamLoc;
		*cast(Rotator*)&params[12] = CamRot;
		*cast(float*)&params[24] = CamFOVDeg;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateLocation, params.ptr, cast(void*)0);
		*CamLoc = *cast(Vector*)params.ptr;
		*CamRot = *cast(Rotator*)&params[12];
	}
}
