module UnrealScript.Engine.EmitterCameraLensEffectBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Camera;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Emitter;

extern(C++) interface EmitterCameraLensEffectBase : Emitter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.EmitterCameraLensEffectBase")); }
	private static __gshared EmitterCameraLensEffectBase mDefaultProperties;
	@property final static EmitterCameraLensEffectBase DefaultProperties() { mixin(MGDPC("EmitterCameraLensEffectBase", "EmitterCameraLensEffectBase Engine.Default__EmitterCameraLensEffectBase")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mDestroyed;
			ScriptFunction mRegisterCamera;
			ScriptFunction mNotifyRetriggered;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mActivateLensEffect;
			ScriptFunction mUpdateLocation;
		}
		public @property static final
		{
			ScriptFunction Destroyed() { mixin(MGF("mDestroyed", "Function Engine.EmitterCameraLensEffectBase.Destroyed")); }
			ScriptFunction RegisterCamera() { mixin(MGF("mRegisterCamera", "Function Engine.EmitterCameraLensEffectBase.RegisterCamera")); }
			ScriptFunction NotifyRetriggered() { mixin(MGF("mNotifyRetriggered", "Function Engine.EmitterCameraLensEffectBase.NotifyRetriggered")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function Engine.EmitterCameraLensEffectBase.PostBeginPlay")); }
			ScriptFunction ActivateLensEffect() { mixin(MGF("mActivateLensEffect", "Function Engine.EmitterCameraLensEffectBase.ActivateLensEffect")); }
			ScriptFunction UpdateLocation() { mixin(MGF("mUpdateLocation", "Function Engine.EmitterCameraLensEffectBase.UpdateLocation")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptClass) EmittersToTreatAsSame() { mixin(MGPC("ScriptArray!(ScriptClass)", 508)); }
			Camera BaseCamera() { mixin(MGPC("Camera", 520)); }
			float DistFromCamera() { mixin(MGPC("float", 500)); }
			float BaseFOV() { mixin(MGPC("float", 496)); }
			ParticleSystem PS_CameraEffectNonExtremeContent() { mixin(MGPC("ParticleSystem", 492)); }
			ParticleSystem PS_CameraEffect() { mixin(MGPC("ParticleSystem", 488)); }
		}
		bool bAllowMultipleInstances() { mixin(MGBPC(504, 0x1)); }
		bool bAllowMultipleInstances(bool val) { mixin(MSBPC(504, 0x1)); }
	}
final:
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void RegisterCamera(Camera C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Camera*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterCamera, params.ptr, cast(void*)0);
	}
	void NotifyRetriggered()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyRetriggered, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void ActivateLensEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ActivateLensEffect, cast(void*)0, cast(void*)0);
	}
	void UpdateLocation(ref in Vector CamLoc, ref in Rotator CamRot, float CamFOVDeg)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = cast(Vector)CamLoc;
		*cast(Rotator*)&params[12] = cast(Rotator)CamRot;
		*cast(float*)&params[24] = CamFOVDeg;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateLocation, params.ptr, cast(void*)0);
	}
}
