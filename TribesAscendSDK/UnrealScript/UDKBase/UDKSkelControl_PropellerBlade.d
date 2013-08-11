module UnrealScript.UDKBase.UDKSkelControl_PropellerBlade;

import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_PropellerBlade : SkelControlSingleBone
{
	public @property final auto ref float DesiredRotationsPerSecond() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref float RotationsPerSecond() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final bool bCounterClockwise() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x1) != 0; }
	public @property final bool bCounterClockwise(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x1; } return val; }
	public @property final auto ref float SpinUpTime() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref float MaxRotationsPerSecond() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
}
