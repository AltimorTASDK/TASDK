module UnrealScript.TribesGame.TrVehicleWeapon_ShrikePilot;

import ScriptClasses;
import UnrealScript.TribesGame.TrVehicleWeapon_BurstShot;

extern(C++) interface TrVehicleWeapon_ShrikePilot : TrVehicleWeapon_BurstShot
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicleWeapon_ShrikePilot")); }
	private static __gshared TrVehicleWeapon_ShrikePilot mDefaultProperties;
	@property final static TrVehicleWeapon_ShrikePilot DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVehicleWeapon_ShrikePilot)("TrVehicleWeapon_ShrikePilot TribesGame.Default__TrVehicleWeapon_ShrikePilot")); }
}
