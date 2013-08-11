module UnrealScript.Engine.Camera;

import ScriptClasses;
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
	enum MAX_ACTIVE_CAMERA_ANIMS = 8;
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
		@property final auto ref
		{
			Actor Target() { return *cast(Actor*)(cast(size_t)&this + 0); }
			UObject.TPOV POV() { return *cast(UObject.TPOV*)(cast(size_t)&this + 8); }
			float AspectRatio() { return *cast(float*)(cast(size_t)&this + 36); }
			// WARNING: Property 'Controller' has the same name as a defined type!
			PlayerReplicationInfo PRI() { return *cast(PlayerReplicationInfo*)(cast(size_t)&this + 40); }
		}
	}
	struct TCameraCache
	{
		private ubyte __buffer__[32];
	public extern(D):
		@property final auto ref
		{
			UObject.TPOV POV() { return *cast(UObject.TPOV*)(cast(size_t)&this + 4); }
			float TimeStamp() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	struct ViewTargetTransitionParams
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final
		{
			auto ref
			{
				float BlendTime() { return *cast(float*)(cast(size_t)&this + 0); }
				Camera.EViewTargetBlendFunction BlendFunction() { return *cast(Camera.EViewTargetBlendFunction*)(cast(size_t)&this + 4); }
				float BlendExp() { return *cast(float*)(cast(size_t)&this + 8); }
			}
			bool bLockOutgoing() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
			bool bLockOutgoing(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			CameraModifier_CameraShake CameraShakeCamMod() { return *cast(CameraModifier_CameraShake*)(cast(size_t)cast(void*)this + 1020); }
			ScriptClass CameraShakeCamModClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1024); }
			CameraAnimInst AnimInstPool() { return *cast(CameraAnimInst*)(cast(size_t)cast(void*)this + 1028); }
			ScriptArray!(CameraAnimInst) FreeAnims() { return *cast(ScriptArray!(CameraAnimInst)*)(cast(size_t)cast(void*)this + 1072); }
			DynamicCameraActor AnimCameraActor() { return *cast(DynamicCameraActor*)(cast(size_t)cast(void*)this + 1084); }
			Camera.TCameraCache CameraCache() { return *cast(Camera.TCameraCache*)(cast(size_t)cast(void*)this + 792); }
			float DefaultFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
			PlayerController PCOwner() { return *cast(PlayerController*)(cast(size_t)cast(void*)this + 476); }
			float LockedFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
			Vector ColorScale() { return *cast(Vector*)(cast(size_t)cast(void*)this + 748); }
			Vector OriginalColorScale() { return *cast(Vector*)(cast(size_t)cast(void*)this + 772); }
			Vector DesiredColorScale() { return *cast(Vector*)(cast(size_t)cast(void*)this + 760); }
			float ColorScaleInterpStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 788); }
			float ColorScaleInterpDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 784); }
			float CamOverridePostProcessAlpha() { return *cast(float*)(cast(size_t)cast(void*)this + 524); }
			Camera.TViewTarget PendingViewTarget() { return *cast(Camera.TViewTarget*)(cast(size_t)cast(void*)this + 900); }
			Camera.ViewTargetTransitionParams BlendParams() { return *cast(Camera.ViewTargetTransitionParams*)(cast(size_t)cast(void*)this + 948); }
			Camera.TViewTarget ViewTarget() { return *cast(Camera.TViewTarget*)(cast(size_t)cast(void*)this + 856); }
			float ConstrainedAspectRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
			float BlendTimeToGo() { return *cast(float*)(cast(size_t)cast(void*)this + 944); }
			float FadeTimeRemaining() { return *cast(float*)(cast(size_t)cast(void*)this + 1004); }
			float FadeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1000); }
			float FadeAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 520); }
			UObject.Vector2D FadeAlpha() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 992); }
			Camera.TCameraCache LastFrameCameraCache() { return *cast(Camera.TCameraCache*)(cast(size_t)cast(void*)this + 824); }
			ScriptArray!(CameraModifier) ModifierList() { return *cast(ScriptArray!(CameraModifier)*)(cast(size_t)cast(void*)this + 964); }
			ScriptArray!(EmitterCameraLensEffectBase) CameraLensEffects() { return *cast(ScriptArray!(EmitterCameraLensEffectBase)*)(cast(size_t)cast(void*)this + 1008); }
			ScriptArray!(CameraAnimInst) ActiveAnims() { return *cast(ScriptArray!(CameraAnimInst)*)(cast(size_t)cast(void*)this + 1060); }
			Vector FreeCamOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 980); }
			float FreeCamDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 976); }
			PostProcessVolume.PostProcessSettings CamPostProcessSettings() { return *cast(PostProcessVolume.PostProcessSettings*)(cast(size_t)cast(void*)this + 528); }
			UObject.Color FadeColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 516); }
			float OffAxisPitchAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
			float OffAxisYawAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
			float DefaultAspectRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
			ScriptName CameraStyle() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 480); }
		}
		bool bLockedFOV() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x1) != 0; }
		bool bLockedFOV(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x1; } return val; }
		bool bEnableColorScaling() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x8) != 0; }
		bool bEnableColorScaling(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x8; } return val; }
		bool bEnableColorScaleInterp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x10) != 0; }
		bool bEnableColorScaleInterp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x10; } return val; }
		bool bConstrainAspectRatio() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x2) != 0; }
		bool bConstrainAspectRatio(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x2; } return val; }
		bool bEnableFading() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x4) != 0; }
		bool bEnableFading(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x4; } return val; }
	}
final:
	CameraModifier CreateCameraModifier(ScriptClass ModifierClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ModifierClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6404], params.ptr, cast(void*)0);
		return *cast(CameraModifier*)&params[4];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6410], cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6417], cast(void*)0, cast(void*)0);
	}
	void ApplyCameraModifiers(float DeltaTime, UObject.TPOV* OutPOV)
	{
		ubyte params[32];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(UObject.TPOV*)&params[4] = *OutPOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6418], params.ptr, cast(void*)0);
		*OutPOV = *cast(UObject.TPOV*)&params[4];
	}
	void InitializeFor(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6421], params.ptr, cast(void*)0);
	}
	void SetViewTarget(Actor NewViewTarget, Camera.ViewTargetTransitionParams TransitionParams)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = NewViewTarget;
		*cast(Camera.ViewTargetTransitionParams*)&params[4] = TransitionParams;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6428], params.ptr, cast(void*)0);
	}
	float GetFOVAngle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6431], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void SetFOV(float NewFOV)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewFOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6435], params.ptr, cast(void*)0);
	}
	void GetCameraViewPoint(Vector* OutCamLoc, Rotator* OutCamRot)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *OutCamLoc;
		*cast(Rotator*)&params[12] = *OutCamRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6437], params.ptr, cast(void*)0);
		*OutCamLoc = *cast(Vector*)params.ptr;
		*OutCamRot = *cast(Rotator*)&params[12];
	}
	Rotator GetCameraRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6440], params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	void SetDesiredColorScale(Vector NewColorScale, float InterpTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = NewColorScale;
		*cast(float*)&params[12] = InterpTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6442], params.ptr, cast(void*)0);
	}
	void UpdateCamera(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6452], params.ptr, cast(void*)0);
	}
	UObject.TPOV BlendViewTargets(Camera.TViewTarget* A, Camera.TViewTarget* B, float Alpha)
	{
		ubyte params[120];
		params[] = 0;
		*cast(Camera.TViewTarget*)params.ptr = *A;
		*cast(Camera.TViewTarget*)&params[44] = *B;
		*cast(float*)&params[88] = Alpha;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6472], params.ptr, cast(void*)0);
		*A = *cast(Camera.TViewTarget*)params.ptr;
		*B = *cast(Camera.TViewTarget*)&params[44];
		return *cast(UObject.TPOV*)&params[92];
	}
	void FillCameraCache(UObject.TPOV* NewPOV)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UObject.TPOV*)params.ptr = *NewPOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6474], params.ptr, cast(void*)0);
		*NewPOV = *cast(UObject.TPOV*)params.ptr;
	}
	void CheckViewTarget(Camera.TViewTarget* VT)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Camera.TViewTarget*)params.ptr = *VT;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6489], params.ptr, cast(void*)0);
		*VT = *cast(Camera.TViewTarget*)params.ptr;
	}
	void UpdateViewTarget(Camera.TViewTarget* OutVT, float DeltaTime)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Camera.TViewTarget*)params.ptr = *OutVT;
		*cast(float*)&params[44] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6593], params.ptr, cast(void*)0);
		*OutVT = *cast(Camera.TViewTarget*)params.ptr;
	}
	void ProcessViewRotation(float DeltaTime, Rotator* OutViewRotation, Rotator* OutDeltaRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Rotator*)&params[4] = *OutViewRotation;
		*cast(Rotator*)&params[16] = *OutDeltaRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6613], params.ptr, cast(void*)0);
		*OutViewRotation = *cast(Rotator*)&params[4];
		*OutDeltaRot = *cast(Rotator*)&params[16];
	}
	void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6620], params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	EmitterCameraLensEffectBase FindCameraLensEffect(ScriptClass LensEffectEmitterClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = LensEffectEmitterClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6627], params.ptr, cast(void*)0);
		return *cast(EmitterCameraLensEffectBase*)&params[4];
	}
	void AddCameraLensEffect(ScriptClass LensEffectEmitterClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = LensEffectEmitterClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6632], params.ptr, cast(void*)0);
	}
	void RemoveCameraLensEffect(EmitterCameraLensEffectBase pEmitter)
	{
		ubyte params[4];
		params[] = 0;
		*cast(EmitterCameraLensEffectBase*)params.ptr = pEmitter;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6640], params.ptr, cast(void*)0);
	}
	void ClearCameraLensEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6642], cast(void*)0, cast(void*)0);
	}
	void PlayCameraShake(CameraShake Shake, float Scale, Camera.ECameraAnimPlaySpace PlaySpace, Rotator UserPlaySpaceRot)
	{
		ubyte params[24];
		params[] = 0;
		*cast(CameraShake*)params.ptr = Shake;
		*cast(float*)&params[4] = Scale;
		*cast(Camera.ECameraAnimPlaySpace*)&params[8] = PlaySpace;
		*cast(Rotator*)&params[12] = UserPlaySpaceRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6644], params.ptr, cast(void*)0);
	}
	void StopCameraShake(CameraShake Shake)
	{
		ubyte params[4];
		params[] = 0;
		*cast(CameraShake*)params.ptr = Shake;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6649], params.ptr, cast(void*)0);
	}
	float CalcRadialShakeScale(Camera Cam, Vector Epicenter, float InnerRadius, float OuterRadius, float Falloff)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Camera*)params.ptr = Cam;
		*cast(Vector*)&params[4] = Epicenter;
		*cast(float*)&params[16] = InnerRadius;
		*cast(float*)&params[20] = OuterRadius;
		*cast(float*)&params[24] = Falloff;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6651], params.ptr, cast(void*)0);
		return *cast(float*)&params[28];
	}
	void PlayWorldCameraShake(CameraShake Shake, Actor ShakeInstigator, Vector Epicenter, float InnerRadius, float OuterRadius, float Falloff, bool bTryForceFeedback, bool bOrientShakeTowardsEpicenter)
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
		*cast(bool*)&params[36] = bOrientShakeTowardsEpicenter;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6660], params.ptr, cast(void*)0);
	}
	void ClearAllCameraShakes()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6674], cast(void*)0, cast(void*)0);
	}
	CameraAnimInst PlayCameraAnim(CameraAnim Anim, float Rate, float Scale, float BlendInTime, float BlendOutTime, bool bLoop, bool bRandomStartTime, float Duration, bool bSingleInstance)
	{
		ubyte params[40];
		params[] = 0;
		*cast(CameraAnim*)params.ptr = Anim;
		*cast(float*)&params[4] = Rate;
		*cast(float*)&params[8] = Scale;
		*cast(float*)&params[12] = BlendInTime;
		*cast(float*)&params[16] = BlendOutTime;
		*cast(bool*)&params[20] = bLoop;
		*cast(bool*)&params[24] = bRandomStartTime;
		*cast(float*)&params[28] = Duration;
		*cast(bool*)&params[32] = bSingleInstance;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6675], params.ptr, cast(void*)0);
		return *cast(CameraAnimInst*)&params[36];
	}
	void StopAllCameraAnims(bool bImmediate)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bImmediate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6686], params.ptr, cast(void*)0);
	}
	void StopAllCameraAnimsByType(CameraAnim Anim, bool bImmediate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(CameraAnim*)params.ptr = Anim;
		*cast(bool*)&params[4] = bImmediate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6688], params.ptr, cast(void*)0);
	}
	void StopCameraAnim(CameraAnimInst AnimInst, bool bImmediate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(CameraAnimInst*)params.ptr = AnimInst;
		*cast(bool*)&params[4] = bImmediate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6691], params.ptr, cast(void*)0);
	}
}
