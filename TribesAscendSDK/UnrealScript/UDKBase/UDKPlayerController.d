module UnrealScript.UDKBase.UDKPlayerController;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKEmitCameraEffect;
import UnrealScript.Engine.CameraAnimInst;
import UnrealScript.Engine.Pawn;
import UnrealScript.GameFramework.GamePlayerController;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PostProcessVolume;
import UnrealScript.Engine.SoundNodeWave;

extern(C++) interface UDKPlayerController : GamePlayerController
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKPlayerController")); }
	private static __gshared UDKPlayerController mDefaultProperties;
	@property final static UDKPlayerController DefaultProperties() { mixin(MGDPC("UDKPlayerController", "UDKPlayerController UDKBase.Default__UDKPlayerController")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetGamma;
			ScriptFunction mSetHardwarePhysicsEnabled;
			ScriptFunction mIsKeyboardAvailable;
			ScriptFunction mIsMouseAvailable;
			ScriptFunction mRemoveCameraEffect;
			ScriptFunction mClientSpawnCameraEffect;
			ScriptFunction mClearCameraEffect;
			ScriptFunction mGetTargetAdhesionFrictionTarget;
			ScriptFunction mIsControllerTiltActive;
			ScriptFunction mSetControllerTiltDesiredIfAvailable;
			ScriptFunction mSetControllerTiltActive;
			ScriptFunction mSetOnlyUseControllerTiltInput;
			ScriptFunction mSetUseTiltForwardAndBack;
		}
		public @property static final
		{
			ScriptFunction SetGamma() { mixin(MGF("mSetGamma", "Function UDKBase.UDKPlayerController.SetGamma")); }
			ScriptFunction SetHardwarePhysicsEnabled() { mixin(MGF("mSetHardwarePhysicsEnabled", "Function UDKBase.UDKPlayerController.SetHardwarePhysicsEnabled")); }
			ScriptFunction IsKeyboardAvailable() { mixin(MGF("mIsKeyboardAvailable", "Function UDKBase.UDKPlayerController.IsKeyboardAvailable")); }
			ScriptFunction IsMouseAvailable() { mixin(MGF("mIsMouseAvailable", "Function UDKBase.UDKPlayerController.IsMouseAvailable")); }
			ScriptFunction RemoveCameraEffect() { mixin(MGF("mRemoveCameraEffect", "Function UDKBase.UDKPlayerController.RemoveCameraEffect")); }
			ScriptFunction ClientSpawnCameraEffect() { mixin(MGF("mClientSpawnCameraEffect", "Function UDKBase.UDKPlayerController.ClientSpawnCameraEffect")); }
			ScriptFunction ClearCameraEffect() { mixin(MGF("mClearCameraEffect", "Function UDKBase.UDKPlayerController.ClearCameraEffect")); }
			ScriptFunction GetTargetAdhesionFrictionTarget() { mixin(MGF("mGetTargetAdhesionFrictionTarget", "Function UDKBase.UDKPlayerController.GetTargetAdhesionFrictionTarget")); }
			ScriptFunction IsControllerTiltActive() { mixin(MGF("mIsControllerTiltActive", "Function UDKBase.UDKPlayerController.IsControllerTiltActive")); }
			ScriptFunction SetControllerTiltDesiredIfAvailable() { mixin(MGF("mSetControllerTiltDesiredIfAvailable", "Function UDKBase.UDKPlayerController.SetControllerTiltDesiredIfAvailable")); }
			ScriptFunction SetControllerTiltActive() { mixin(MGF("mSetControllerTiltActive", "Function UDKBase.UDKPlayerController.SetControllerTiltActive")); }
			ScriptFunction SetOnlyUseControllerTiltInput() { mixin(MGF("mSetOnlyUseControllerTiltInput", "Function UDKBase.UDKPlayerController.SetOnlyUseControllerTiltInput")); }
			ScriptFunction SetUseTiltForwardAndBack() { mixin(MGF("mSetUseTiltForwardAndBack", "Function UDKBase.UDKPlayerController.SetUseTiltForwardAndBack")); }
		}
	}
	struct ObjectiveAnnouncementInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UDKBase.UDKPlayerController.ObjectiveAnnouncementInfo")); }
		@property final auto ref
		{
			ScriptString AnnouncementText() { mixin(MGPS("ScriptString", 4)); }
			SoundNodeWave AnnouncementSound() { mixin(MGPS("SoundNodeWave", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Actor) PotentiallyHiddenActors() { mixin(MGPC("ScriptArray!(Actor)", 1940)); }
			float PulseTimer() { mixin(MGPC("float", 1956)); }
			float VehicleCheckRadiusScaling() { mixin(MGPC("float", 1952)); }
			PostProcessVolume.PostProcessSettings PostProcessModifier() { mixin(MGPC("PostProcessVolume.PostProcessSettings", 1720)); }
			PostProcessVolume.PostProcessSettings CamOverridePostProcess() { mixin(MGPC("PostProcessVolume.PostProcessSettings", 1500)); }
			Rotator ShakeRot() { mixin(MGPC("Rotator", 1488)); }
			Vector ShakeOffset() { mixin(MGPC("Vector", 1476)); }
			UDKEmitCameraEffect CameraEffect() { mixin(MGPC("UDKEmitCameraEffect", 1468)); }
			CameraAnimInst CameraAnimPlayer() { mixin(MGPC("CameraAnimInst", 1464)); }
		}
		bool bUsePhysicsRotation() { mixin(MGBPC(1472, 0x10)); }
		bool bUsePhysicsRotation(bool val) { mixin(MSBPC(1472, 0x10)); }
		bool bPulseTeamColor() { mixin(MGBPC(1472, 0x8)); }
		bool bPulseTeamColor(bool val) { mixin(MSBPC(1472, 0x8)); }
		bool bConsolePlayer() { mixin(MGBPC(1472, 0x4)); }
		bool bConsolePlayer(bool val) { mixin(MSBPC(1472, 0x4)); }
		bool bAcuteHearing() { mixin(MGBPC(1472, 0x2)); }
		bool bAcuteHearing(bool val) { mixin(MSBPC(1472, 0x2)); }
		bool bDedicatedServerSpectator() { mixin(MGBPC(1472, 0x1)); }
		bool bDedicatedServerSpectator(bool val) { mixin(MSBPC(1472, 0x1)); }
	}
final:
	void SetGamma(float GammaValue)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = GammaValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetGamma, params.ptr, cast(void*)0);
	}
	void SetHardwarePhysicsEnabled(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHardwarePhysicsEnabled, params.ptr, cast(void*)0);
	}
	bool IsKeyboardAvailable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsKeyboardAvailable, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsMouseAvailable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsMouseAvailable, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void RemoveCameraEffect(UDKEmitCameraEffect CamEmitter)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKEmitCameraEffect*)params.ptr = CamEmitter;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveCameraEffect, params.ptr, cast(void*)0);
	}
	void ClientSpawnCameraEffect(ScriptClass CameraEffectClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = CameraEffectClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSpawnCameraEffect, params.ptr, cast(void*)0);
	}
	void ClearCameraEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearCameraEffect, cast(void*)0, cast(void*)0);
	}
	Pawn GetTargetAdhesionFrictionTarget(float MaxDistance, ref in Vector CamLoc, ref in Rotator CamRot)
	{
		ubyte params[32];
		params[] = 0;
		*cast(float*)params.ptr = MaxDistance;
		*cast(Vector*)&params[4] = cast(Vector)CamLoc;
		*cast(Rotator*)&params[16] = cast(Rotator)CamRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTargetAdhesionFrictionTarget, params.ptr, cast(void*)0);
		return *cast(Pawn*)&params[28];
	}
	bool IsControllerTiltActive()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsControllerTiltActive, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetControllerTiltDesiredIfAvailable(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetControllerTiltDesiredIfAvailable, params.ptr, cast(void*)0);
	}
	void SetControllerTiltActive(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetControllerTiltActive, params.ptr, cast(void*)0);
	}
	void SetOnlyUseControllerTiltInput(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetOnlyUseControllerTiltInput, params.ptr, cast(void*)0);
	}
	void SetUseTiltForwardAndBack(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetUseTiltForwardAndBack, params.ptr, cast(void*)0);
	}
}
