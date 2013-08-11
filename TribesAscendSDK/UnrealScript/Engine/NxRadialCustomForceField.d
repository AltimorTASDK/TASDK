module UnrealScript.Engine.NxRadialCustomForceField;

import UnrealScript.Engine.NxRadialForceField;
import UnrealScript.Core.UObject;

extern(C++) interface NxRadialCustomForceField : NxRadialForceField
{
public extern(D):
	@property final auto ref
	{
		UObject.Pointer Kernel() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 564); }
		float SelfRotationStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
	}
}
