module UnrealScript.TribesGame.TrVehicleWeapon_ShrikePilot;

import ScriptClasses;
import UnrealScript.TribesGame.TrVehicleWeapon_BurstShot;

extern(C++) interface TrVehicleWeapon_ShrikePilot : TrVehicleWeapon_BurstShot
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicleWeapon_ShrikePilot")); }
}
