module UnrealScript.UDKBase.UDKSkelControl_DamageSpring;

import ScriptClasses;
import UnrealScript.UDKBase.UDKSkelControl_Damage;

extern(C++) interface UDKSkelControl_DamageSpring : UDKSkelControl_Damage
{
	public @property final auto ref float MomentumPortion() { return *cast(float*)(cast(size_t)cast(void*)this + 444); }
	public @property final auto ref float LastHitTime() { return *cast(float*)(cast(size_t)cast(void*)this + 440); }
	public @property final auto ref Vector LastHitMomentum() { return *cast(Vector*)(cast(size_t)cast(void*)this + 428); }
	public @property final auto ref float RandomPortion() { return *cast(float*)(cast(size_t)cast(void*)this + 424); }
	public @property final auto ref Rotator CurrentAngle() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 412); }
	public @property final auto ref float AVModifier() { return *cast(float*)(cast(size_t)cast(void*)this + 408); }
	public @property final auto ref float SpringStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 404); }
	public @property final auto ref float Falloff() { return *cast(float*)(cast(size_t)cast(void*)this + 400); }
	public @property final auto ref Rotator MinAngle() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 388); }
	public @property final auto ref Rotator MaxAngle() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 376); }
}
