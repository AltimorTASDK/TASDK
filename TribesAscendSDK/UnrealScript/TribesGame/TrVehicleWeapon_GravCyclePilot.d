module UnrealScript.TribesGame.TrVehicleWeapon_GravCyclePilot;

import ScriptClasses;
import UnrealScript.TribesGame.TrVehicleWeapon;

extern(C++) interface TrVehicleWeapon_GravCyclePilot : TrVehicleWeapon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicleWeapon_GravCyclePilot")); }
}
