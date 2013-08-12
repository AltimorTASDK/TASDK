module UnrealScript.GameFramework.MobileMenuPlayerController;

import ScriptClasses;
import UnrealScript.GameFramework.GamePlayerController;

extern(C++) interface MobileMenuPlayerController : GamePlayerController
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.MobileMenuPlayerController")); }
}
