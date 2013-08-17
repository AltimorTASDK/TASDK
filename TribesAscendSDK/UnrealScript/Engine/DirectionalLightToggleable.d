module UnrealScript.Engine.DirectionalLightToggleable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DirectionalLight;

extern(C++) interface DirectionalLightToggleable : DirectionalLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DirectionalLightToggleable")()); }
	private static __gshared DirectionalLightToggleable mDefaultProperties;
	@property final static DirectionalLightToggleable DefaultProperties() { mixin(MGDPC!(DirectionalLightToggleable, "DirectionalLightToggleable Engine.Default__DirectionalLightToggleable")()); }
}
