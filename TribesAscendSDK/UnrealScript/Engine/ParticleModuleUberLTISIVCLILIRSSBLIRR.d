module UnrealScript.Engine.ParticleModuleUberLTISIVCLILIRSSBLIRR;

import UnrealScript.Engine.ParticleModuleUberBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleUberLTISIVCLILIRSSBLIRR : ParticleModuleUberBase
{
	public @property final auto ref DistributionFloat.RawDistributionFloat StartRotationRate() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 340); }
	public @property final bool SizeMultiplyZ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 336) & 0x4) != 0; }
	public @property final bool SizeMultiplyZ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 336) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 336) &= ~0x4; } return val; }
	public @property final bool SizeMultiplyY() { return (*cast(uint*)(cast(size_t)cast(void*)this + 336) & 0x2) != 0; }
	public @property final bool SizeMultiplyY(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 336) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 336) &= ~0x2; } return val; }
	public @property final bool SizeMultiplyX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 336) & 0x1) != 0; }
	public @property final bool SizeMultiplyX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 336) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 336) &= ~0x1; } return val; }
	public @property final auto ref DistributionVector.RawDistributionVector SizeLifeMultiplier() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 308); }
	public @property final auto ref DistributionFloat.RawDistributionFloat StartRotation() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref DistributionVector.RawDistributionVector StartLocation() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref DistributionFloat.RawDistributionFloat AlphaOverLife() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref DistributionVector.RawDistributionVector ColorOverLife() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref DistributionFloat.RawDistributionFloat StartVelocityRadial() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref DistributionVector.RawDistributionVector StartVelocity() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref DistributionVector.RawDistributionVector StartSize() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref DistributionFloat.RawDistributionFloat Lifetime() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 84); }
}
