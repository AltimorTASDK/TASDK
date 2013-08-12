module UnrealScript.Engine.DominantSpotLightComponent;

import ScriptClasses;
import UnrealScript.Engine.SpotLightComponent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface DominantSpotLightComponent : SpotLightComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DominantSpotLightComponent")); }
	private static __gshared DominantSpotLightComponent mDefaultProperties;
	@property final static DominantSpotLightComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DominantSpotLightComponent)("DominantSpotLightComponent Engine.Default__DominantSpotLightComponent")); }
	@property final auto ref
	{
		UObject.Array_Mirror DominantLightShadowMap() { return *cast(UObject.Array_Mirror*)(cast(size_t)cast(void*)this + 800); }
		EngineTypes.DominantShadowInfo DominantLightShadowInfo() { return *cast(EngineTypes.DominantShadowInfo*)(cast(size_t)cast(void*)this + 624); }
	}
}
