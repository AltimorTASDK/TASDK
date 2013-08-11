module UnrealScript.Engine.ParticleModuleUberRainSplashA;

import UnrealScript.Engine.ParticleModuleUberBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleUberRainSplashA : ParticleModuleUberBase
{
	public @property final auto ref DistributionFloat.RawDistributionFloat AlphaOverLife() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref DistributionVector.RawDistributionVector ColorOverLife() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref DistributionVector.RawDistributionVector LifeMultiplier() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 172); }
	public @property final bool MultiplyZ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x8) != 0; }
	public @property final bool MultiplyZ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x8; } return val; }
	public @property final bool MultiplyY() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x4) != 0; }
	public @property final bool MultiplyY(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x4; } return val; }
	public @property final bool MultiplyX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x2) != 0; }
	public @property final bool MultiplyX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x2; } return val; }
	public @property final bool bInheritParent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x1) != 0; }
	public @property final bool bInheritParent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x1; } return val; }
	public @property final auto ref DistributionVector.RawDistributionVector StartRotation() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref DistributionVector.RawDistributionVector StartSize() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref DistributionFloat.RawDistributionFloat Lifetime() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 84); }
}
