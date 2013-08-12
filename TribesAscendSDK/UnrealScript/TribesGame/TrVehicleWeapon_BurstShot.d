module UnrealScript.TribesGame.TrVehicleWeapon_BurstShot;

import ScriptClasses;
import UnrealScript.TribesGame.TrVehicleWeapon;

extern(C++) interface TrVehicleWeapon_BurstShot : TrVehicleWeapon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicleWeapon_BurstShot")); }
	private static __gshared TrVehicleWeapon_BurstShot mDefaultProperties;
	@property final static TrVehicleWeapon_BurstShot DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVehicleWeapon_BurstShot)("TrVehicleWeapon_BurstShot TribesGame.Default__TrVehicleWeapon_BurstShot")); }
	@property final auto ref
	{
		ScriptName m_PostFireState() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1788); }
		int m_nBurstShotCount() { return *cast(int*)(cast(size_t)cast(void*)this + 1784); }
		int m_nCurrBurstShotCount() { return *cast(int*)(cast(size_t)cast(void*)this + 1780); }
	}
}
