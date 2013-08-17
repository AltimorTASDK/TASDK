module UnrealScript.Engine.SpotLightMovable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SpotLight;

extern(C++) interface SpotLightMovable : SpotLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SpotLightMovable")()); }
	private static __gshared SpotLightMovable mDefaultProperties;
	@property final static SpotLightMovable DefaultProperties() { mixin(MGDPC!(SpotLightMovable, "SpotLightMovable Engine.Default__SpotLightMovable")()); }
}
