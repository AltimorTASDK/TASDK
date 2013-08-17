module UnrealScript.Engine.DominantDirectionalLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DirectionalLight;

extern(C++) interface DominantDirectionalLight : DirectionalLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DominantDirectionalLight")); }
	private static __gshared DominantDirectionalLight mDefaultProperties;
	@property final static DominantDirectionalLight DefaultProperties() { mixin(MGDPC("DominantDirectionalLight", "DominantDirectionalLight Engine.Default__DominantDirectionalLight")); }
}
