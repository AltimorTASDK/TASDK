module UnrealScript.TribesGame.TrVehicleWeapon_BeowulfGunner;

import ScriptClasses;
import UnrealScript.TribesGame.TrSkelControl_SpinControl;
import UnrealScript.TribesGame.TrVehicleWeapon_FullAuto;

extern(C++) interface TrVehicleWeapon_BeowulfGunner : TrVehicleWeapon_FullAuto
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicleWeapon_BeowulfGunner")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitVehicleGun;
			ScriptFunction mActivate;
		}
		public @property static final
		{
			ScriptFunction InitVehicleGun() { return mInitVehicleGun ? mInitVehicleGun : (mInitVehicleGun = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon_BeowulfGunner.InitVehicleGun")); }
			ScriptFunction Activate() { return mActivate ? mActivate : (mActivate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon_BeowulfGunner.Activate")); }
		}
	}
	@property final auto ref TrSkelControl_SpinControl m_BarrelSpinControl() { return *cast(TrSkelControl_SpinControl*)(cast(size_t)cast(void*)this + 1804); }
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
