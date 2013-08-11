module UnrealScript.Engine.ParticleModuleLocationPrimitiveBase;

import UnrealScript.Engine.ParticleModuleLocationBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleLocationPrimitiveBase : ParticleModuleLocationBase
{
	public @property final auto ref DistributionVector.RawDistributionVector StartLocation() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref DistributionFloat.RawDistributionFloat VelocityScale() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 76); }
	public @property final bool Velocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x80) != 0; }
	public @property final bool Velocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x80; } return val; }
	public @property final bool SurfaceOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x40) != 0; }
	public @property final bool SurfaceOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x40; } return val; }
	public @property final bool Negative_Z() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x20) != 0; }
	public @property final bool Negative_Z(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x20; } return val; }
	public @property final bool Negative_Y() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x10) != 0; }
	public @property final bool Negative_Y(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x10; } return val; }
	public @property final bool Negative_X() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x8) != 0; }
	public @property final bool Negative_X(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x8; } return val; }
	public @property final bool Positive_Z() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x4) != 0; }
	public @property final bool Positive_Z(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x4; } return val; }
	public @property final bool Positive_Y() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x2) != 0; }
	public @property final bool Positive_Y(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x2; } return val; }
	public @property final bool Positive_X() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
	public @property final bool Positive_X(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
}
