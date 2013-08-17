module UnrealScript.Engine.DynamicLightEnvironmentComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LightEnvironmentComponent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.LightComponent;

extern(C++) interface DynamicLightEnvironmentComponent : LightEnvironmentComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DynamicLightEnvironmentComponent")()); }
	private static __gshared DynamicLightEnvironmentComponent mDefaultProperties;
	@property final static DynamicLightEnvironmentComponent DefaultProperties() { mixin(MGDPC!(DynamicLightEnvironmentComponent, "DynamicLightEnvironmentComponent Engine.Default__DynamicLightEnvironmentComponent")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mResetEnvironment;
		public @property static final ScriptFunction ResetEnvironment() { mixin(MGF!("mResetEnvironment", "Function Engine.DynamicLightEnvironmentComponent.ResetEnvironment")()); }
	}
	enum EDynamicLightEnvironmentBoundsMethod : ubyte
	{
		DLEB_OwnerComponents = 0,
		DLEB_ManualOverride = 1,
		DLEB_ActiveComponents = 2,
		DLEB_MAX = 3,
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) OverriddenLightComponents() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*), 284)()); }
			LightComponent.LightingChannelContainer OverriddenLightingChannels() { mixin(MGPC!(LightComponent.LightingChannelContainer, 280)()); }
			UObject.BoxSphereBounds OverriddenBounds() { mixin(MGPC!(UObject.BoxSphereBounds, 252)()); }
			float MinShadowAngle() { mixin(MGPC!(float, 248)()); }
			float BouncedLightingFactor() { mixin(MGPC!(float, 244)()); }
			DynamicLightEnvironmentComponent.EDynamicLightEnvironmentBoundsMethod BoundsMethod() { mixin(MGPC!(DynamicLightEnvironmentComponent.EDynamicLightEnvironmentBoundsMethod, 242)()); }
			// WARNING: Property 'State' has the same name as a defined type!
			LightComponent.ELightShadowMode LightShadowMode() { mixin(MGPC!(LightComponent.ELightShadowMode, 241)()); }
			LightComponent.EShadowFilterQuality ShadowFilterQuality() { mixin(MGPC!(LightComponent.EShadowFilterQuality, 240)()); }
			int ShadowFadeResolution() { mixin(MGPC!(int, 236)()); }
			int MaxShadowResolution() { mixin(MGPC!(int, 232)()); }
			int MinShadowResolution() { mixin(MGPC!(int, 228)()); }
			float DominantShadowTransitionEndDistance() { mixin(MGPC!(float, 224)()); }
			float DominantShadowTransitionStartDistance() { mixin(MGPC!(float, 220)()); }
			UObject.LinearColor MaxModulatedShadowColor() { mixin(MGPC!(UObject.LinearColor, 204)()); }
			float ModShadowFadeoutExponent() { mixin(MGPC!(float, 200)()); }
			float ModShadowFadeoutTime() { mixin(MGPC!(float, 196)()); }
			float ShadowDistance() { mixin(MGPC!(float, 188)()); }
			float LightDistance() { mixin(MGPC!(float, 184)()); }
			float LightDesaturation() { mixin(MGPC!(float, 180)()); }
			UObject.LinearColor AmbientGlow() { mixin(MGPC!(UObject.LinearColor, 164)()); }
			Vector AmbientShadowSourceDirection() { mixin(MGPC!(Vector, 152)()); }
			UObject.LinearColor AmbientShadowColor() { mixin(MGPC!(UObject.LinearColor, 136)()); }
			float LightingBoundsScale() { mixin(MGPC!(float, 132)()); }
			int NumVolumeVisibilitySamples() { mixin(MGPC!(int, 128)()); }
			float ShadowInterpolationSpeed() { mixin(MGPC!(float, 124)()); }
			float MinTimeBetweenFullUpdates() { mixin(MGPC!(float, 120)()); }
			float InvisibleUpdateTime() { mixin(MGPC!(float, 116)()); }
		}
		bool bOverrideOwnerLightingChannels() { mixin(MGBPC!(192, 0x2000)()); }
		bool bOverrideOwnerLightingChannels(bool val) { mixin(MSBPC!(192, 0x2000)()); }
		bool bIsCharacterLightEnvironment() { mixin(MGBPC!(192, 0x1000)()); }
		bool bIsCharacterLightEnvironment(bool val) { mixin(MSBPC!(192, 0x1000)()); }
		bool bTraceFromClosestBoundsPoint() { mixin(MGBPC!(192, 0x800)()); }
		bool bTraceFromClosestBoundsPoint(bool val) { mixin(MSBPC!(192, 0x800)()); }
		bool bRequiresNonLatentUpdates() { mixin(MGBPC!(192, 0x400)()); }
		bool bRequiresNonLatentUpdates(bool val) { mixin(MSBPC!(192, 0x400)()); }
		bool bForceAllowLightEnvSphericalHarmonicLights() { mixin(MGBPC!(192, 0x200)()); }
		bool bForceAllowLightEnvSphericalHarmonicLights(bool val) { mixin(MSBPC!(192, 0x200)()); }
		bool bSynthesizeSHLight() { mixin(MGBPC!(192, 0x100)()); }
		bool bSynthesizeSHLight(bool val) { mixin(MSBPC!(192, 0x100)()); }
		bool bSynthesizeDirectionalLight() { mixin(MGBPC!(192, 0x80)()); }
		bool bSynthesizeDirectionalLight(bool val) { mixin(MSBPC!(192, 0x80)()); }
		bool bDynamic() { mixin(MGBPC!(192, 0x40)()); }
		bool bDynamic(bool val) { mixin(MSBPC!(192, 0x40)()); }
		bool bShadowFromEnvironment() { mixin(MGBPC!(192, 0x20)()); }
		bool bShadowFromEnvironment(bool val) { mixin(MSBPC!(192, 0x20)()); }
		bool bUseBooleanEnvironmentShadowing() { mixin(MGBPC!(192, 0x10)()); }
		bool bUseBooleanEnvironmentShadowing(bool val) { mixin(MSBPC!(192, 0x10)()); }
		bool bAffectedBySmallDynamicLights() { mixin(MGBPC!(192, 0x8)()); }
		bool bAffectedBySmallDynamicLights(bool val) { mixin(MSBPC!(192, 0x8)()); }
		bool bForceCompositeAllLights() { mixin(MGBPC!(192, 0x4)()); }
		bool bForceCompositeAllLights(bool val) { mixin(MSBPC!(192, 0x4)()); }
		bool bCompositeShadowsFromDynamicLights() { mixin(MGBPC!(192, 0x2)()); }
		bool bCompositeShadowsFromDynamicLights(bool val) { mixin(MSBPC!(192, 0x2)()); }
		bool bCastShadows() { mixin(MGBPC!(192, 0x1)()); }
		bool bCastShadows(bool val) { mixin(MSBPC!(192, 0x1)()); }
	}
	final void ResetEnvironment()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetEnvironment, cast(void*)0, cast(void*)0);
	}
}
