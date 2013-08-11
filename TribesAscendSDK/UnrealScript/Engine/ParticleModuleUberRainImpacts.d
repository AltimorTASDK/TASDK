module UnrealScript.Engine.ParticleModuleUberRainImpacts;

import UnrealScript.Engine.ParticleModuleUberBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;
import UnrealScript.Engine.ParticleModuleLocationPrimitiveCylinder;

extern(C++) interface ParticleModuleUberRainImpacts : ParticleModuleUberBase
{
	public @property final auto ref DistributionFloat.RawDistributionFloat AlphaOverLife() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 344); }
	public @property final auto ref DistributionVector.RawDistributionVector ColorOverLife() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 316); }
	public @property final auto ref ParticleModuleLocationPrimitiveCylinder.CylinderHeightAxis PC_HeightAxis() { return *cast(ParticleModuleLocationPrimitiveCylinder.CylinderHeightAxis*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref DistributionFloat.RawDistributionFloat PC_StartHeight() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref DistributionFloat.RawDistributionFloat PC_StartRadius() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref DistributionVector.RawDistributionVector PC_StartLocation() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref DistributionFloat.RawDistributionFloat PC_VelocityScale() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref DistributionVector.RawDistributionVector LifeMultiplier() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 172); }
	public @property final bool bRadialVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x2000) != 0; }
	public @property final bool bRadialVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x2000; } return val; }
	public @property final bool bVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x1000) != 0; }
	public @property final bool bVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x1000; } return val; }
	public @property final bool bSurfaceOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x800) != 0; }
	public @property final bool bSurfaceOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x800; } return val; }
	public @property final bool bNegative_Z() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x400) != 0; }
	public @property final bool bNegative_Z(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x400; } return val; }
	public @property final bool bNegative_Y() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x200) != 0; }
	public @property final bool bNegative_Y(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x200; } return val; }
	public @property final bool bNegative_X() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x100) != 0; }
	public @property final bool bNegative_X(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x100; } return val; }
	public @property final bool bPositive_Z() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x80) != 0; }
	public @property final bool bPositive_Z(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x80; } return val; }
	public @property final bool bPositive_Y() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x40) != 0; }
	public @property final bool bPositive_Y(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x40; } return val; }
	public @property final bool bPositive_X() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x20) != 0; }
	public @property final bool bPositive_X(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x20; } return val; }
	public @property final bool bIsUsingCylinder() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x10) != 0; }
	public @property final bool bIsUsingCylinder(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x10; } return val; }
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
