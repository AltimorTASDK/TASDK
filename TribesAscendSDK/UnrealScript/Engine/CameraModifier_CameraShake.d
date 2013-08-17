module UnrealScript.Engine.CameraModifier_CameraShake;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.CameraModifier;
import UnrealScript.Engine.CameraAnimInst;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Camera;
import UnrealScript.Engine.CameraShake;

extern(C++) interface CameraModifier_CameraShake : CameraModifier
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.CameraModifier_CameraShake")); }
	private static __gshared CameraModifier_CameraShake mDefaultProperties;
	@property final static CameraModifier_CameraShake DefaultProperties() { mixin(MGDPC("CameraModifier_CameraShake", "CameraModifier_CameraShake Engine.Default__CameraModifier_CameraShake")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitializeOffset;
			ScriptFunction mReinitShake;
			ScriptFunction mInitializeShake;
			ScriptFunction mAddCameraShake;
			ScriptFunction mRemoveCameraShake;
			ScriptFunction mRemoveAllCameraShakes;
			ScriptFunction mUpdateCameraShake;
			ScriptFunction mModifyCamera;
		}
		public @property static final
		{
			ScriptFunction InitializeOffset() { mixin(MGF("mInitializeOffset", "Function Engine.CameraModifier_CameraShake.InitializeOffset")); }
			ScriptFunction ReinitShake() { mixin(MGF("mReinitShake", "Function Engine.CameraModifier_CameraShake.ReinitShake")); }
			ScriptFunction InitializeShake() { mixin(MGF("mInitializeShake", "Function Engine.CameraModifier_CameraShake.InitializeShake")); }
			ScriptFunction AddCameraShake() { mixin(MGF("mAddCameraShake", "Function Engine.CameraModifier_CameraShake.AddCameraShake")); }
			ScriptFunction RemoveCameraShake() { mixin(MGF("mRemoveCameraShake", "Function Engine.CameraModifier_CameraShake.RemoveCameraShake")); }
			ScriptFunction RemoveAllCameraShakes() { mixin(MGF("mRemoveAllCameraShakes", "Function Engine.CameraModifier_CameraShake.RemoveAllCameraShakes")); }
			ScriptFunction UpdateCameraShake() { mixin(MGF("mUpdateCameraShake", "Function Engine.CameraModifier_CameraShake.UpdateCameraShake")); }
			ScriptFunction ModifyCamera() { mixin(MGF("mModifyCamera", "Function Engine.CameraModifier_CameraShake.ModifyCamera")); }
		}
	}
	struct CameraShakeInstance
	{
		private ubyte __buffer__[144];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.CameraModifier_CameraShake.CameraShakeInstance")); }
		@property final
		{
			auto ref
			{
				UObject.Matrix UserPlaySpaceMatrix() { mixin(MGPS("UObject.Matrix", 80)); }
				Camera.ECameraAnimPlaySpace PlaySpace() { mixin(MGPS("Camera.ECameraAnimPlaySpace", 68)); }
				CameraAnimInst AnimInst() { mixin(MGPS("CameraAnimInst", 64)); }
				float Scale() { mixin(MGPS("float", 60)); }
				float FOVSinOffset() { mixin(MGPS("float", 56)); }
				Vector RotSinOffset() { mixin(MGPS("Vector", 44)); }
				Vector LocSinOffset() { mixin(MGPS("Vector", 32)); }
				float CurrentBlendOutTime() { mixin(MGPS("float", 28)); }
				float CurrentBlendInTime() { mixin(MGPS("float", 20)); }
				float OscillatorTimeRemaining() { mixin(MGPS("float", 12)); }
				ScriptName SourceShakeName() { mixin(MGPS("ScriptName", 4)); }
				CameraShake SourceShake() { mixin(MGPS("CameraShake", 0)); }
			}
			bool bBlendingOut() { mixin(MGBPS(24, 0x1)); }
			bool bBlendingOut(bool val) { mixin(MSBPS(24, 0x1)); }
			bool bBlendingIn() { mixin(MGBPS(16, 0x1)); }
			bool bBlendingIn(bool val) { mixin(MSBPS(16, 0x1)); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(CameraModifier_CameraShake.CameraShakeInstance) ActiveShakes() { mixin(MGPC("ScriptArray!(CameraModifier_CameraShake.CameraShakeInstance)", 88)); }
		float SplitScreenShakeScale() { mixin(MGPC("float", 100)); }
	}
final:
	static float InitializeOffset(ref in CameraShake.FOscillator Param)
	{
		ubyte params[16];
		params[] = 0;
		*cast(CameraShake.FOscillator*)params.ptr = cast(CameraShake.FOscillator)Param;
		StaticClass.ProcessEvent(Functions.InitializeOffset, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	void ReinitShake(int ActiveShakeIdx, float Scale)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActiveShakeIdx;
		*cast(float*)&params[4] = Scale;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReinitShake, params.ptr, cast(void*)0);
	}
	CameraModifier_CameraShake.CameraShakeInstance InitializeShake(CameraShake NewShake, float Scale, Camera.ECameraAnimPlaySpace PlaySpace, Rotator* UserPlaySpaceRot = null)
	{
		ubyte params[176];
		params[] = 0;
		*cast(CameraShake*)params.ptr = NewShake;
		*cast(float*)&params[4] = Scale;
		*cast(Camera.ECameraAnimPlaySpace*)&params[8] = PlaySpace;
		if (UserPlaySpaceRot !is null)
			*cast(Rotator*)&params[12] = *UserPlaySpaceRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeShake, params.ptr, cast(void*)0);
		return *cast(CameraModifier_CameraShake.CameraShakeInstance*)&params[32];
	}
	void AddCameraShake(CameraShake NewShake, float Scale, Camera.ECameraAnimPlaySpace* PlaySpace = null, Rotator* UserPlaySpaceRot = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(CameraShake*)params.ptr = NewShake;
		*cast(float*)&params[4] = Scale;
		if (PlaySpace !is null)
			*cast(Camera.ECameraAnimPlaySpace*)&params[8] = *PlaySpace;
		if (UserPlaySpaceRot !is null)
			*cast(Rotator*)&params[12] = *UserPlaySpaceRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddCameraShake, params.ptr, cast(void*)0);
	}
	void RemoveCameraShake(CameraShake Shake)
	{
		ubyte params[4];
		params[] = 0;
		*cast(CameraShake*)params.ptr = Shake;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveCameraShake, params.ptr, cast(void*)0);
	}
	void RemoveAllCameraShakes()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveAllCameraShakes, cast(void*)0, cast(void*)0);
	}
	void UpdateCameraShake(float DeltaTime, ref CameraModifier_CameraShake.CameraShakeInstance Shake, ref UObject.TPOV OutPOV)
	{
		ubyte params[188];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(CameraModifier_CameraShake.CameraShakeInstance*)&params[16] = Shake;
		*cast(UObject.TPOV*)&params[160] = OutPOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateCameraShake, params.ptr, cast(void*)0);
		Shake = *cast(CameraModifier_CameraShake.CameraShakeInstance*)&params[16];
		OutPOV = *cast(UObject.TPOV*)&params[160];
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
}
