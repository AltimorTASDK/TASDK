module UnrealScript.Engine.CameraModifier;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Camera;
import UnrealScript.Engine.Actor;

extern(C++) interface CameraModifier : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.CameraModifier")); }
	private static __gshared CameraModifier mDefaultProperties;
	@property final static CameraModifier DefaultProperties() { mixin(MGDPC("CameraModifier", "CameraModifier Engine.Default__CameraModifier")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAddCameraModifier;
			ScriptFunction mProcessViewRotation;
			ScriptFunction mInit;
			ScriptFunction mModifyCamera;
			ScriptFunction mIsDisabled;
			ScriptFunction mRemoveCameraModifier;
			ScriptFunction mDisableModifier;
			ScriptFunction mEnableModifier;
			ScriptFunction mToggleModifier;
			ScriptFunction mUpdateAlpha;
		}
		public @property static final
		{
			ScriptFunction AddCameraModifier() { mixin(MGF("mAddCameraModifier", "Function Engine.CameraModifier.AddCameraModifier")); }
			ScriptFunction ProcessViewRotation() { mixin(MGF("mProcessViewRotation", "Function Engine.CameraModifier.ProcessViewRotation")); }
			ScriptFunction Init() { mixin(MGF("mInit", "Function Engine.CameraModifier.Init")); }
			ScriptFunction ModifyCamera() { mixin(MGF("mModifyCamera", "Function Engine.CameraModifier.ModifyCamera")); }
			ScriptFunction IsDisabled() { mixin(MGF("mIsDisabled", "Function Engine.CameraModifier.IsDisabled")); }
			ScriptFunction RemoveCameraModifier() { mixin(MGF("mRemoveCameraModifier", "Function Engine.CameraModifier.RemoveCameraModifier")); }
			ScriptFunction DisableModifier() { mixin(MGF("mDisableModifier", "Function Engine.CameraModifier.DisableModifier")); }
			ScriptFunction EnableModifier() { mixin(MGF("mEnableModifier", "Function Engine.CameraModifier.EnableModifier")); }
			ScriptFunction ToggleModifier() { mixin(MGF("mToggleModifier", "Function Engine.CameraModifier.ToggleModifier")); }
			ScriptFunction UpdateAlpha() { mixin(MGF("mUpdateAlpha", "Function Engine.CameraModifier.UpdateAlpha")); }
		}
	}
	@property final
	{
		auto ref
		{
			float TargetAlpha() { mixin(MGPC("float", 84)); }
			float Alpha() { mixin(MGPC("float", 80)); }
			float AlphaOutTime() { mixin(MGPC("float", 76)); }
			float AlphaInTime() { mixin(MGPC("float", 72)); }
			ubyte Priority() { mixin(MGPC("ubyte", 68)); }
			Camera CameraOwner() { mixin(MGPC("Camera", 64)); }
		}
		bool bDebug() { mixin(MGBPC(60, 0x8)); }
		bool bDebug(bool val) { mixin(MSBPC(60, 0x8)); }
		bool bExclusive() { mixin(MGBPC(60, 0x4)); }
		bool bExclusive(bool val) { mixin(MSBPC(60, 0x4)); }
		bool bPendingDisable() { mixin(MGBPC(60, 0x2)); }
		bool bPendingDisable(bool val) { mixin(MSBPC(60, 0x2)); }
		bool bDisabled() { mixin(MGBPC(60, 0x1)); }
		bool bDisabled(bool val) { mixin(MSBPC(60, 0x1)); }
	}
final:
	bool AddCameraModifier(Camera pCamera)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Camera*)params.ptr = pCamera;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddCameraModifier, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ProcessViewRotation(Actor ViewTarget, float DeltaTime, ref Rotator out_ViewRotation, ref Rotator out_DeltaRot)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Actor*)params.ptr = ViewTarget;
		*cast(float*)&params[4] = DeltaTime;
		*cast(Rotator*)&params[8] = out_ViewRotation;
		*cast(Rotator*)&params[20] = out_DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessViewRotation, params.ptr, cast(void*)0);
		out_ViewRotation = *cast(Rotator*)&params[8];
		out_DeltaRot = *cast(Rotator*)&params[20];
		return *cast(bool*)&params[32];
	}
	void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, cast(void*)0, cast(void*)0);
	}
	bool ModifyCamera(Camera pCamera, float DeltaTime, ref UObject.TPOV OutPOV)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Camera*)params.ptr = pCamera;
		*cast(float*)&params[4] = DeltaTime;
		*cast(UObject.TPOV*)&params[8] = OutPOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyCamera, params.ptr, cast(void*)0);
		OutPOV = *cast(UObject.TPOV*)&params[8];
		return *cast(bool*)&params[36];
	}
	bool IsDisabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsDisabled, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool RemoveCameraModifier(Camera pCamera)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Camera*)params.ptr = pCamera;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveCameraModifier, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void DisableModifier(bool* bImmediate = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bImmediate !is null)
			*cast(bool*)params.ptr = *bImmediate;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisableModifier, params.ptr, cast(void*)0);
	}
	void EnableModifier()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableModifier, cast(void*)0, cast(void*)0);
	}
	void ToggleModifier()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleModifier, cast(void*)0, cast(void*)0);
	}
	void UpdateAlpha(Camera pCamera, float DeltaTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Camera*)params.ptr = pCamera;
		*cast(float*)&params[4] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateAlpha, params.ptr, cast(void*)0);
	}
}
