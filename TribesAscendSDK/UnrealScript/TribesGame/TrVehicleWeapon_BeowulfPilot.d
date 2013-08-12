module UnrealScript.TribesGame.TrVehicleWeapon_BeowulfPilot;

import ScriptClasses;
import UnrealScript.TribesGame.TrVehicleWeapon;

extern(C++) interface TrVehicleWeapon_BeowulfPilot : TrVehicleWeapon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicleWeapon_BeowulfPilot")); }
}
