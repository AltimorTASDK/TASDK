module UnrealScript.Engine.SkyLightToggleable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkyLight;

extern(C++) interface SkyLightToggleable : SkyLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SkyLightToggleable")()); }
	private static __gshared SkyLightToggleable mDefaultProperties;
	@property final static SkyLightToggleable DefaultProperties() { mixin(MGDPC!(SkyLightToggleable, "SkyLightToggleable Engine.Default__SkyLightToggleable")()); }
}
