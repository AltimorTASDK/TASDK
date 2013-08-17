module UnrealScript.Engine.Camera;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.CameraAnimInst;
import UnrealScript.Engine.CameraModifier;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.DynamicCameraActor;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.PostProcessVolume;
import UnrealScript.Engine.CameraShake;
import UnrealScript.Engine.CameraModifier_CameraShake;
import UnrealScript.Engine.CameraAnim;
import UnrealScript.Engine.EmitterCameraLensEffectBase;
import UnrealScript.Engine.HUD;

extern(C++) interface Camera : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Camera")); }
	private static __gshared Camera mDefaultProperties;
	@property final static Camera DefaultProperties() { mixin(MGDPC("Camera", "Camera Engine.Default__Camera")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCreateCameraModifier;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mDestroyed;
			ScriptFunction mApplyCameraModifiers;
			ScriptFunction mInitializeFor;
			ScriptFunction mSetViewTarget;
			ScriptFunction mGetFOVAngle;
			ScriptFunction mSetFOV;
			ScriptFunction mGetCameraViewPoint;
			ScriptFunction mGetCameraRotation;
			ScriptFunction mSetDesiredColorScale;
			ScriptFunction mUpdateCamera;
			ScriptFunction mBlendViewTargets;
			ScriptFunction mFillCameraCache;
			ScriptFunction mCheckViewTarget;
			ScriptFunction mUpdateViewTarget;
			ScriptFunction mProcessViewRotation;
			ScriptFunction mDisplayDebug;
			ScriptFunction mFindCameraLensEffect;
			ScriptFunction mAddCameraLensEffect;
			ScriptFunction mRemoveCameraLensEffect;
			ScriptFunction mClearCameraLensEffects;
			ScriptFunction mPlayCameraShake;
			ScriptFunction mStopCameraShake;
			ScriptFunction mCalcRadialShakeScale;
			ScriptFunction mPlayWorldCameraShake;
			ScriptFunction mClearAllCameraShakes;
			ScriptFunction mPlayCameraAnim;
			ScriptFunction mStopAllCameraAnims;
			ScriptFunction mStopAllCameraAnimsByType;
			ScriptFunction mStopCameraAnim;
		}
		public @property static final
		{
			ScriptFunction CreateCameraModifier() { mixin(MGF("mCreateCameraModifier", "Function Engine.Camera.CreateCameraModifier")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function Engine.Camera.PostBeginPlay")); }
			ScriptFunction Destroyed() { mixin(MGF("mDestroyed", "Function Engine.Camera.Destroyed")); }
			ScriptFunction ApplyCameraModifiers() { mixin(MGF("mApplyCameraModifiers", "Function Engine.Camera.ApplyCameraModifiers")); }
			ScriptFunction InitializeFor() { mixin(MGF("mInitializeFor", "Function Engine.Camera.InitializeFor")); }
			ScriptFunction SetViewTarget() { mixin(MGF("mSetViewTarget", "Function Engine.Camera.SetViewTarget")); }
			ScriptFunction GetFOVAngle() { mixin(MGF("mGetFOVAngle", "Function Engine.Camera.GetFOVAngle")); }
			ScriptFunction SetFOV() { mixin(MGF("mSetFOV", "Function Engine.Camera.SetFOV")); }
			ScriptFunction GetCameraViewPoint() { mixin(MGF("mGetCameraViewPoint", "Function Engine.Camera.GetCameraViewPoint")); }
			ScriptFunction GetCameraRotation() { mixin(MGF("mGetCameraRotation", "Function Engine.Camera.GetCameraRotation")); }
			ScriptFunction SetDesiredColorScale() { mixin(MGF("mSetDesiredColorScale", "Function Engine.Camera.SetDesiredColorScale")); }
			ScriptFunction UpdateCamera() { mixin(MGF("mUpdateCamera", "Function Engine.Camera.UpdateCamera")); }
			ScriptFunction BlendViewTargets() { mixin(MGF("mBlendViewTargets", "Function Engine.Camera.BlendViewTargets")); }
			ScriptFunction FillCameraCache() { mixin(MGF("mFillCameraCache", "Function Engine.Camera.FillCameraCache")); }
			ScriptFunction CheckViewTarget() { mixin(MGF("mCheckViewTarget", "Function Engine.Camera.CheckViewTarget")); }
			ScriptFunction UpdateViewTarget() { mixin(MGF("mUpdateViewTarget", "Function Engine.Camera.UpdateViewTarget")); }
			ScriptFunction ProcessViewRotation() { mixin(MGF("mProcessViewRotation", "Function Engine.Camera.ProcessViewRotation")); }
			ScriptFunction DisplayDebug() { mixin(MGF("mDisplayDebug", "Function Engine.Camera.DisplayDebug")); }
			ScriptFunction FindCameraLensEffect() { mixin(MGF("mFindCameraLensEffect", "Function Engine.Camera.FindCameraLensEffect")); }
			ScriptFunction AddCameraLensEffect() { mixin(MGF("mAddCameraLensEffect", "Function Engine.Camera.AddCameraLensEffect")); }
			ScriptFunction RemoveCameraLensEffect() { mixin(MGF("mRemoveCameraLensEffect", "Function Engine.Camera.RemoveCameraLensEffect")); }
			ScriptFunction ClearCameraLensEffects() { mixin(MGF("mClearCameraLensEffects", "Function Engine.Camera.ClearCameraLensEffects")); }
			ScriptFunction PlayCameraShake() { mixin(MGF("mPlayCameraShake", "Function Engine.Camera.PlayCameraShake")); }
			ScriptFunction StopCameraShake() { mixin(MGF("mStopCameraShake", "Function Engine.Camera.StopCameraShake")); }
			ScriptFunction CalcRadialShakeScale() { mixin(MGF("mCalcRadialShakeScale", "Function Engine.Camera.CalcRadialShakeScale")); }
			ScriptFunction PlayWorldCameraShake() { mixin(MGF("mPlayWorldCameraShake", "Function Engine.Camera.PlayWorldCameraShake")); }
			ScriptFunction ClearAllCameraShakes() { mixin(MGF("mClearAllCameraShakes", "Function Engine.Camera.ClearAllCameraShakes")); }
			ScriptFunction PlayCameraAnim() { mixin(MGF("mPlayCameraAnim", "Function Engine.Camera.PlayCameraAnim")); }
			ScriptFunction StopAllCameraAnims() { mixin(MGF("mStopAllCameraAnims", "Function Engine.Camera.StopAllCameraAnims")); }
			ScriptFunction StopAllCameraAnimsByType() { mixin(MGF("mStopAllCameraAnimsByType", "Function Engine.Camera.StopAllCameraAnimsByType")); }
			ScriptFunction StopCameraAnim() { mixin(MGF("mStopCameraAnim", "Function Engine.Camera.StopCameraAnim")); }
		}
	}
	static struct Constants
	{
		enum MAX_ACTIVE_CAMERA_ANIMS = 8;
	}
	enum EViewTargetBlendFunction : ubyte
	{
		VTBlend_Linear = 0,
		VTBlend_Cubic = 1,
		VTBlend_EaseIn = 2,
		VTBlend_EaseOut = 3,
		VTBlend_EaseInOut = 4,
		VTBlend_MAX = 5,
	}
	enum ECameraAnimPlaySpace : ubyte
	{
		CAPS_CameraLocal = 0,
		CAPS_World = 1,
		CAPS_UserDefined = 2,
		CAPS_MAX = 3,
	}
	struct TViewTarget
	{
		private ubyte __buffer__[44];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Camera.TViewTarget")); }
		@property final auto ref
		{
			Actor Target() { mixin(MGPS("Actor", 0)); }
			UObject.TPOV POV() { mixin(MGPS("UObject.TPOV", 8)); }
			float AspectRatio() { mixin(MGPS("float", 36)); }
			// WARNING: Property 'Controller' has the same name as a defined type!
			PlayerReplicationInfo PRI() { mixin(MGPS("PlayerReplicationInfo", 40)); }
		}
	}
	struct TCameraCache
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Camera.TCameraCache")); }
		@property final auto ref
		{
			UObject.TPOV POV() { mixin(MGPS("UObject.TPOV", 4)); }
			float TimeStamp() { mixin(MGPS("float", 0)); }
		}
	}
	struct ViewTargetTransitionParams
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Camera.ViewTargetTransitionParams")); }
		@property final
		{
			auto ref
			{
				float BlendTime() { mixin(MGPS("float", 0)); }
				Camera.EViewTargetBlendFunction BlendFunction() { mixin(MGPS("Camera.EViewTargetBlendFunction", 4)); }
				float BlendExp() { mixin(MGPS("float", 8)); }
			}
			bool bLockOutgoing() { mixin(MGBPS(12, 0x1)); }
			bool bLockOutgoing(bool val) { mixin(MSBPS(12, 0x1)); }
		}
	}
	@property final
	{
		auto ref
		{
			CameraModifier_CameraShake CameraShakeCamMod() { mixin(MGPC("CameraModifier_CameraShake", 1020)); }
			ScriptClass CameraShakeCamModClass() { mixin(MGPC("ScriptClass", 1024)); }
			CameraAnimInst AnimInstPool() { mixin(MGPC("CameraAnimInst", 1028)); }
			ScriptArray!(CameraAnimInst) FreeAnims() { mixin(MGPC("ScriptArray!(CameraAnimInst)", 1072)); }
			DynamicCameraActor AnimCameraActor() { mixin(MGPC("DynamicCameraActor", 1084)); }
			Camera.TCameraCache CameraCache() { mixin(MGPC("Camera.TCameraCache", 792)); }
			float DefaultFOV() { mixin(MGPC("float", 488)); }
			PlayerController PCOwner() { mixin(MGPC("PlayerController", 476)); }
			float LockedFOV() { mixin(MGPC("float", 496)); }
			Vector ColorScale() { mixin(MGPC("Vector", 748)); }
			Vector OriginalColorScale() { mixin(MGPC("Vector", 772)); }
			Vector DesiredColorScale() { mixin(MGPC("Vector", 760)); }
			float ColorScaleInterpStartTime() { mixin(MGPC("float", 788)); }
			float ColorScaleInterpDuration() { mixin(MGPC("float", 784)); }
			float CamOverridePostProcessAlpha() { mixin(MGPC("float", 524)); }
			Camera.TViewTarget PendingViewTarget() { mixin(MGPC("Camera.TViewTarget", 900)); }
			Camera.ViewTargetTransitionParams BlendParams() { mixin(MGPC("Camera.ViewTargetTransitionParams", 948)); }
			Camera.TViewTarget ViewTarget() { mixin(MGPC("Camera.TViewTarget", 856)); }
			float ConstrainedAspectRatio() { mixin(MGPC("float", 500)); }
			float BlendTimeToGo() { mixin(MGPC("float", 944)); }
			float FadeTimeRemaining() { mixin(MGPC("float", 1004)); }
			float FadeTime() { mixin(MGPC("float", 1000)); }
			float FadeAmount() { mixin(MGPC("float", 520)); }
			UObject.Vector2D FadeAlpha() { mixin(MGPC("UObject.Vector2D", 992)); }
			Camera.TCameraCache LastFrameCameraCache() { mixin(MGPC("Camera.TCameraCache", 824)); }
			ScriptArray!(CameraModifier) ModifierList() { mixin(MGPC("ScriptArray!(CameraModifier)", 964)); }
			ScriptArray!(EmitterCameraLensEffectBase) CameraLensEffects() { mixin(MGPC("ScriptArray!(EmitterCameraLensEffectBase)", 1008)); }
			ScriptArray!(CameraAnimInst) ActiveAnims() { mixin(MGPC("ScriptArray!(CameraAnimInst)", 1060)); }
			Vector FreeCamOffset() { mixin(MGPC("Vector", 980)); }
			float FreeCamDistance() { mixin(MGPC("float", 976)); }
			PostProcessVolume.PostProcessSettings CamPostProcessSettings() { mixin(MGPC("PostProcessVolume.PostProcessSettings", 528)); }
			UObject.Color FadeColor() { mixin(MGPC("UObject.Color", 516)); }
			float OffAxisPitchAngle() { mixin(MGPC("float", 512)); }
			float OffAxisYawAngle() { mixin(MGPC("float", 508)); }
			float DefaultAspectRatio() { mixin(MGPC("float", 504)); }
			ScriptName CameraStyle() { mixin(MGPC("ScriptName", 480)); }
		}
		bool bLockedFOV() { mixin(MGBPC(492, 0x1)); }
		bool bLockedFOV(bool val) { mixin(MSBPC(492, 0x1)); }
		bool bEnableColorScaling() { mixin(MGBPC(492, 0x8)); }
		bool bEnableColorScaling(bool val) { mixin(MSBPC(492, 0x8)); }
		bool bEnableColorScaleInterp() { mixin(MGBPC(492, 0x10)); }
		bool bEnableColorScaleInterp(bool val) { mixin(MSBPC(492, 0x10)); }
		bool bConstrainAspectRatio() { mixin(MGBPC(492, 0x2)); }
		bool bConstrainAspectRatio(bool val) { mixin(MSBPC(492, 0x2)); }
		bool bEnableFading() { mixin(MGBPC(492, 0x4)); }
		bool bEnableFading(bool val) { mixin(MSBPC(492, 0x4)); }
	}
final:
	CameraModifier CreateCameraModifier(ScriptClass ModifierClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ModifierClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateCameraModifier, params.ptr, cast(void*)0);
		return *cast(CameraModifier*)&params[4];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void ApplyCameraModifiers(float DeltaTime, ref UObject.TPOV OutPOV)
	{
		ubyte params[32];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(UObject.TPOV*)&params[4] = OutPOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyCameraModifiers, params.ptr, cast(void*)0);
		OutPOV = *cast(UObject.TPOV*)&params[4];
	}
	void InitializeFor(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeFor, params.ptr, cast(void*)0);
	}
	void SetViewTarget(Actor NewViewTarget, Camera.ViewTargetTransitionParams* TransitionParams = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = NewViewTarget;
		if (TransitionParams !is null)
			*cast(Camera.ViewTargetTransitionParams*)&params[4] = *TransitionParams;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetViewTarget, params.ptr, cast(void*)0);
	}
	float GetFOVAngle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFOVAngle, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void SetFOV(float NewFOV)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewFOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFOV, params.ptr, cast(void*)0);
	}
	void GetCameraViewPoint(ref Vector OutCamLoc, ref Rotator OutCamRot)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = OutCamLoc;
		*cast(Rotator*)&params[12] = OutCamRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCameraViewPoint, params.ptr, cast(void*)0);
		OutCamLoc = *cast(Vector*)params.ptr;
		OutCamRot = *cast(Rotator*)&params[12];
	}
	Rotator GetCameraRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCameraRotation, params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	void SetDesiredColorScale(Vector NewColorScale, float InterpTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = NewColorScale;
		*cast(float*)&params[12] = InterpTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDesiredColorScale, params.ptr, cast(void*)0);
	}
	void UpdateCamera(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateCamera, params.ptr, cast(void*)0);
	}
	UObject.TPOV BlendViewTargets(ref in Camera.TViewTarget A, ref in Camera.TViewTarget B, float Alpha)
	{
		ubyte params[120];
		params[] = 0;
		*cast(Camera.TViewTarget*)params.ptr = cast(Camera.TViewTarget)A;
		*cast(Camera.TViewTarget*)&params[44] = cast(Camera.TViewTarget)B;
		*cast(float*)&params[88] = Alpha;
		(cast(ScriptObject)this).ProcessEvent(Functions.BlendViewTargets, params.ptr, cast(void*)0);
		return *cast(UObject.TPOV*)&params[92];
	}
	void FillCameraCache(ref in UObject.TPOV NewPOV)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UObject.TPOV*)params.ptr = cast(UObject.TPOV)NewPOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillCameraCache, params.ptr, cast(void*)0);
	}
	void CheckViewTarget(ref Camera.TViewTarget VT)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Camera.TViewTarget*)params.ptr = VT;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckViewTarget, params.ptr, cast(void*)0);
		VT = *cast(Camera.TViewTarget*)params.ptr;
	}
	void UpdateViewTarget(ref Camera.TViewTarget OutVT, float DeltaTime)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Camera.TViewTarget*)params.ptr = OutVT;
		*cast(float*)&params[44] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateViewTarget, params.ptr, cast(void*)0);
		OutVT = *cast(Camera.TViewTarget*)params.ptr;
	}
	void ProcessViewRotation(float DeltaTime, ref Rotator OutViewRotation, ref Rotator OutDeltaRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Rotator*)&params[4] = OutViewRotation;
		*cast(Rotator*)&params[16] = OutDeltaRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessViewRotation, params.ptr, cast(void*)0);
		OutViewRotation = *cast(Rotator*)&params[4];
		OutDeltaRot = *cast(Rotator*)&params[16];
	}
	void DisplayDebug(HUD pHUD, ref float out_YL, ref float out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = out_YL;
		*cast(float*)&params[8] = out_YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		out_YL = *cast(float*)&params[4];
		out_YPos = *cast(float*)&params[8];
	}
	EmitterCameraLensEffectBase FindCameraLensEffect(ScriptClass LensEffectEmitterClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = LensEffectEmitterClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindCameraLensEffect, params.ptr, cast(void*)0);
		return *cast(EmitterCameraLensEffectBase*)&params[4];
	}
	void AddCameraLensEffect(ScriptClass LensEffectEmitterClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = LensEffectEmitterClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddCameraLensEffect, params.ptr, cast(void*)0);
	}
	void RemoveCameraLensEffect(EmitterCameraLensEffectBase pEmitter)
	{
		ubyte params[4];
		params[] = 0;
		*cast(EmitterCameraLensEffectBase*)params.ptr = pEmitter;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveCameraLensEffect, params.ptr, cast(void*)0);
	}
	void ClearCameraLensEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearCameraLensEffects, cast(void*)0, cast(void*)0);
	}
	void PlayCameraShake(CameraShake Shake, float Scale, Camera.ECameraAnimPlaySpace* PlaySpace = null, Rotator* UserPlaySpaceRot = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(CameraShake*)params.ptr = Shake;
		*cast(float*)&params[4] = Scale;
		if (PlaySpace !is null)
			*cast(Camera.ECameraAnimPlaySpace*)&params[8] = *PlaySpace;
		if (UserPlaySpaceRot !is null)
			*cast(Rotator*)&params[12] = *UserPlaySpaceRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayCameraShake, params.ptr, cast(void*)0);
	}
	void StopCameraShake(CameraShake Shake)
	{
		ubyte params[4];
		params[] = 0;
		*cast(CameraShake*)params.ptr = Shake;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopCameraShake, params.ptr, cast(void*)0);
	}
	static float CalcRadialShakeScale(Camera Cam, Vector Epicenter, float InnerRadius, float OuterRadius, float Falloff)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Camera*)params.ptr = Cam;
		*cast(Vector*)&params[4] = Epicenter;
		*cast(float*)&params[16] = InnerRadius;
		*cast(float*)&params[20] = OuterRadius;
		*cast(float*)&params[24] = Falloff;
		StaticClass.ProcessEvent(Functions.CalcRadialShakeScale, params.ptr, cast(void*)0);
		return *cast(float*)&params[28];
	}
	static void PlayWorldCameraShake(CameraShake Shake, Actor ShakeInstigator, Vector Epicenter, float InnerRadius, float OuterRadius, float Falloff, bool bTryForceFeedback, bool* bOrientShakeTowardsEpicenter = null)
	{
		ubyte params[40];
		params[] = 0;
		*cast(CameraShake*)params.ptr = Shake;
		*cast(Actor*)&params[4] = ShakeInstigator;
		*cast(Vector*)&params[8] = Epicenter;
		*cast(float*)&params[20] = InnerRadius;
		*cast(float*)&params[24] = OuterRadius;
		*cast(float*)&params[28] = Falloff;
		*cast(bool*)&params[32] = bTryForceFeedback;
		if (bOrientShakeTowardsEpicenter !is null)
			*cast(bool*)&params[36] = *bOrientShakeTowardsEpicenter;
		StaticClass.ProcessEvent(Functions.PlayWorldCameraShake, params.ptr, cast(void*)0);
	}
	void ClearAllCameraShakes()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearAllCameraShakes, cast(void*)0, cast(void*)0);
	}
	CameraAnimInst PlayCameraAnim(CameraAnim Anim, float* Rate = null, float* Scale = null, float* BlendInTime = null, float* BlendOutTime = null, bool* bLoop = null, bool* bRandomStartTime = null, float* Duration = null, bool* bSingleInstance = null)
	{
		ubyte params[40];
		params[] = 0;
		*cast(CameraAnim*)params.ptr = Anim;
		if (Rate !is null)
			*cast(float*)&params[4] = *Rate;
		if (Scale !is null)
			*cast(float*)&params[8] = *Scale;
		if (BlendInTime !is null)
			*cast(float*)&params[12] = *BlendInTime;
		if (BlendOutTime !is null)
			*cast(float*)&params[16] = *BlendOutTime;
		if (bLoop !is null)
			*cast(bool*)&params[20] = *bLoop;
		if (bRandomStartTime !is null)
			*cast(bool*)&params[24] = *bRandomStartTime;
		if (Duration !is null)
			*cast(float*)&params[28] = *Duration;
		if (bSingleInstance !is null)
			*cast(bool*)&params[32] = *bSingleInstance;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayCameraAnim, params.ptr, cast(void*)0);
		return *cast(CameraAnimInst*)&params[36];
	}
	void StopAllCameraAnims(bool* bImmediate = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bImmediate !is null)
			*cast(bool*)params.ptr = *bImmediate;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopAllCameraAnims, params.ptr, cast(void*)0);
	}
	void StopAllCameraAnimsByType(CameraAnim Anim, bool* bImmediate = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(CameraAnim*)params.ptr = Anim;
		if (bImmediate !is null)
			*cast(bool*)&params[4] = *bImmediate;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopAllCameraAnimsByType, params.ptr, cast(void*)0);
	}
	void StopCameraAnim(CameraAnimInst AnimInst, bool* bImmediate = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(CameraAnimInst*)params.ptr = AnimInst;
		if (bImmediate !is null)
			*cast(bool*)&params[4] = *bImmediate;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopCameraAnim, params.ptr, cast(void*)0);
	}
}
