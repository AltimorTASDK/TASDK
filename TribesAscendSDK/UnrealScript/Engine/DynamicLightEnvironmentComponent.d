module UnrealScript.Engine.DynamicLightEnvironmentComponent;

import ScriptClasses;
import UnrealScript.Engine.LightEnvironmentComponent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.LightComponent;

extern(C++) interface DynamicLightEnvironmentComponent : LightEnvironmentComponent
{
	enum EDynamicLightEnvironmentBoundsMethod : ubyte
	{
		DLEB_OwnerComponents = 0,
		DLEB_ManualOverride = 1,
		DLEB_ActiveComponents = 2,
		DLEB_MAX = 3,
	}
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*) OverriddenLightComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*)*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref LightComponent.LightingChannelContainer OverriddenLightingChannels() { return *cast(LightComponent.LightingChannelContainer*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref UObject.BoxSphereBounds OverriddenBounds() { return *cast(UObject.BoxSphereBounds*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref float MinShadowAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref float BouncedLightingFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref DynamicLightEnvironmentComponent.EDynamicLightEnvironmentBoundsMethod BoundsMethod() { return *cast(DynamicLightEnvironmentComponent.EDynamicLightEnvironmentBoundsMethod*)(cast(size_t)cast(void*)this + 242); }
	// WARNING: Property 'State' has the same name as a defined type!
	public @property final auto ref LightComponent.ELightShadowMode LightShadowMode() { return *cast(LightComponent.ELightShadowMode*)(cast(size_t)cast(void*)this + 241); }
	public @property final auto ref LightComponent.EShadowFilterQuality ShadowFilterQuality() { return *cast(LightComponent.EShadowFilterQuality*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref int ShadowFadeResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref int MaxShadowResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref int MinShadowResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref float DominantShadowTransitionEndDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref float DominantShadowTransitionStartDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref UObject.LinearColor MaxModulatedShadowColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref float ModShadowFadeoutExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref float ModShadowFadeoutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 196); }
	public @property final bool bOverrideOwnerLightingChannels() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x2000) != 0; }
	public @property final bool bOverrideOwnerLightingChannels(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x2000; } return val; }
	public @property final bool bIsCharacterLightEnvironment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x1000) != 0; }
	public @property final bool bIsCharacterLightEnvironment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x1000; } return val; }
	public @property final bool bTraceFromClosestBoundsPoint() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x800) != 0; }
	public @property final bool bTraceFromClosestBoundsPoint(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x800; } return val; }
	public @property final bool bRequiresNonLatentUpdates() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x400) != 0; }
	public @property final bool bRequiresNonLatentUpdates(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x400; } return val; }
	public @property final bool bForceAllowLightEnvSphericalHarmonicLights() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x200) != 0; }
	public @property final bool bForceAllowLightEnvSphericalHarmonicLights(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x200; } return val; }
	public @property final bool bSynthesizeSHLight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x100) != 0; }
	public @property final bool bSynthesizeSHLight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x100; } return val; }
	public @property final bool bSynthesizeDirectionalLight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x80) != 0; }
	public @property final bool bSynthesizeDirectionalLight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x80; } return val; }
	public @property final bool bDynamic() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x40) != 0; }
	public @property final bool bDynamic(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x40; } return val; }
	public @property final bool bShadowFromEnvironment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x20) != 0; }
	public @property final bool bShadowFromEnvironment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x20; } return val; }
	public @property final bool bUseBooleanEnvironmentShadowing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x10) != 0; }
	public @property final bool bUseBooleanEnvironmentShadowing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x10; } return val; }
	public @property final bool bAffectedBySmallDynamicLights() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x8) != 0; }
	public @property final bool bAffectedBySmallDynamicLights(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x8; } return val; }
	public @property final bool bForceCompositeAllLights() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x4) != 0; }
	public @property final bool bForceCompositeAllLights(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x4; } return val; }
	public @property final bool bCompositeShadowsFromDynamicLights() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x2) != 0; }
	public @property final bool bCompositeShadowsFromDynamicLights(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x2; } return val; }
	public @property final bool bCastShadows() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x1) != 0; }
	public @property final bool bCastShadows(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x1; } return val; }
	public @property final auto ref float ShadowDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref float LightDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref float LightDesaturation() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref UObject.LinearColor AmbientGlow() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref Vector AmbientShadowSourceDirection() { return *cast(Vector*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref UObject.LinearColor AmbientShadowColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref float LightingBoundsScale() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref int NumVolumeVisibilitySamples() { return *cast(int*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref float ShadowInterpolationSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref float MinTimeBetweenFullUpdates() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref float InvisibleUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
	final void ResetEnvironment()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11772], cast(void*)0, cast(void*)0);
	}
}
