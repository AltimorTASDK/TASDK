module UnrealScript.Engine.DirectionalLightComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LightComponent;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface DirectionalLightComponent : LightComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DirectionalLightComponent")); }
	private static __gshared DirectionalLightComponent mDefaultProperties;
	@property final static DirectionalLightComponent DefaultProperties() { mixin(MGDPC("DirectionalLightComponent", "DirectionalLightComponent Engine.Default__DirectionalLightComponent")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnUpdatePropertyLightColor;
			ScriptFunction mOnUpdatePropertyBrightness;
		}
		public @property static final
		{
			ScriptFunction OnUpdatePropertyLightColor() { mixin(MGF("mOnUpdatePropertyLightColor", "Function Engine.DirectionalLightComponent.OnUpdatePropertyLightColor")); }
			ScriptFunction OnUpdatePropertyBrightness() { mixin(MGF("mOnUpdatePropertyBrightness", "Function Engine.DirectionalLightComponent.OnUpdatePropertyBrightness")); }
		}
	}
	@property final auto ref
	{
		EngineTypes.LightmassDirectionalLightSettings LightmassSettings() { mixin(MGPC("EngineTypes.LightmassDirectionalLightSettings", 448)); }
		float CascadeDistributionExponent() { mixin(MGPC("float", 444)); }
		int NumWholeSceneDynamicShadowCascades() { mixin(MGPC("int", 440)); }
		float WholeSceneDynamicShadowRadius() { mixin(MGPC("float", 436)); }
		float TraceDistance() { mixin(MGPC("float", 432)); }
	}
final:
	void OnUpdatePropertyLightColor()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUpdatePropertyLightColor, cast(void*)0, cast(void*)0);
	}
	void OnUpdatePropertyBrightness()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUpdatePropertyBrightness, cast(void*)0, cast(void*)0);
	}
}
