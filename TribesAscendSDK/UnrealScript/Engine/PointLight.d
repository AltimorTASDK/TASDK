module UnrealScript.Engine.PointLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Light;

extern(C++) interface PointLight : Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PointLight")()); }
	private static __gshared PointLight mDefaultProperties;
	@property final static PointLight DefaultProperties() { mixin(MGDPC!(PointLight, "PointLight Engine.Default__PointLight")()); }
}
