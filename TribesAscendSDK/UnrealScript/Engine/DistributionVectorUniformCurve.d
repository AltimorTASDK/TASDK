module UnrealScript.Engine.DistributionVectorUniformCurve;

import UnrealScript.Core.UObject;
import UnrealScript.Core.DistributionVector;

extern(C++) interface DistributionVectorUniformCurve : DistributionVector
{
	public @property final auto ref DistributionVector.EDistributionVectorMirrorFlags MirrorFlags() { return *cast(DistributionVector.EDistributionVectorMirrorFlags*)(cast(size_t)cast(void*)this + 102); }
	public @property final auto ref DistributionVector.EDistributionVectorLockFlags LockedAxes() { return *cast(DistributionVector.EDistributionVectorLockFlags*)(cast(size_t)cast(void*)this + 100); }
	public @property final bool bUseExtremes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x4) != 0; }
	public @property final bool bUseExtremes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x4; } return val; }
	public @property final bool bLockAxes2() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x2) != 0; }
	public @property final bool bLockAxes2(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x2; } return val; }
	public @property final bool bLockAxes1() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x1) != 0; }
	public @property final bool bLockAxes1(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x1; } return val; }
	public @property final auto ref UObject.InterpCurveTwoVectors ConstantCurve() { return *cast(UObject.InterpCurveTwoVectors*)(cast(size_t)cast(void*)this + 80); }
}
