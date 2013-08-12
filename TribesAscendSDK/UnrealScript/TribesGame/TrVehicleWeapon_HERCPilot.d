module UnrealScript.TribesGame.TrVehicleWeapon_HERCPilot;

import ScriptClasses;
import UnrealScript.TribesGame.TrVehicleWeapon;

extern(C++) interface TrVehicleWeapon_HERCPilot : TrVehicleWeapon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicleWeapon_HERCPilot")); }
	private static __gshared TrVehicleWeapon_HERCPilot mDefaultProperties;
	@property final static TrVehicleWeapon_HERCPilot DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVehicleWeapon_HERCPilot)("TrVehicleWeapon_HERCPilot TribesGame.Default__TrVehicleWeapon_HERCPilot")); }
}
