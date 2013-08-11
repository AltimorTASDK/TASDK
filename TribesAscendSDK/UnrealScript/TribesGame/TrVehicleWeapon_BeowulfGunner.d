module UnrealScript.TribesGame.TrVehicleWeapon_BeowulfGunner;

import ScriptClasses;
import UnrealScript.TribesGame.TrSkelControl_SpinControl;
import UnrealScript.TribesGame.TrVehicleWeapon_FullAuto;

extern(C++) interface TrVehicleWeapon_BeowulfGunner : TrVehicleWeapon_FullAuto
{
	public @property final auto ref TrSkelControl_SpinControl m_BarrelSpinControl() { return *cast(TrSkelControl_SpinControl*)(cast(size_t)cast(void*)this + 1804); }
	final void InitVehicleGun()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115307], cast(void*)0, cast(void*)0);
	}
	final void Activate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115308], cast(void*)0, cast(void*)0);
	}
}
