module UnrealScript.Engine.DominantDirectionalLightMovable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DominantDirectionalLight;

extern(C++) interface DominantDirectionalLightMovable : DominantDirectionalLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DominantDirectionalLightMovable")()); }
	private static __gshared DominantDirectionalLightMovable mDefaultProperties;
	@property final static DominantDirectionalLightMovable DefaultProperties() { mixin(MGDPC!(DominantDirectionalLightMovable, "DominantDirectionalLightMovable Engine.Default__DominantDirectionalLightMovable")()); }
}
