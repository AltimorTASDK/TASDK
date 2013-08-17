module UnrealScript.UDKBase.UDKGame;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.FrameworkGame;

extern(C++) interface UDKGame : FrameworkGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKGame")); }
	private static __gshared UDKGame mDefaultProperties;
	@property final static UDKGame DefaultProperties() { mixin(MGDPC("UDKGame", "UDKGame UDKBase.Default__UDKGame")); }
}
