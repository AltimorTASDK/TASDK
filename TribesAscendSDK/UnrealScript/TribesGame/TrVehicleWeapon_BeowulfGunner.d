module UnrealScript.TribesGame.TrVehicleWeapon_BeowulfGunner;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrSkelControl_SpinControl;
import UnrealScript.TribesGame.TrVehicleWeapon_FullAuto;

extern(C++) interface TrVehicleWeapon_BeowulfGunner : TrVehicleWeapon_FullAuto
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVehicleWeapon_BeowulfGunner")()); }
	private static __gshared TrVehicleWeapon_BeowulfGunner mDefaultProperties;
	@property final static TrVehicleWeapon_BeowulfGunner DefaultProperties() { mixin(MGDPC!(TrVehicleWeapon_BeowulfGunner, "TrVehicleWeapon_BeowulfGunner TribesGame.Default__TrVehicleWeapon_BeowulfGunner")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitVehicleGun;
			ScriptFunction mActivate;
		}
		public @property static final
		{
			ScriptFunction InitVehicleGun() { mixin(MGF!("mInitVehicleGun", "Function TribesGame.TrVehicleWeapon_BeowulfGunner.InitVehicleGun")()); }
			ScriptFunction Activate() { mixin(MGF!("mActivate", "Function TribesGame.TrVehicleWeapon_BeowulfGunner.Activate")()); }
		}
	}
	static struct WeaponFullAutoFiring
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrVehicleWeapon_BeowulfGunner.WeaponFullAutoFiring")()); }
	}
	@property final auto ref TrSkelControl_SpinControl m_BarrelSpinControl() { mixin(MGPC!(TrSkelControl_SpinControl, 1804)()); }
final:
	void InitVehicleGun()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitVehicleGun, cast(void*)0, cast(void*)0);
	}
	void Activate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activate, cast(void*)0, cast(void*)0);
	}
}
