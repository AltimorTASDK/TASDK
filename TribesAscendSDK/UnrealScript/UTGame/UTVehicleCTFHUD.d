module UnrealScript.UTGame.UTVehicleCTFHUD;

import ScriptClasses;
import UnrealScript.UTGame.UTCTFHUD;

extern(C++) interface UTVehicleCTFHUD : UTCTFHUD
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTVehicleCTFHUD")); }
}
