module UnrealScript.Engine.DirectionalLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Light;

extern(C++) interface DirectionalLight : Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DirectionalLight")); }
	private static __gshared DirectionalLight mDefaultProperties;
	@property final static DirectionalLight DefaultProperties() { mixin(MGDPC("DirectionalLight", "DirectionalLight Engine.Default__DirectionalLight")); }
}
