module UnrealScript.Engine.DominantPointLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PointLight;

extern(C++) interface DominantPointLight : PointLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DominantPointLight")); }
	private static __gshared DominantPointLight mDefaultProperties;
	@property final static DominantPointLight DefaultProperties() { mixin(MGDPC("DominantPointLight", "DominantPointLight Engine.Default__DominantPointLight")); }
}
