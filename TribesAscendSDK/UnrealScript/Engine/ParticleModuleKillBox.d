module UnrealScript.Engine.ParticleModuleKillBox;

import UnrealScript.Engine.ParticleModuleKillBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleKillBox : ParticleModuleKillBase
{
	public @property final bool bKillInside() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x2) != 0; }
	public @property final bool bKillInside(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x2; } return val; }
	public @property final bool bAbsolute() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x1) != 0; }
	public @property final bool bAbsolute(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x1; } return val; }
	public @property final auto ref DistributionVector.RawDistributionVector UpperRightCorner() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref DistributionVector.RawDistributionVector LowerLeftCorner() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
}
