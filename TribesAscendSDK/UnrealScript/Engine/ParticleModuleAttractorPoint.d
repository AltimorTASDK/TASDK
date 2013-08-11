module UnrealScript.Engine.ParticleModuleAttractorPoint;

import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;
import UnrealScript.Engine.ParticleModuleAttractorBase;

extern(C++) interface ParticleModuleAttractorPoint : ParticleModuleAttractorBase
{
	public @property final bool bUseWorldSpacePosition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x8) != 0; }
	public @property final bool bUseWorldSpacePosition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x8; } return val; }
	public @property final bool bOverrideVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x4) != 0; }
	public @property final bool bOverrideVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x4; } return val; }
	public @property final bool bAffectBaseVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x2) != 0; }
	public @property final bool bAffectBaseVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x2; } return val; }
	public @property final bool StrengthByDistance() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x1) != 0; }
	public @property final bool StrengthByDistance(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x1; } return val; }
	public @property final auto ref DistributionFloat.RawDistributionFloat Strength() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref DistributionFloat.RawDistributionFloat Range() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref DistributionVector.RawDistributionVector Position() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
}
