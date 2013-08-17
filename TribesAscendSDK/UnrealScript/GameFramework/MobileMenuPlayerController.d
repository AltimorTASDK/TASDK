module UnrealScript.GameFramework.MobileMenuPlayerController;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.GamePlayerController;

extern(C++) interface MobileMenuPlayerController : GamePlayerController
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.MobileMenuPlayerController")); }
	private static __gshared MobileMenuPlayerController mDefaultProperties;
	@property final static MobileMenuPlayerController DefaultProperties() { mixin(MGDPC("MobileMenuPlayerController", "MobileMenuPlayerController GameFramework.Default__MobileMenuPlayerController")); }
}
