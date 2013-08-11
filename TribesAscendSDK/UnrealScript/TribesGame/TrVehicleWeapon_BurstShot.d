module UnrealScript.TribesGame.TrVehicleWeapon_BurstShot;

import ScriptClasses;
import UnrealScript.TribesGame.TrVehicleWeapon;

extern(C++) interface TrVehicleWeapon_BurstShot : TrVehicleWeapon
{
public extern(D):
	@property final auto ref
	{
		ScriptName m_PostFireState() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1788); }
		int m_nBurstShotCount() { return *cast(int*)(cast(size_t)cast(void*)this + 1784); }
		int m_nCurrBurstShotCount() { return *cast(int*)(cast(size_t)cast(void*)this + 1780); }
	}
}
