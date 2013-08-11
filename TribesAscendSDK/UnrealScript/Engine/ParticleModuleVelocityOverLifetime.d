module UnrealScript.Engine.ParticleModuleVelocityOverLifetime;

import UnrealScript.Engine.ParticleModuleVelocityBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleVelocityOverLifetime : ParticleModuleVelocityBase
{
	public @property final bool Absolute() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x1) != 0; }
	public @property final bool Absolute(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x1; } return val; }
	public @property final auto ref DistributionVector.RawDistributionVector VelOverLife() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 76); }
}
