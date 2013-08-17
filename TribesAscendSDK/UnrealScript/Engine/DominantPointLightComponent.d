module UnrealScript.Engine.DominantPointLightComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PointLightComponent;

extern(C++) interface DominantPointLightComponent : PointLightComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DominantPointLightComponent")); }
	private static __gshared DominantPointLightComponent mDefaultProperties;
	@property final static DominantPointLightComponent DefaultProperties() { mixin(MGDPC("DominantPointLightComponent", "DominantPointLightComponent Engine.Default__DominantPointLightComponent")); }
}
