module UnrealScript.Engine.DistributionVectorConstantCurve;

import UnrealScript.Core.UObject;
import UnrealScript.Core.DistributionVector;

extern(C++) interface DistributionVectorConstantCurve : DistributionVector
{
	public @property final auto ref DistributionVector.EDistributionVectorLockFlags LockedAxes() { return *cast(DistributionVector.EDistributionVectorLockFlags*)(cast(size_t)cast(void*)this + 100); }
	public @property final bool bLockAxes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x1) != 0; }
	public @property final bool bLockAxes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x1; } return val; }
	public @property final auto ref UObject.InterpCurveVector ConstantCurve() { return *cast(UObject.InterpCurveVector*)(cast(size_t)cast(void*)this + 80); }
}
