module UnrealScript.Engine.ParticleModuleMeshRotationRateOverLife;

import UnrealScript.Engine.ParticleModuleRotationRateBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleMeshRotationRateOverLife : ParticleModuleRotationRateBase
{
	public @property final bool bScaleRotRate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
	public @property final bool bScaleRotRate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
	public @property final auto ref DistributionVector.RawDistributionVector RotRate() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
}
