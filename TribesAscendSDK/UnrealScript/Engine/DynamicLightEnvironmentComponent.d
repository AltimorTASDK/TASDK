module UnrealScript.Engine.DynamicLightEnvironmentComponent;

import ScriptClasses;
import UnrealScript.Engine.LightEnvironmentComponent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.LightComponent;

extern(C++) interface DynamicLightEnvironmentComponent : LightEnvironmentComponent
{
public extern(D):
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
void*) OverriddenLightComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 284); }
			LightComponent.LightingChannelContainer OverriddenLightingChannels() { return *cast(LightComponent.LightingChannelContainer*)(cast(size_t)cast(void*)this + 280); }
			UObject.BoxSphereBounds OverriddenBounds() { return *cast(UObject.BoxSphereBounds*)(cast(size_t)cast(void*)this + 252); }
			float MinShadowAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
			float BouncedLightingFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
			DynamicLightEnvironmentComponent.EDynamicLightEnvironmentBoundsMethod BoundsMethod() { return *cast(DynamicLightEnvironmentComponent.EDynamicLightEnvironmentBoundsMethod*)(cast(size_t)cast(void*)this + 242); }
			// WARNING: Property 'State' has the same name as a defined type!
			LightComponent.ELightShadowMode LightShadowMode() { return *cast(LightComponent.ELightShadowMode*)(cast(size_t)cast(void*)this + 241); }
			LightComponent.EShadowFilterQuality ShadowFilterQuality() { return *cast(LightComponent.EShadowFilterQuality*)(cast(size_t)cast(void*)this + 240); }
			int ShadowFadeResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
			int MaxShadowResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
			int MinShadowResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 228); }
			float DominantShadowTransitionEndDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 224); }
			float DominantShadowTransitionStartDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 220); }
			UObject.LinearColor MaxModulatedShadowColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 204); }
			float ModShadowFadeoutExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 200); }
			float ModShadowFadeoutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 196); }
			float ShadowDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
			float LightDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 184); }
			float LightDesaturation() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
			UObject.LinearColor AmbientGlow() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 164); }
			Vector AmbientShadowSourceDirection() { return *cast(Vector*)(cast(size_t)cast(void*)this + 152); }
			UObject.LinearColor AmbientShadowColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 136); }
			float LightingBoundsScale() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
			int NumVolumeVisibilitySamples() { return *cast(int*)(cast(size_t)cast(void*)this + 128); }
			float ShadowInterpolationSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
			float MinTimeBetweenFullUpdates() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
			float InvisibleUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
		}
		bool bOverrideOwnerLightingChannels() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x2000) != 0; }
		bool bOverrideOwnerLightingChannels(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x2000; } return val; }
		bool bIsCharacterLightEnvironment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x1000) != 0; }
		bool bIsCharacterLightEnvironment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x1000; } return val; }
		bool bTraceFromClosestBoundsPoint() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x800) != 0; }
		bool bTraceFromClosestBoundsPoint(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x800; } return val; }
		bool bRequiresNonLatentUpdates() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x400) != 0; }
		bool bRequiresNonLatentUpdates(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x400; } return val; }
		bool bForceAllowLightEnvSphericalHarmonicLights() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x200) != 0; }
		bool bForceAllowLightEnvSphericalHarmonicLights(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x200; } return val; }
		bool bSynthesizeSHLight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x100) != 0; }
		bool bSynthesizeSHLight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x100; } return val; }
		bool bSynthesizeDirectionalLight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x80) != 0; }
		bool bSynthesizeDirectionalLight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x80; } return val; }
		bool bDynamic() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x40) != 0; }
		bool bDynamic(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x40; } return val; }
		bool bShadowFromEnvironment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x20) != 0; }
		bool bShadowFromEnvironment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x20; } return val; }
		bool bUseBooleanEnvironmentShadowing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x10) != 0; }
		bool bUseBooleanEnvironmentShadowing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x10; } return val; }
		bool bAffectedBySmallDynamicLights() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x8) != 0; }
		bool bAffectedBySmallDynamicLights(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x8; } return val; }
		bool bForceCompositeAllLights() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x4) != 0; }
		bool bForceCompositeAllLights(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x4; } return val; }
		bool bCompositeShadowsFromDynamicLights() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x2) != 0; }
		bool bCompositeShadowsFromDynamicLights(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x2; } return val; }
		bool bCastShadows() { return (*cast(uint*)(cast(size_t)cast(void*)this + 192) & 0x1) != 0; }
		bool bCastShadows(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 192) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 192) &= ~0x1; } return val; }
	}
	final void ResetEnvironment()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11772], cast(void*)0, cast(void*)0);
	}
}
