module UnrealScript.Engine.DistributionVectorUniform;

import ScriptClasses;
import UnrealScript.Core.DistributionVector;

extern(C++) interface DistributionVectorUniform : DistributionVector
{
	public @property final auto ref DistributionVector.EDistributionVectorMirrorFlags MirrorFlags() { return *cast(DistributionVector.EDistributionVectorMirrorFlags*)(cast(size_t)cast(void*)this + 109); }
	public @property final auto ref DistributionVector.EDistributionVectorLockFlags LockedAxes() { return *cast(DistributionVector.EDistributionVectorLockFlags*)(cast(size_t)cast(void*)this + 108); }
	public @property final bool bUseExtremes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x2) != 0; }
	public @property final bool bUseExtremes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x2; } return val; }
	public @property final bool bLockAxes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x1) != 0; }
	public @property final bool bLockAxes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x1; } return val; }
	public @property final auto ref Vector Min() { return *cast(Vector*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref Vector Max() { return *cast(Vector*)(cast(size_t)cast(void*)this + 80); }
}
