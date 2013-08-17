module UnrealScript.Engine.LightComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.LightFunction;
import UnrealScript.Engine.Brush;

extern(C++) interface LightComponent : ActorComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.LightComponent")()); }
	private static __gshared LightComponent mDefaultProperties;
	@property final static LightComponent DefaultProperties() { mixin(MGDPC!(LightComponent, "LightComponent Engine.Default__LightComponent")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetEnabled;
			ScriptFunction mSetLightProperties;
			ScriptFunction mGetOrigin;
			ScriptFunction mGetDirection;
			ScriptFunction mUpdateColorAndBrightness;
			ScriptFunction mUpdateLightShaftParameters;
			ScriptFunction mOnUpdatePropertyBloomScale;
			ScriptFunction mOnUpdatePropertyBloomTint;
			ScriptFunction mOnUpdatePropertyOcclusionMaskDarkness;
			ScriptFunction mOnUpdatePropertyBrightness;
			ScriptFunction mOnUpdatePropertyLightColor;
		}
		public @property static final
		{
			ScriptFunction SetEnabled() { mixin(MGF!("mSetEnabled", "Function Engine.LightComponent.SetEnabled")()); }
			ScriptFunction SetLightProperties() { mixin(MGF!("mSetLightProperties", "Function Engine.LightComponent.SetLightProperties")()); }
			ScriptFunction GetOrigin() { mixin(MGF!("mGetOrigin", "Function Engine.LightComponent.GetOrigin")()); }
			ScriptFunction GetDirection() { mixin(MGF!("mGetDirection", "Function Engine.LightComponent.GetDirection")()); }
			ScriptFunction UpdateColorAndBrightness() { mixin(MGF!("mUpdateColorAndBrightness", "Function Engine.LightComponent.UpdateColorAndBrightness")()); }
			ScriptFunction UpdateLightShaftParameters() { mixin(MGF!("mUpdateLightShaftParameters", "Function Engine.LightComponent.UpdateLightShaftParameters")()); }
			ScriptFunction OnUpdatePropertyBloomScale() { mixin(MGF!("mOnUpdatePropertyBloomScale", "Function Engine.LightComponent.OnUpdatePropertyBloomScale")()); }
			ScriptFunction OnUpdatePropertyBloomTint() { mixin(MGF!("mOnUpdatePropertyBloomTint", "Function Engine.LightComponent.OnUpdatePropertyBloomTint")()); }
			ScriptFunction OnUpdatePropertyOcclusionMaskDarkness() { mixin(MGF!("mOnUpdatePropertyOcclusionMaskDarkness", "Function Engine.LightComponent.OnUpdatePropertyOcclusionMaskDarkness")()); }
			ScriptFunction OnUpdatePropertyBrightness() { mixin(MGF!("mOnUpdatePropertyBrightness", "Function Engine.LightComponent.OnUpdatePropertyBrightness")()); }
			ScriptFunction OnUpdatePropertyLightColor() { mixin(MGF!("mOnUpdatePropertyLightColor", "Function Engine.LightComponent.OnUpdatePropertyLightColor")()); }
		}
	}
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
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.LightComponent.LightingChannelContainer")()); }
		@property final
		{
			bool Crowd() { mixin(MGBPS!(0, 0x4000000)()); }
			bool Crowd(bool val) { mixin(MSBPS!(0, 0x4000000)()); }
			bool Gameplay_4() { mixin(MGBPS!(0, 0x2000000)()); }
			bool Gameplay_4(bool val) { mixin(MSBPS!(0, 0x2000000)()); }
			bool Gameplay_3() { mixin(MGBPS!(0, 0x1000000)()); }
			bool Gameplay_3(bool val) { mixin(MSBPS!(0, 0x1000000)()); }
			bool Gameplay_2() { mixin(MGBPS!(0, 0x800000)()); }
			bool Gameplay_2(bool val) { mixin(MSBPS!(0, 0x800000)()); }
			bool Gameplay_1() { mixin(MGBPS!(0, 0x400000)()); }
			bool Gameplay_1(bool val) { mixin(MSBPS!(0, 0x400000)()); }
			bool Cinematic_10() { mixin(MGBPS!(0, 0x200000)()); }
			bool Cinematic_10(bool val) { mixin(MSBPS!(0, 0x200000)()); }
			bool Cinematic_9() { mixin(MGBPS!(0, 0x100000)()); }
			bool Cinematic_9(bool val) { mixin(MSBPS!(0, 0x100000)()); }
			bool Cinematic_8() { mixin(MGBPS!(0, 0x80000)()); }
			bool Cinematic_8(bool val) { mixin(MSBPS!(0, 0x80000)()); }
			bool Cinematic_7() { mixin(MGBPS!(0, 0x40000)()); }
			bool Cinematic_7(bool val) { mixin(MSBPS!(0, 0x40000)()); }
			bool Cinematic_6() { mixin(MGBPS!(0, 0x20000)()); }
			bool Cinematic_6(bool val) { mixin(MSBPS!(0, 0x20000)()); }
			bool Cinematic_5() { mixin(MGBPS!(0, 0x10000)()); }
			bool Cinematic_5(bool val) { mixin(MSBPS!(0, 0x10000)()); }
			bool Cinematic_4() { mixin(MGBPS!(0, 0x8000)()); }
			bool Cinematic_4(bool val) { mixin(MSBPS!(0, 0x8000)()); }
			bool Cinematic_3() { mixin(MGBPS!(0, 0x4000)()); }
			bool Cinematic_3(bool val) { mixin(MSBPS!(0, 0x4000)()); }
			bool Cinematic_2() { mixin(MGBPS!(0, 0x2000)()); }
			bool Cinematic_2(bool val) { mixin(MSBPS!(0, 0x2000)()); }
			bool Cinematic_1() { mixin(MGBPS!(0, 0x1000)()); }
			bool Cinematic_1(bool val) { mixin(MSBPS!(0, 0x1000)()); }
			bool Unnamed_6() { mixin(MGBPS!(0, 0x800)()); }
			bool Unnamed_6(bool val) { mixin(MSBPS!(0, 0x800)()); }
			bool Unnamed_5() { mixin(MGBPS!(0, 0x400)()); }
			bool Unnamed_5(bool val) { mixin(MSBPS!(0, 0x400)()); }
			bool Unnamed_4() { mixin(MGBPS!(0, 0x200)()); }
			bool Unnamed_4(bool val) { mixin(MSBPS!(0, 0x200)()); }
			bool Unnamed_3() { mixin(MGBPS!(0, 0x100)()); }
			bool Unnamed_3(bool val) { mixin(MSBPS!(0, 0x100)()); }
			bool Unnamed_2() { mixin(MGBPS!(0, 0x80)()); }
			bool Unnamed_2(bool val) { mixin(MSBPS!(0, 0x80)()); }
			bool Unnamed_1() { mixin(MGBPS!(0, 0x40)()); }
			bool Unnamed_1(bool val) { mixin(MSBPS!(0, 0x40)()); }
			bool Skybox() { mixin(MGBPS!(0, 0x20)()); }
			bool Skybox(bool val) { mixin(MSBPS!(0, 0x20)()); }
			bool CompositeDynamic() { mixin(MGBPS!(0, 0x10)()); }
			bool CompositeDynamic(bool val) { mixin(MSBPS!(0, 0x10)()); }
			bool Dynamic() { mixin(MGBPS!(0, 0x8)()); }
			bool Dynamic(bool val) { mixin(MSBPS!(0, 0x8)()); }
			bool Static() { mixin(MGBPS!(0, 0x4)()); }
			bool Static(bool val) { mixin(MSBPS!(0, 0x4)()); }
			bool BSP() { mixin(MGBPS!(0, 0x2)()); }
			bool BSP(bool val) { mixin(MSBPS!(0, 0x2)()); }
			bool bInitialized() { mixin(MGBPS!(0, 0x1)()); }
			bool bInitialized(bool val) { mixin(MSBPS!(0, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			float Brightness() { mixin(MGPC!(float, 256)()); }
			UObject.Color LightColor() { mixin(MGPC!(UObject.Color, 260)()); }
			// WARNING: Property 'Function' has the same name as a defined type!
			UObject.Pointer SceneInfo() { mixin(MGPC!(UObject.Pointer, 88)()); }
			UObject.Matrix WorldToLight() { mixin(MGPC!(UObject.Matrix, 96)()); }
			UObject.Matrix LightToWorld() { mixin(MGPC!(UObject.Matrix, 160)()); }
			UObject.Guid LightGuid() { mixin(MGPC!(UObject.Guid, 224)()); }
			UObject.Guid LightmapGuid() { mixin(MGPC!(UObject.Guid, 240)()); }
			float LightEnv_BouncedLightBrightness() { mixin(MGPC!(float, 268)()); }
			UObject.Color LightEnv_BouncedModulationColor() { mixin(MGPC!(UObject.Color, 272)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'LightEnvironment'!
			ScriptArray!(ScriptName) OtherLevelsToAffect() { mixin(MGPC!(ScriptArray!(ScriptName), 284)()); }
			LightComponent.LightingChannelContainer LightingChannels() { mixin(MGPC!(LightComponent.LightingChannelContainer, 296)()); }
			ScriptArray!(Brush) InclusionVolumes() { mixin(MGPC!(ScriptArray!(Brush), 300)()); }
			ScriptArray!(Brush) ExclusionVolumes() { mixin(MGPC!(ScriptArray!(Brush), 312)()); }
			ScriptArray!(UObject.Pointer) InclusionConvexVolumes() { mixin(MGPC!(ScriptArray!(UObject.Pointer), 324)()); }
			ScriptArray!(UObject.Pointer) ExclusionConvexVolumes() { mixin(MGPC!(ScriptArray!(UObject.Pointer), 336)()); }
			LightComponent.ELightAffectsClassification LightAffectsClassification() { mixin(MGPC!(LightComponent.ELightAffectsClassification, 348)()); }
			LightComponent.ELightShadowMode LightShadowMode() { mixin(MGPC!(LightComponent.ELightShadowMode, 349)()); }
			UObject.LinearColor ModShadowColor() { mixin(MGPC!(UObject.LinearColor, 352)()); }
			float ModShadowFadeoutTime() { mixin(MGPC!(float, 368)()); }
			float ModShadowFadeoutExponent() { mixin(MGPC!(float, 372)()); }
			int LightListIndex() { mixin(MGPC!(int, 376)()); }
			LightComponent.EShadowProjectionTechnique ShadowProjectionTechnique() { mixin(MGPC!(LightComponent.EShadowProjectionTechnique, 380)()); }
			LightComponent.EShadowFilterQuality ShadowFilterQuality() { mixin(MGPC!(LightComponent.EShadowFilterQuality, 381)()); }
			int MinShadowResolution() { mixin(MGPC!(int, 384)()); }
			int MaxShadowResolution() { mixin(MGPC!(int, 388)()); }
			int ShadowFadeResolution() { mixin(MGPC!(int, 392)()); }
			float OcclusionDepthRange() { mixin(MGPC!(float, 396)()); }
			float BloomScale() { mixin(MGPC!(float, 400)()); }
			float BloomThreshold() { mixin(MGPC!(float, 404)()); }
			float BloomScreenBlendThreshold() { mixin(MGPC!(float, 408)()); }
			UObject.Color BloomTint() { mixin(MGPC!(UObject.Color, 412)()); }
			float RadialBlurPercent() { mixin(MGPC!(float, 416)()); }
			float OcclusionMaskDarkness() { mixin(MGPC!(float, 420)()); }
			Texture2D ReflectionTexture() { mixin(MGPC!(Texture2D, 424)()); }
			float ReflectionScale() { mixin(MGPC!(float, 428)()); }
		}
		bool bEnabled() { mixin(MGBPC!(276, 0x1)()); }
		bool bEnabled(bool val) { mixin(MSBPC!(276, 0x1)()); }
		bool CastShadows() { mixin(MGBPC!(276, 0x2)()); }
		bool CastShadows(bool val) { mixin(MSBPC!(276, 0x2)()); }
		bool CastStaticShadows() { mixin(MGBPC!(276, 0x4)()); }
		bool CastStaticShadows(bool val) { mixin(MSBPC!(276, 0x4)()); }
		bool CastDynamicShadows() { mixin(MGBPC!(276, 0x8)()); }
		bool CastDynamicShadows(bool val) { mixin(MSBPC!(276, 0x8)()); }
		bool bCastCompositeShadow() { mixin(MGBPC!(276, 0x10)()); }
		bool bCastCompositeShadow(bool val) { mixin(MSBPC!(276, 0x10)()); }
		bool bAffectCompositeShadowDirection() { mixin(MGBPC!(276, 0x20)()); }
		bool bAffectCompositeShadowDirection(bool val) { mixin(MSBPC!(276, 0x20)()); }
		bool bNonModulatedSelfShadowing() { mixin(MGBPC!(276, 0x40)()); }
		bool bNonModulatedSelfShadowing(bool val) { mixin(MSBPC!(276, 0x40)()); }
		bool bSelfShadowOnly() { mixin(MGBPC!(276, 0x80)()); }
		bool bSelfShadowOnly(bool val) { mixin(MSBPC!(276, 0x80)()); }
		bool bAllowPreShadow() { mixin(MGBPC!(276, 0x100)()); }
		bool bAllowPreShadow(bool val) { mixin(MSBPC!(276, 0x100)()); }
		bool bForceDynamicLight() { mixin(MGBPC!(276, 0x200)()); }
		bool bForceDynamicLight(bool val) { mixin(MSBPC!(276, 0x200)()); }
		bool UseDirectLightMap() { mixin(MGBPC!(276, 0x400)()); }
		bool UseDirectLightMap(bool val) { mixin(MSBPC!(276, 0x400)()); }
		bool bHasLightEverBeenBuiltIntoLightMap() { mixin(MGBPC!(276, 0x800)()); }
		bool bHasLightEverBeenBuiltIntoLightMap(bool val) { mixin(MSBPC!(276, 0x800)()); }
		bool bOnlyAffectSameAndSpecifiedLevels() { mixin(MGBPC!(276, 0x1000)()); }
		bool bOnlyAffectSameAndSpecifiedLevels(bool val) { mixin(MSBPC!(276, 0x1000)()); }
		bool bCanAffectDynamicPrimitivesOutsideDynamicChannel() { mixin(MGBPC!(276, 0x2000)()); }
		bool bCanAffectDynamicPrimitivesOutsideDynamicChannel(bool val) { mixin(MSBPC!(276, 0x2000)()); }
		bool bUseVolumes() { mixin(MGBPC!(276, 0x4000)()); }
		bool bUseVolumes(bool val) { mixin(MSBPC!(276, 0x4000)()); }
		bool bRenderLightShafts() { mixin(MGBPC!(276, 0x8000)()); }
		bool bRenderLightShafts(bool val) { mixin(MSBPC!(276, 0x8000)()); }
		bool bUseImageReflectionSpecular() { mixin(MGBPC!(276, 0x10000)()); }
		bool bUseImageReflectionSpecular(bool val) { mixin(MSBPC!(276, 0x10000)()); }
		bool bPrecomputedLightingIsValid() { mixin(MGBPC!(276, 0x20000)()); }
		bool bPrecomputedLightingIsValid(bool val) { mixin(MSBPC!(276, 0x20000)()); }
		bool bExplicitlyAssignedLight() { mixin(MGBPC!(276, 0x40000)()); }
		bool bExplicitlyAssignedLight(bool val) { mixin(MSBPC!(276, 0x40000)()); }
	}
final:
	void SetEnabled(bool bSetEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bSetEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetEnabled, params.ptr, cast(void*)0);
	}
	void SetLightProperties(float NewBrightness, UObject.Color NewLightColor, LightFunction NewLightFunction)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = NewBrightness;
		*cast(UObject.Color*)&params[4] = NewLightColor;
		*cast(LightFunction*)&params[8] = NewLightFunction;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLightProperties, params.ptr, cast(void*)0);
	}
	Vector GetOrigin()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetOrigin, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	Vector GetDirection()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDirection, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void UpdateColorAndBrightness()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateColorAndBrightness, cast(void*)0, cast(void*)0);
	}
	void UpdateLightShaftParameters()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateLightShaftParameters, cast(void*)0, cast(void*)0);
	}
	void OnUpdatePropertyBloomScale()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUpdatePropertyBloomScale, cast(void*)0, cast(void*)0);
	}
	void OnUpdatePropertyBloomTint()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUpdatePropertyBloomTint, cast(void*)0, cast(void*)0);
	}
	void OnUpdatePropertyOcclusionMaskDarkness()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUpdatePropertyOcclusionMaskDarkness, cast(void*)0, cast(void*)0);
	}
	void OnUpdatePropertyBrightness()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUpdatePropertyBrightness, cast(void*)0, cast(void*)0);
	}
	void OnUpdatePropertyLightColor()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUpdatePropertyLightColor, cast(void*)0, cast(void*)0);
	}
}
