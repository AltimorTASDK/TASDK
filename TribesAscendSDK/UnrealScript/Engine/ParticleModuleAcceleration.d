module UnrealScript.Engine.ParticleModuleAcceleration;

import UnrealScript.Core.DistributionVector;
import UnrealScript.Engine.ParticleModuleAccelerationBase;

extern(C++) interface ParticleModuleAcceleration : ParticleModuleAccelerationBase
{
	public @property final bool bApplyOwnerScale() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x1) != 0; }
	public @property final bool bApplyOwnerScale(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x1; } return val; }
	public @property final auto ref DistributionVector.RawDistributionVector Acceleration() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 76); }
}
