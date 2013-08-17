module UnrealScript.Engine.DominantSpotLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SpotLight;

extern(C++) interface DominantSpotLight : SpotLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DominantSpotLight")()); }
	private static __gshared DominantSpotLight mDefaultProperties;
	@property final static DominantSpotLight DefaultProperties() { mixin(MGDPC!(DominantSpotLight, "DominantSpotLight Engine.Default__DominantSpotLight")()); }
}
