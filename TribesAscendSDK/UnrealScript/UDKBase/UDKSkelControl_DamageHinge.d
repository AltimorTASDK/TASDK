module UnrealScript.UDKBase.UDKSkelControl_DamageHinge;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.UDKBase.UDKSkelControl_Damage;

extern(C++) interface UDKSkelControl_DamageHinge : UDKSkelControl_Damage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKSkelControl_DamageHinge")); }
	private static __gshared UDKSkelControl_DamageHinge mDefaultProperties;
	@property final static UDKSkelControl_DamageHinge DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKSkelControl_DamageHinge)("UDKSkelControl_DamageHinge UDKBase.Default__UDKSkelControl_DamageHinge")); }
	@property final auto ref
	{
		float SpringStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 392); }
		float CurrentAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 388); }
		float AVModifier() { return *cast(float*)(cast(size_t)cast(void*)this + 384); }
		UObject.EAxis PivotAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 380); }
		float MaxAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 376); }
	}
}
