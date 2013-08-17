module UnrealScript.Engine.DominantSpotLightComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SpotLightComponent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface DominantSpotLightComponent : SpotLightComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DominantSpotLightComponent")); }
	private static __gshared DominantSpotLightComponent mDefaultProperties;
	@property final static DominantSpotLightComponent DefaultProperties() { mixin(MGDPC("DominantSpotLightComponent", "DominantSpotLightComponent Engine.Default__DominantSpotLightComponent")); }
	@property final auto ref
	{
		UObject.Array_Mirror DominantLightShadowMap() { mixin(MGPC("UObject.Array_Mirror", 800)); }
		EngineTypes.DominantShadowInfo DominantLightShadowInfo() { mixin(MGPC("EngineTypes.DominantShadowInfo", 624)); }
	}
}
