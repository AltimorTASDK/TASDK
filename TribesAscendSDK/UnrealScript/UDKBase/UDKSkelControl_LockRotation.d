module UnrealScript.UDKBase.UDKSkelControl_LockRotation;

import ScriptClasses;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface UDKSkelControl_LockRotation : SkelControlBase
{
	public @property final auto ref ScriptName RotationSpaceBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref SkelControlBase.EBoneControlSpace LockRotationSpace() { return *cast(SkelControlBase.EBoneControlSpace*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref Rotator MaxDelta() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref Rotator LockRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 192); }
	public @property final bool bLockRoll() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x4) != 0; }
	public @property final bool bLockRoll(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x4; } return val; }
	public @property final bool bLockYaw() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x2) != 0; }
	public @property final bool bLockYaw(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x2; } return val; }
	public @property final bool bLockPitch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x1) != 0; }
	public @property final bool bLockPitch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x1; } return val; }
}
