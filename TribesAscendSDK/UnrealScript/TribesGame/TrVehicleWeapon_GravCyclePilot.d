module UnrealScript.TribesGame.TrVehicleWeapon_GravCyclePilot;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVehicleWeapon;

extern(C++) interface TrVehicleWeapon_GravCyclePilot : TrVehicleWeapon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrVehicleWeapon_GravCyclePilot")); }
	private static __gshared TrVehicleWeapon_GravCyclePilot mDefaultProperties;
	@property final static TrVehicleWeapon_GravCyclePilot DefaultProperties() { mixin(MGDPC("TrVehicleWeapon_GravCyclePilot", "TrVehicleWeapon_GravCyclePilot TribesGame.Default__TrVehicleWeapon_GravCyclePilot")); }
}
