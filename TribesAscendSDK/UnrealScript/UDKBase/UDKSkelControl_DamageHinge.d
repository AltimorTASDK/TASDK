module UnrealScript.UDKBase.UDKSkelControl_DamageHinge;

import UnrealScript.Core.UObject;
import UnrealScript.UDKBase.UDKSkelControl_Damage;

extern(C++) interface UDKSkelControl_DamageHinge : UDKSkelControl_Damage
{
public extern(D):
	@property final auto ref
	{
		float SpringStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 392); }
		float CurrentAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 388); }
		float AVModifier() { return *cast(float*)(cast(size_t)cast(void*)this + 384); }
		UObject.EAxis PivotAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 380); }
		float MaxAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 376); }
	}
}
