module UnrealScript.Engine.NxGenericForceFieldCapsule;

import UnrealScript.Engine.NxGenericForceField;

extern(C++) interface NxGenericForceFieldCapsule : NxGenericForceField
{
public extern(D):
	@property final auto ref
	{
		float CapsuleRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 704); }
		float CapsuleHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 700); }
	}
}
