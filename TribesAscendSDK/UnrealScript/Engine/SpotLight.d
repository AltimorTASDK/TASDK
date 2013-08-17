module UnrealScript.Engine.SpotLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Light;

extern(C++) interface SpotLight : Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SpotLight")()); }
	private static __gshared SpotLight mDefaultProperties;
	@property final static SpotLight DefaultProperties() { mixin(MGDPC!(SpotLight, "SpotLight Engine.Default__SpotLight")()); }
}
