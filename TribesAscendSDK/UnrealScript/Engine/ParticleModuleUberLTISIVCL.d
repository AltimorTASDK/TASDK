module UnrealScript.Engine.ParticleModuleUberLTISIVCL;

import UnrealScript.Engine.ParticleModuleUberBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleUberLTISIVCL : ParticleModuleUberBase
{
	public @property final auto ref DistributionFloat.RawDistributionFloat AlphaOverLife() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref DistributionVector.RawDistributionVector ColorOverLife() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref DistributionFloat.RawDistributionFloat StartVelocityRadial() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref DistributionVector.RawDistributionVector StartVelocity() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref DistributionVector.RawDistributionVector StartSize() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref DistributionFloat.RawDistributionFloat Lifetime() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 84); }
}
