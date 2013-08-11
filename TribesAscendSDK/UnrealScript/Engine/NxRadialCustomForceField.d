module UnrealScript.Engine.NxRadialCustomForceField;

import UnrealScript.Engine.NxRadialForceField;
import UnrealScript.Core.UObject;

extern(C++) interface NxRadialCustomForceField : NxRadialForceField
{
	public @property final auto ref UObject.Pointer Kernel() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 564); }
	public @property final auto ref float SelfRotationStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
}
