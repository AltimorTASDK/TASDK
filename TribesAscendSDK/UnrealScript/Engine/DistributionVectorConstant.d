module UnrealScript.Engine.DistributionVectorConstant;

import ScriptClasses;
import UnrealScript.Core.DistributionVector;

extern(C++) interface DistributionVectorConstant : DistributionVector
{
	public @property final auto ref DistributionVector.EDistributionVectorLockFlags LockedAxes() { return *cast(DistributionVector.EDistributionVectorLockFlags*)(cast(size_t)cast(void*)this + 96); }
	public @property final bool bLockAxes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 92) & 0x1) != 0; }
	public @property final bool bLockAxes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 92) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 92) &= ~0x1; } return val; }
	public @property final auto ref Vector Constant() { return *cast(Vector*)(cast(size_t)cast(void*)this + 80); }
}
