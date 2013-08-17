module UnrealScript.TribesGame.TrVehicleWeapon_BurstShot;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVehicleWeapon;

extern(C++) interface TrVehicleWeapon_BurstShot : TrVehicleWeapon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVehicleWeapon_BurstShot")()); }
	private static __gshared TrVehicleWeapon_BurstShot mDefaultProperties;
	@property final static TrVehicleWeapon_BurstShot DefaultProperties() { mixin(MGDPC!(TrVehicleWeapon_BurstShot, "TrVehicleWeapon_BurstShot TribesGame.Default__TrVehicleWeapon_BurstShot")()); }
	static struct WeaponBurstShotFiring
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrVehicleWeapon_BurstShot.WeaponBurstShotFiring")()); }
	}
	@property final auto ref
	{
		ScriptName m_PostFireState() { mixin(MGPC!("ScriptName", 1788)()); }
		int m_nBurstShotCount() { mixin(MGPC!("int", 1784)()); }
		int m_nCurrBurstShotCount() { mixin(MGPC!("int", 1780)()); }
	}
}
