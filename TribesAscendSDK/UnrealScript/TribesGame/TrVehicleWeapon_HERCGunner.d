module UnrealScript.TribesGame.TrVehicleWeapon_HERCGunner;

import ScriptClasses;
import UnrealScript.TribesGame.TrVehicleWeapon;

extern(C++) interface TrVehicleWeapon_HERCGunner : TrVehicleWeapon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicleWeapon_HERCGunner")); }
	private static __gshared TrVehicleWeapon_HERCGunner mDefaultProperties;
	@property final static TrVehicleWeapon_HERCGunner DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVehicleWeapon_HERCGunner)("TrVehicleWeapon_HERCGunner TribesGame.Default__TrVehicleWeapon_HERCGunner")); }
}
