module UnrealScript.UDKBase.UDKSkelControl_DamageSpring;

import ScriptClasses;
import UnrealScript.UDKBase.UDKSkelControl_Damage;

extern(C++) interface UDKSkelControl_DamageSpring : UDKSkelControl_Damage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKSkelControl_DamageSpring")); }
	private static __gshared UDKSkelControl_DamageSpring mDefaultProperties;
	@property final static UDKSkelControl_DamageSpring DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKSkelControl_DamageSpring)("UDKSkelControl_DamageSpring UDKBase.Default__UDKSkelControl_DamageSpring")); }
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
