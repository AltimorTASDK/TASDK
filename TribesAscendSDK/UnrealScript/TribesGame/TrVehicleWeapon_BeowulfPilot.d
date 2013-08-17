module UnrealScript.TribesGame.TrVehicleWeapon_BeowulfPilot;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVehicleWeapon;

extern(C++) interface TrVehicleWeapon_BeowulfPilot : TrVehicleWeapon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVehicleWeapon_BeowulfPilot")()); }
	private static __gshared TrVehicleWeapon_BeowulfPilot mDefaultProperties;
	@property final static TrVehicleWeapon_BeowulfPilot DefaultProperties() { mixin(MGDPC!(TrVehicleWeapon_BeowulfPilot, "TrVehicleWeapon_BeowulfPilot TribesGame.Default__TrVehicleWeapon_BeowulfPilot")()); }
}
