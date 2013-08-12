module UnrealScript.Engine.DominantDirectionalLightComponent;

import ScriptClasses;
import UnrealScript.Engine.DirectionalLightComponent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface DominantDirectionalLightComponent : DirectionalLightComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DominantDirectionalLightComponent")); }
	private static __gshared DominantDirectionalLightComponent mDefaultProperties;
	@property final static DominantDirectionalLightComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DominantDirectionalLightComponent)("DominantDirectionalLightComponent Engine.Default__DominantDirectionalLightComponent")); }
	@property final auto ref
	{
		UObject.Array_Mirror DominantLightShadowMap() { return *cast(UObject.Array_Mirror*)(cast(size_t)cast(void*)this + 640); }
		EngineTypes.DominantShadowInfo DominantLightShadowInfo() { return *cast(EngineTypes.DominantShadowInfo*)(cast(size_t)cast(void*)this + 464); }
	}
}
