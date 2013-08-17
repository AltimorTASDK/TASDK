module UnrealScript.TribesGame.TrVehicleWeapon_ShrikePilot;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVehicleWeapon_BurstShot;

extern(C++) interface TrVehicleWeapon_ShrikePilot : TrVehicleWeapon_BurstShot
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVehicleWeapon_ShrikePilot")()); }
	private static __gshared TrVehicleWeapon_ShrikePilot mDefaultProperties;
	@property final static TrVehicleWeapon_ShrikePilot DefaultProperties() { mixin(MGDPC!(TrVehicleWeapon_ShrikePilot, "TrVehicleWeapon_ShrikePilot TribesGame.Default__TrVehicleWeapon_ShrikePilot")()); }
}
