module UnrealScript.UDKBase.UDKSkelControl_DamageSpring;

import ScriptClasses;
import UnrealScript.UDKBase.UDKSkelControl_Damage;

extern(C++) interface UDKSkelControl_DamageSpring : UDKSkelControl_Damage
{
public extern(D):
	@property final auto ref
	{
		float MomentumPortion() { return *cast(float*)(cast(size_t)cast(void*)this + 444); }
		float LastHitTime() { return *cast(float*)(cast(size_t)cast(void*)this + 440); }
		Vector LastHitMomentum() { return *cast(Vector*)(cast(size_t)cast(void*)this + 428); }
		float RandomPortion() { return *cast(float*)(cast(size_t)cast(void*)this + 424); }
		Rotator CurrentAngle() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 412); }
		float AVModifier() { return *cast(float*)(cast(size_t)cast(void*)this + 408); }
		float SpringStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 404); }
		float Falloff() { return *cast(float*)(cast(size_t)cast(void*)this + 400); }
		Rotator MinAngle() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 388); }
		Rotator MaxAngle() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 376); }
	}
}
