module UnrealScript.UDKBase.UDKSkelControl_DamageHinge;

import UnrealScript.Core.UObject;
import UnrealScript.UDKBase.UDKSkelControl_Damage;

extern(C++) interface UDKSkelControl_DamageHinge : UDKSkelControl_Damage
{
	public @property final auto ref float SpringStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 392); }
	public @property final auto ref float CurrentAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 388); }
	public @property final auto ref float AVModifier() { return *cast(float*)(cast(size_t)cast(void*)this + 384); }
	public @property final auto ref UObject.EAxis PivotAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 380); }
	public @property final auto ref float MaxAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 376); }
}
