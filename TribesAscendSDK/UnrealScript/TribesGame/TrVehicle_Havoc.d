module UnrealScript.TribesGame.TrVehicle_Havoc;

import ScriptClasses;
import UnrealScript.TribesGame.TrVehicle_BaseFlying;
import UnrealScript.UTGame.UTVehicleWeapon;

extern(C++) interface TrVehicle_Havoc : TrVehicle_BaseFlying
{
	public @property final auto ref float m_fPitchAimAngleRotation() { return *cast(float*)(cast(size_t)cast(void*)this + 3296); }
	public @property final auto ref float m_fPitchAimAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 3292); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114836], cast(void*)0, cast(void*)0);
	}
	final Rotator GetWeaponAim(UTVehicleWeapon VWeapon)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTVehicleWeapon*)params.ptr = VWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114837], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[4];
	}
}
