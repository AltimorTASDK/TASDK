module UnrealScript.Engine.DominantSpotLightComponent;

import UnrealScript.Engine.SpotLightComponent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface DominantSpotLightComponent : SpotLightComponent
{
	public @property final auto ref UObject.Array_Mirror DominantLightShadowMap() { return *cast(UObject.Array_Mirror*)(cast(size_t)cast(void*)this + 800); }
	public @property final auto ref EngineTypes.DominantShadowInfo DominantLightShadowInfo() { return *cast(EngineTypes.DominantShadowInfo*)(cast(size_t)cast(void*)this + 624); }
}
