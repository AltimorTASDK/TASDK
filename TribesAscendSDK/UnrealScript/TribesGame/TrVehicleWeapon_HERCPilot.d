module UnrealScript.TribesGame.TrVehicleWeapon_HERCPilot;

import ScriptClasses;
import UnrealScript.TribesGame.TrVehicleWeapon;

extern(C++) interface TrVehicleWeapon_HERCPilot : TrVehicleWeapon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicleWeapon_HERCPilot")); }
}
