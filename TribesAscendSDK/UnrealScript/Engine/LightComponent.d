module UnrealScript.Engine.LightComponent;

import ScriptClasses;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.LightFunction;
import UnrealScript.Engine.Brush;

extern(C++) interface LightComponent : ActorComponent
{
public extern(D):
	enum EShadowFilterQuality : ubyte
	{
		SFQ_Low = 0,
		SFQ_Medium = 1,
		SFQ_High = 2,
		SFQ_MAX = 3,
	}
	enum EShadowProjectionTechnique : ubyte
	{
		ShadowProjTech_Default = 0,
		ShadowProjTech_PCF = 1,
		ShadowProjTech_VSM = 2,
		ShadowProjTech_BPCF_Low = 3,
		ShadowProjTech_BPCF_Medium = 4,
		ShadowProjTech_BPCF_High = 5,
		ShadowProjTech_MAX = 6,
	}
	enum ELightShadowMode : ubyte
	{
		LightShadow_Normal = 0,
		LightShadow_Modulate = 1,
		LightShadow_ModulateBetter = 2,
		LightShadow_MAX = 3,
	}
	enum ELightAffectsClassification : ubyte
	{
		LAC_USER_SELECTED = 0,
		LAC_DYNAMIC_AFFECTING = 1,
		LAC_STATIC_AFFECTING = 2,
		LAC_DYNAMIC_AND_STATIC_AFFECTING = 3,
		LAC_MAX = 4,
	}
	struct LightingChannelContainer
	{
		private ubyte __buffer__[4];
	public extern(D):
		@property final
		{
			bool Crowd() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4000000) != 0; }
			bool Crowd(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4000000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4000000; } return val; }
			bool Gameplay_4() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2000000) != 0; }
			bool Gameplay_4(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2000000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2000000; } return val; }
			bool Gameplay_3() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1000000) != 0; }
			bool Gameplay_3(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1000000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1000000; } return val; }
			bool Gameplay_2() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x800000) != 0; }
			bool Gameplay_2(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x800000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x800000; } return val; }
			bool Gameplay_1() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x400000) != 0; }
			bool Gameplay_1(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x400000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x400000; } return val; }
			bool Cinematic_10() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x200000) != 0; }
			bool Cinematic_10(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x200000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x200000; } return val; }
			bool Cinematic_9() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x100000) != 0; }
			bool Cinematic_9(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x100000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x100000; } return val; }
			bool Cinematic_8() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x80000) != 0; }
			bool Cinematic_8(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x80000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x80000; } return val; }
			bool Cinematic_7() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x40000) != 0; }
			bool Cinematic_7(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x40000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x40000; } return val; }
			bool Cinematic_6() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x20000) != 0; }
			bool Cinematic_6(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x20000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x20000; } return val; }
			bool Cinematic_5() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x10000) != 0; }
			bool Cinematic_5(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x10000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x10000; } return val; }
			bool Cinematic_4() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x8000) != 0; }
			bool Cinematic_4(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x8000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x8000; } return val; }
			bool Cinematic_3() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4000) != 0; }
			bool Cinematic_3(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4000; } return val; }
			bool Cinematic_2() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2000) != 0; }
			bool Cinematic_2(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2000; } return val; }
			bool Cinematic_1() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1000) != 0; }
			bool Cinematic_1(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1000; } return val; }
			bool Unnamed_6() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x800) != 0; }
			bool Unnamed_6(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x800; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x800; } return val; }
			bool Unnamed_5() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x400) != 0; }
			bool Unnamed_5(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x400; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x400; } return val; }
			bool Unnamed_4() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x200) != 0; }
			bool Unnamed_4(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x200; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x200; } return val; }
			bool Unnamed_3() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x100) != 0; }
			bool Unnamed_3(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x100; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x100; } return val; }
			bool Unnamed_2() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x80) != 0; }
			bool Unnamed_2(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x80; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x80; } return val; }
			bool Unnamed_1() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x40) != 0; }
			bool Unnamed_1(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x40; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x40; } return val; }
			bool Skybox() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x20) != 0; }
			bool Skybox(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x20; } return val; }
			bool CompositeDynamic() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x10) != 0; }
			bool CompositeDynamic(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x10; } return val; }
			bool Dynamic() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x8) != 0; }
			bool Dynamic(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x8; } return val; }
			bool Static() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
			bool Static(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
			bool BSP() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
			bool BSP(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
			bool bInitialized() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			float Brightness() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
			UObject.Color LightColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 260); }
			// WARNING: Property 'Function' has the same name as a defined type!
			UObject.Pointer SceneInfo() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 88); }
			UObject.Matrix WorldToLight() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 96); }
			UObject.Matrix LightToWorld() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 160); }
			UObject.Guid LightGuid() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 224); }
			UObject.Guid LightmapGuid() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 240); }
			float LightEnv_BouncedLightBrightness() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
			UObject.Color LightEnv_BouncedModulationColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 272); }
			ScriptArray!(ScriptName) OtherLevelsToAffect() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 284); }
			LightComponent.LightingChannelContainer LightingChannels() { return *cast(LightComponent.LightingChannelContainer*)(cast(size_t)cast(void*)this + 296); }
			ScriptArray!(Brush) InclusionVolumes() { return *cast(ScriptArray!(Brush)*)(cast(size_t)cast(void*)this + 300); }
			ScriptArray!(Brush) ExclusionVolumes() { return *cast(ScriptArray!(Brush)*)(cast(size_t)cast(void*)this + 312); }
			ScriptArray!(UObject.Pointer) InclusionConvexVolumes() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 324); }
			ScriptArray!(UObject.Pointer) ExclusionConvexVolumes() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 336); }
			LightComponent.ELightAffectsClassification LightAffectsClassification() { return *cast(LightComponent.ELightAffectsClassification*)(cast(size_t)cast(void*)this + 348); }
			LightComponent.ELightShadowMode LightShadowMode() { return *cast(LightComponent.ELightShadowMode*)(cast(size_t)cast(void*)this + 349); }
			UObject.LinearColor ModShadowColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 352); }
			float ModShadowFadeoutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 368); }
			float ModShadowFadeoutExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 372); }
			int LightListIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 376); }
			LightComponent.EShadowProjectionTechnique ShadowProjectionTechnique() { return *cast(LightComponent.EShadowProjectionTechnique*)(cast(size_t)cast(void*)this + 380); }
			LightComponent.EShadowFilterQuality ShadowFilterQuality() { return *cast(LightComponent.EShadowFilterQuality*)(cast(size_t)cast(void*)this + 381); }
			int MinShadowResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 384); }
			int MaxShadowResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 388); }
			int ShadowFadeResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 392); }
			float OcclusionDepthRange() { return *cast(float*)(cast(size_t)cast(void*)this + 396); }
			float BloomScale() { return *cast(float*)(cast(size_t)cast(void*)this + 400); }
			float BloomThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 404); }
			float BloomScreenBlendThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 408); }
			UObject.Color BloomTint() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 412); }
			float RadialBlurPercent() { return *cast(float*)(cast(size_t)cast(void*)this + 416); }
			float OcclusionMaskDarkness() { return *cast(float*)(cast(size_t)cast(void*)this + 420); }
			Texture2D ReflectionTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 424); }
			float ReflectionScale() { return *cast(float*)(cast(size_t)cast(void*)this + 428); }
		}
		bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x1) != 0; }
		bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x1; } return val; }
		bool CastShadows() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x2) != 0; }
		bool CastShadows(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x2; } return val; }
		bool CastStaticShadows() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x4) != 0; }
		bool CastStaticShadows(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x4; } return val; }
		bool CastDynamicShadows() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x8) != 0; }
		bool CastDynamicShadows(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x8; } return val; }
		bool bCastCompositeShadow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x10) != 0; }
		bool bCastCompositeShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x10; } return val; }
		bool bAffectCompositeShadowDirection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x20) != 0; }
		bool bAffectCompositeShadowDirection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x20; } return val; }
		bool bNonModulatedSelfShadowing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x40) != 0; }
		bool bNonModulatedSelfShadowing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x40; } return val; }
		bool bSelfShadowOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x80) != 0; }
		bool bSelfShadowOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x80; } return val; }
		bool bAllowPreShadow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x100) != 0; }
		bool bAllowPreShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x100; } return val; }
		bool bForceDynamicLight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x200) != 0; }
		bool bForceDynamicLight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x200; } return val; }
		bool UseDirectLightMap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x400) != 0; }
		bool UseDirectLightMap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x400; } return val; }
		bool bHasLightEverBeenBuiltIntoLightMap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x800) != 0; }
		bool bHasLightEverBeenBuiltIntoLightMap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x800; } return val; }
		bool bOnlyAffectSameAndSpecifiedLevels() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x1000) != 0; }
		bool bOnlyAffectSameAndSpecifiedLevels(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x1000; } return val; }
		bool bCanAffectDynamicPrimitivesOutsideDynamicChannel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x2000) != 0; }
		bool bCanAffectDynamicPrimitivesOutsideDynamicChannel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x2000; } return val; }
		bool bUseVolumes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x4000) != 0; }
		bool bUseVolumes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x4000; } return val; }
		bool bRenderLightShafts() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x8000) != 0; }
		bool bRenderLightShafts(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x8000; } return val; }
		bool bUseImageReflectionSpecular() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x10000) != 0; }
		bool bUseImageReflectionSpecular(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x10000; } return val; }
		bool bPrecomputedLightingIsValid() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x20000) != 0; }
		bool bPrecomputedLightingIsValid(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x20000; } return val; }
		bool bExplicitlyAssignedLight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x40000) != 0; }
		bool bExplicitlyAssignedLight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x40000; } return val; }
	}
final:
	void SetEnabled(bool bSetEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bSetEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11644], params.ptr, cast(void*)0);
	}
	void SetLightProperties(float NewBrightness, UObject.Color NewLightColor, LightFunction NewLightFunction)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = NewBrightness;
		*cast(UObject.Color*)&params[4] = NewLightColor;
		*cast(LightFunction*)&params[8] = NewLightFunction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11647], params.ptr, cast(void*)0);
	}
	Vector GetOrigin()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11654], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	Vector GetDirection()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11656], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void UpdateColorAndBrightness()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11658], cast(void*)0, cast(void*)0);
	}
	void UpdateLightShaftParameters()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11659], cast(void*)0, cast(void*)0);
	}
	void OnUpdatePropertyBloomScale()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11660], cast(void*)0, cast(void*)0);
	}
	void OnUpdatePropertyBloomTint()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11661], cast(void*)0, cast(void*)0);
	}
	void OnUpdatePropertyOcclusionMaskDarkness()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11662], cast(void*)0, cast(void*)0);
	}
	void OnUpdatePropertyBrightness()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11663], cast(void*)0, cast(void*)0);
	}
	void OnUpdatePropertyLightColor()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11664], cast(void*)0, cast(void*)0);
	}
}
