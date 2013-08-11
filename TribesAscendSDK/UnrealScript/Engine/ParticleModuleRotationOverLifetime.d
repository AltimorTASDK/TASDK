module UnrealScript.Engine.ParticleModuleRotationOverLifetime;

import UnrealScript.Engine.ParticleModuleRotationBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleRotationOverLifetime : ParticleModuleRotationBase
{
public extern(D):
	@property final
	{
		@property final auto ref DistributionFloat.RawDistributionFloat RotationOverLife() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 72); }
		bool Scale() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
		bool Scale(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
	}
}
