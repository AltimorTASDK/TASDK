module UnrealScript.Engine.ParticleModuleUberLTISIVCLILIRSSBLIRR;

import UnrealScript.Engine.ParticleModuleUberBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleUberLTISIVCLILIRSSBLIRR : ParticleModuleUberBase
{
public extern(D):
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat StartRotationRate() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 340); }
			DistributionVector.RawDistributionVector SizeLifeMultiplier() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 308); }
			DistributionFloat.RawDistributionFloat StartRotation() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 280); }
			DistributionVector.RawDistributionVector StartLocation() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 252); }
			DistributionFloat.RawDistributionFloat AlphaOverLife() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 224); }
			DistributionVector.RawDistributionVector ColorOverLife() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 196); }
			DistributionFloat.RawDistributionFloat StartVelocityRadial() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 168); }
			DistributionVector.RawDistributionVector StartVelocity() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 140); }
			DistributionVector.RawDistributionVector StartSize() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 112); }
			DistributionFloat.RawDistributionFloat Lifetime() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 84); }
		}
		bool SizeMultiplyZ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 336) & 0x4) != 0; }
		bool SizeMultiplyZ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 336) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 336) &= ~0x4; } return val; }
		bool SizeMultiplyY() { return (*cast(uint*)(cast(size_t)cast(void*)this + 336) & 0x2) != 0; }
		bool SizeMultiplyY(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 336) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 336) &= ~0x2; } return val; }
		bool SizeMultiplyX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 336) & 0x1) != 0; }
		bool SizeMultiplyX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 336) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 336) &= ~0x1; } return val; }
	}
}
