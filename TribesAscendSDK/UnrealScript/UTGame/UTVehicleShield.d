module UnrealScript.UTGame.UTVehicleShield;

import ScriptClasses;
import UnrealScript.UDKBase.UDKWeaponShield;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;

extern(C++) interface UTVehicleShield : UDKWeaponShield
{
	public @property final bool bFullyActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x1) != 0; }
	public @property final bool bFullyActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x1; } return val; }
	public @property final auto ref float ShieldActivatedTime() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref SoundCue DeactivatedSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref SoundCue ActivatedSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 480); }
	final void SetActive(bool bNowActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowActive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49803], params.ptr, cast(void*)0);
	}
	final void ShieldFullyOnline()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49805], cast(void*)0, cast(void*)0);
	}
	final void TakeDamage(int Damage, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass DamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = DamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49806], params.ptr, cast(void*)0);
	}
}
