module UnrealScript.Engine.LightComponent;

import ScriptClasses;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.LightFunction;
import UnrealScript.Engine.Brush;

extern(C++) interface LightComponent : ActorComponent
{
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
		public @property final bool Crowd() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4000000) != 0; }
		public @property final bool Crowd(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4000000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4000000; } return val; }
		private ubyte __Crowd[4];
		public @property final bool Gameplay_4() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2000000) != 0; }
		public @property final bool Gameplay_4(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2000000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2000000; } return val; }
		private ubyte __Gameplay_4[4];
		public @property final bool Gameplay_3() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1000000) != 0; }
		public @property final bool Gameplay_3(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1000000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1000000; } return val; }
		private ubyte __Gameplay_3[4];
		public @property final bool Gameplay_2() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x800000) != 0; }
		public @property final bool Gameplay_2(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x800000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x800000; } return val; }
		private ubyte __Gameplay_2[4];
		public @property final bool Gameplay_1() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x400000) != 0; }
		public @property final bool Gameplay_1(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x400000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x400000; } return val; }
		private ubyte __Gameplay_1[4];
		public @property final bool Cinematic_10() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x200000) != 0; }
		public @property final bool Cinematic_10(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x200000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x200000; } return val; }
		private ubyte __Cinematic_10[4];
		public @property final bool Cinematic_9() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x100000) != 0; }
		public @property final bool Cinematic_9(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x100000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x100000; } return val; }
		private ubyte __Cinematic_9[4];
		public @property final bool Cinematic_8() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x80000) != 0; }
		public @property final bool Cinematic_8(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x80000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x80000; } return val; }
		private ubyte __Cinematic_8[4];
		public @property final bool Cinematic_7() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x40000) != 0; }
		public @property final bool Cinematic_7(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x40000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x40000; } return val; }
		private ubyte __Cinematic_7[4];
		public @property final bool Cinematic_6() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x20000) != 0; }
		public @property final bool Cinematic_6(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x20000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x20000; } return val; }
		private ubyte __Cinematic_6[4];
		public @property final bool Cinematic_5() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x10000) != 0; }
		public @property final bool Cinematic_5(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x10000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x10000; } return val; }
		private ubyte __Cinematic_5[4];
		public @property final bool Cinematic_4() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x8000) != 0; }
		public @property final bool Cinematic_4(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x8000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x8000; } return val; }
		private ubyte __Cinematic_4[4];
		public @property final bool Cinematic_3() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4000) != 0; }
		public @property final bool Cinematic_3(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4000; } return val; }
		private ubyte __Cinematic_3[4];
		public @property final bool Cinematic_2() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2000) != 0; }
		public @property final bool Cinematic_2(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2000; } return val; }
		private ubyte __Cinematic_2[4];
		public @property final bool Cinematic_1() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1000) != 0; }
		public @property final bool Cinematic_1(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1000; } return val; }
		private ubyte __Cinematic_1[4];
		public @property final bool Unnamed_6() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x800) != 0; }
		public @property final bool Unnamed_6(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x800; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x800; } return val; }
		private ubyte __Unnamed_6[4];
		public @property final bool Unnamed_5() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x400) != 0; }
		public @property final bool Unnamed_5(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x400; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x400; } return val; }
		private ubyte __Unnamed_5[4];
		public @property final bool Unnamed_4() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x200) != 0; }
		public @property final bool Unnamed_4(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x200; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x200; } return val; }
		private ubyte __Unnamed_4[4];
		public @property final bool Unnamed_3() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x100) != 0; }
		public @property final bool Unnamed_3(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x100; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x100; } return val; }
		private ubyte __Unnamed_3[4];
		public @property final bool Unnamed_2() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x80) != 0; }
		public @property final bool Unnamed_2(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x80; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x80; } return val; }
		private ubyte __Unnamed_2[4];
		public @property final bool Unnamed_1() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x40) != 0; }
		public @property final bool Unnamed_1(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x40; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x40; } return val; }
		private ubyte __Unnamed_1[4];
		public @property final bool Skybox() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x20) != 0; }
		public @property final bool Skybox(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x20; } return val; }
		private ubyte __Skybox[4];
		public @property final bool CompositeDynamic() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x10) != 0; }
		public @property final bool CompositeDynamic(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x10; } return val; }
		private ubyte __CompositeDynamic[4];
		public @property final bool Dynamic() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x8) != 0; }
		public @property final bool Dynamic(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x8; } return val; }
		private ubyte __Dynamic[4];
		public @property final bool Static() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
		public @property final bool Static(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
		private ubyte __Static[4];
		public @property final bool BSP() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
		public @property final bool BSP(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
		private ubyte __BSP[4];
		public @property final bool bInitialized() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bInitialized[4];
	}
	public @property final auto ref float Brightness() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref UObject.Color LightColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 260); }
	// WARNING: Property 'Function' has the same name as a defined type!
	public @property final auto ref UObject.Pointer SceneInfo() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref UObject.Matrix WorldToLight() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref UObject.Matrix LightToWorld() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref UObject.Guid LightGuid() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref UObject.Guid LightmapGuid() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref float LightEnv_BouncedLightBrightness() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref UObject.Color LightEnv_BouncedModulationColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 272); }
	public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x1) != 0; }
	public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x1; } return val; }
	public @property final bool CastShadows() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x2) != 0; }
	public @property final bool CastShadows(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x2; } return val; }
	public @property final bool CastStaticShadows() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x4) != 0; }
	public @property final bool CastStaticShadows(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x4; } return val; }
	public @property final bool CastDynamicShadows() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x8) != 0; }
	public @property final bool CastDynamicShadows(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x8; } return val; }
	public @property final bool bCastCompositeShadow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x10) != 0; }
	public @property final bool bCastCompositeShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x10; } return val; }
	public @property final bool bAffectCompositeShadowDirection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x20) != 0; }
	public @property final bool bAffectCompositeShadowDirection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x20; } return val; }
	public @property final bool bNonModulatedSelfShadowing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x40) != 0; }
	public @property final bool bNonModulatedSelfShadowing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x40; } return val; }
	public @property final bool bSelfShadowOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x80) != 0; }
	public @property final bool bSelfShadowOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x80; } return val; }
	public @property final bool bAllowPreShadow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x100) != 0; }
	public @property final bool bAllowPreShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x100; } return val; }
	public @property final bool bForceDynamicLight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x200) != 0; }
	public @property final bool bForceDynamicLight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x200; } return val; }
	public @property final bool UseDirectLightMap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x400) != 0; }
	public @property final bool UseDirectLightMap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x400; } return val; }
	public @property final bool bHasLightEverBeenBuiltIntoLightMap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x800) != 0; }
	public @property final bool bHasLightEverBeenBuiltIntoLightMap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x800; } return val; }
	public @property final bool bOnlyAffectSameAndSpecifiedLevels() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x1000) != 0; }
	public @property final bool bOnlyAffectSameAndSpecifiedLevels(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x1000; } return val; }
	public @property final bool bCanAffectDynamicPrimitivesOutsideDynamicChannel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x2000) != 0; }
	public @property final bool bCanAffectDynamicPrimitivesOutsideDynamicChannel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x2000; } return val; }
	public @property final bool bUseVolumes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x4000) != 0; }
	public @property final bool bUseVolumes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x4000; } return val; }
	public @property final bool bRenderLightShafts() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x8000) != 0; }
	public @property final bool bRenderLightShafts(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x8000; } return val; }
	public @property final bool bUseImageReflectionSpecular() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x10000) != 0; }
	public @property final bool bUseImageReflectionSpecular(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x10000; } return val; }
	public @property final bool bPrecomputedLightingIsValid() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x20000) != 0; }
	public @property final bool bPrecomputedLightingIsValid(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x20000; } return val; }
	public @property final bool bExplicitlyAssignedLight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x40000) != 0; }
	public @property final bool bExplicitlyAssignedLight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x40000; } return val; }
	public @property final auto ref ScriptArray!(ScriptName) OtherLevelsToAffect() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref LightComponent.LightingChannelContainer LightingChannels() { return *cast(LightComponent.LightingChannelContainer*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref ScriptArray!(Brush) InclusionVolumes() { return *cast(ScriptArray!(Brush)*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref ScriptArray!(Brush) ExclusionVolumes() { return *cast(ScriptArray!(Brush)*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref ScriptArray!(UObject.Pointer) InclusionConvexVolumes() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 324); }
	public @property final auto ref ScriptArray!(UObject.Pointer) ExclusionConvexVolumes() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 336); }
	public @property final auto ref LightComponent.ELightAffectsClassification LightAffectsClassification() { return *cast(LightComponent.ELightAffectsClassification*)(cast(size_t)cast(void*)this + 348); }
	public @property final auto ref LightComponent.ELightShadowMode LightShadowMode() { return *cast(LightComponent.ELightShadowMode*)(cast(size_t)cast(void*)this + 349); }
	public @property final auto ref UObject.LinearColor ModShadowColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 352); }
	public @property final auto ref float ModShadowFadeoutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref float ModShadowFadeoutExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 372); }
	public @property final auto ref int LightListIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 376); }
	public @property final auto ref LightComponent.EShadowProjectionTechnique ShadowProjectionTechnique() { return *cast(LightComponent.EShadowProjectionTechnique*)(cast(size_t)cast(void*)this + 380); }
	public @property final auto ref LightComponent.EShadowFilterQuality ShadowFilterQuality() { return *cast(LightComponent.EShadowFilterQuality*)(cast(size_t)cast(void*)this + 381); }
	public @property final auto ref int MinShadowResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 384); }
	public @property final auto ref int MaxShadowResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 388); }
	public @property final auto ref int ShadowFadeResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 392); }
	public @property final auto ref float OcclusionDepthRange() { return *cast(float*)(cast(size_t)cast(void*)this + 396); }
	public @property final auto ref float BloomScale() { return *cast(float*)(cast(size_t)cast(void*)this + 400); }
	public @property final auto ref float BloomThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 404); }
	public @property final auto ref float BloomScreenBlendThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 408); }
	public @property final auto ref UObject.Color BloomTint() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 412); }
	public @property final auto ref float RadialBlurPercent() { return *cast(float*)(cast(size_t)cast(void*)this + 416); }
	public @property final auto ref float OcclusionMaskDarkness() { return *cast(float*)(cast(size_t)cast(void*)this + 420); }
	public @property final auto ref Texture2D ReflectionTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 424); }
	public @property final auto ref float ReflectionScale() { return *cast(float*)(cast(size_t)cast(void*)this + 428); }
	final void SetEnabled(bool bSetEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bSetEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11644], params.ptr, cast(void*)0);
	}
	final void SetLightProperties(float NewBrightness, UObject.Color NewLightColor, LightFunction NewLightFunction)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = NewBrightness;
		*cast(UObject.Color*)&params[4] = NewLightColor;
		*cast(LightFunction*)&params[8] = NewLightFunction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11647], params.ptr, cast(void*)0);
	}
	final Vector GetOrigin()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11654], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	final Vector GetDirection()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11656], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	final void UpdateColorAndBrightness()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11658], cast(void*)0, cast(void*)0);
	}
	final void UpdateLightShaftParameters()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11659], cast(void*)0, cast(void*)0);
	}
	final void OnUpdatePropertyBloomScale()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11660], cast(void*)0, cast(void*)0);
	}
	final void OnUpdatePropertyBloomTint()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11661], cast(void*)0, cast(void*)0);
	}
	final void OnUpdatePropertyOcclusionMaskDarkness()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11662], cast(void*)0, cast(void*)0);
	}
	final void OnUpdatePropertyBrightness()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11663], cast(void*)0, cast(void*)0);
	}
	final void OnUpdatePropertyLightColor()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11664], cast(void*)0, cast(void*)0);
	}
}
