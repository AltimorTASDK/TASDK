module UnrealScript.Engine.SkyLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Light;

extern(C++) interface SkyLight : Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SkyLight")()); }
	private static __gshared SkyLight mDefaultProperties;
	@property final static SkyLight DefaultProperties() { mixin(MGDPC!(SkyLight, "SkyLight Engine.Default__SkyLight")()); }
}
