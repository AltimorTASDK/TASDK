module UnrealScript.Engine.DirectionalLightComponent;

import ScriptClasses;
import UnrealScript.Engine.LightComponent;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface DirectionalLightComponent : LightComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DirectionalLightComponent")); }
	private static __gshared DirectionalLightComponent mDefaultProperties;
	@property final static DirectionalLightComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DirectionalLightComponent)("DirectionalLightComponent Engine.Default__DirectionalLightComponent")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnUpdatePropertyLightColor;
			ScriptFunction mOnUpdatePropertyBrightness;
		}
		public @property static final
		{
			ScriptFunction OnUpdatePropertyLightColor() { return mOnUpdatePropertyLightColor ? mOnUpdatePropertyLightColor : (mOnUpdatePropertyLightColor = ScriptObject.Find!(ScriptFunction)("Function Engine.DirectionalLightComponent.OnUpdatePropertyLightColor")); }
			ScriptFunction OnUpdatePropertyBrightness() { return mOnUpdatePropertyBrightness ? mOnUpdatePropertyBrightness : (mOnUpdatePropertyBrightness = ScriptObject.Find!(ScriptFunction)("Function Engine.DirectionalLightComponent.OnUpdatePropertyBrightness")); }
		}
	}
	@property final auto ref
	{
		EngineTypes.LightmassDirectionalLightSettings LightmassSettings() { return *cast(EngineTypes.LightmassDirectionalLightSettings*)(cast(size_t)cast(void*)this + 448); }
		float CascadeDistributionExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 444); }
		int NumWholeSceneDynamicShadowCascades() { return *cast(int*)(cast(size_t)cast(void*)this + 440); }
		float WholeSceneDynamicShadowRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 436); }
		float TraceDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 432); }
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
