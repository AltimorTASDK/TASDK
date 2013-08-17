module UnrealScript.Engine.PointLightMovable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PointLight;

extern(C++) interface PointLightMovable : PointLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PointLightMovable")()); }
	private static __gshared PointLightMovable mDefaultProperties;
	@property final static PointLightMovable DefaultProperties() { mixin(MGDPC!(PointLightMovable, "PointLightMovable Engine.Default__PointLightMovable")()); }
}
