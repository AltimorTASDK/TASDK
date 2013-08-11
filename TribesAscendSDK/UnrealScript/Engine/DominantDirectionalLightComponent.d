module UnrealScript.Engine.DominantDirectionalLightComponent;

import UnrealScript.Engine.DirectionalLightComponent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface DominantDirectionalLightComponent : DirectionalLightComponent
{
public extern(D):
	@property final auto ref
	{
		UObject.Array_Mirror DominantLightShadowMap() { return *cast(UObject.Array_Mirror*)(cast(size_t)cast(void*)this + 640); }
		EngineTypes.DominantShadowInfo DominantLightShadowInfo() { return *cast(EngineTypes.DominantShadowInfo*)(cast(size_t)cast(void*)this + 464); }
	}
}
