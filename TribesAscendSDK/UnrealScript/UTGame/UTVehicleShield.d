module UnrealScript.UTGame.UTVehicleShield;

import ScriptClasses;
import UnrealScript.UDKBase.UDKWeaponShield;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;

extern(C++) interface UTVehicleShield : UDKWeaponShield
{
public extern(D):
	@property final
	{
		auto ref
		{
			float ShieldActivatedTime() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
			SoundCue DeactivatedSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 484); }
			SoundCue ActivatedSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 480); }
		}
		bool bFullyActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x1) != 0; }
		bool bFullyActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x1; } return val; }
	}
final:
	void SetActive(bool bNowActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowActive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49803], params.ptr, cast(void*)0);
	}
	void ShieldFullyOnline()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49805], cast(void*)0, cast(void*)0);
	}
	void TakeDamage(int Damage, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49806], params.ptr, cast(void*)0);
	}
}
