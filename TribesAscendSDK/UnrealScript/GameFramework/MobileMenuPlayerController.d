module UnrealScript.GameFramework.MobileMenuPlayerController;

import ScriptClasses;
import UnrealScript.GameFramework.GamePlayerController;

extern(C++) interface MobileMenuPlayerController : GamePlayerController
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.MobileMenuPlayerController")); }
	private static __gshared MobileMenuPlayerController mDefaultProperties;
	@property final static MobileMenuPlayerController DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MobileMenuPlayerController)("MobileMenuPlayerController GameFramework.Default__MobileMenuPlayerController")); }
}
