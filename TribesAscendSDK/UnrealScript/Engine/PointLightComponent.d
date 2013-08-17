module UnrealScript.Engine.PointLightComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.LightComponent;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface PointLightComponent : LightComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PointLightComponent")()); }
	private static __gshared PointLightComponent mDefaultProperties;
	@property final static PointLightComponent DefaultProperties() { mixin(MGDPC!(PointLightComponent, "PointLightComponent Engine.Default__PointLightComponent")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetTranslation;
			ScriptFunction mOnUpdatePropertyLightColor;
			ScriptFunction mOnUpdatePropertyBrightness;
		}
		public @property static final
		{
			ScriptFunction SetTranslation() { mixin(MGF!("mSetTranslation", "Function Engine.PointLightComponent.SetTranslation")()); }
			ScriptFunction OnUpdatePropertyLightColor() { mixin(MGF!("mOnUpdatePropertyLightColor", "Function Engine.PointLightComponent.OnUpdatePropertyLightColor")()); }
			ScriptFunction OnUpdatePropertyBrightness() { mixin(MGF!("mOnUpdatePropertyBrightness", "Function Engine.PointLightComponent.OnUpdatePropertyBrightness")()); }
		}
	}
	@property final auto ref
	{
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PreviewLightSourceRadius'!
		EngineTypes.LightmassPointLightSettings LightmassSettings() { mixin(MGPC!("EngineTypes.LightmassPointLightSettings", 564)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PreviewLightRadius'!
		UObject.Plane ShadowPlane() { mixin(MGPC!("UObject.Plane", 544)()); }
		Vector Translation() { mixin(MGPC!("Vector", 528)()); }
		UObject.Matrix CachedParentToWorld() { mixin(MGPC!("UObject.Matrix", 464)()); }
		float MinShadowFalloffRadius() { mixin(MGPC!("float", 448)()); }
		float ShadowFalloffExponent() { mixin(MGPC!("float", 444)()); }
		float FalloffExponent() { mixin(MGPC!("float", 440)()); }
		float Radius() { mixin(MGPC!("float", 436)()); }
		float ShadowRadiusMultiplier() { mixin(MGPC!("float", 432)()); }
	}
final:
	void SetTranslation(Vector NewTranslation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewTranslation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTranslation, params.ptr, cast(void*)0);
	}
	void OnUpdatePropertyLightColor()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUpdatePropertyLightColor, cast(void*)0, cast(void*)0);
	}
	void OnUpdatePropertyBrightness()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUpdatePropertyBrightness, cast(void*)0, cast(void*)0);
	}
}
