module UnrealScript.Engine.NxGenericForceFieldCapsule;

import UnrealScript.Engine.NxGenericForceField;

extern(C++) interface NxGenericForceFieldCapsule : NxGenericForceField
{
	public @property final auto ref float CapsuleRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 704); }
	public @property final auto ref float CapsuleHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 700); }
}
