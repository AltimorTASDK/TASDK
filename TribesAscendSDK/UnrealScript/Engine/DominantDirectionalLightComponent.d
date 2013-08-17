module UnrealScript.Engine.DominantDirectionalLightComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DirectionalLightComponent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface DominantDirectionalLightComponent : DirectionalLightComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DominantDirectionalLightComponent")()); }
	private static __gshared DominantDirectionalLightComponent mDefaultProperties;
	@property final static DominantDirectionalLightComponent DefaultProperties() { mixin(MGDPC!(DominantDirectionalLightComponent, "DominantDirectionalLightComponent Engine.Default__DominantDirectionalLightComponent")()); }
	@property final auto ref
	{
		UObject.Array_Mirror DominantLightShadowMap() { mixin(MGPC!(UObject.Array_Mirror, 640)()); }
		EngineTypes.DominantShadowInfo DominantLightShadowInfo() { mixin(MGPC!(EngineTypes.DominantShadowInfo, 464)()); }
	}
}
