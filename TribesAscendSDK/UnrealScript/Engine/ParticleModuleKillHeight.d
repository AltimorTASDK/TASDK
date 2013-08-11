module UnrealScript.Engine.ParticleModuleKillHeight;

import UnrealScript.Engine.ParticleModuleKillBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleKillHeight : ParticleModuleKillBase
{
	public @property final bool bApplyPSysScale() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x4) != 0; }
	public @property final bool bApplyPSysScale(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x4; } return val; }
	public @property final bool bFloor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x2) != 0; }
	public @property final bool bFloor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x2; } return val; }
	public @property final bool bAbsolute() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
	public @property final bool bAbsolute(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
	public @property final auto ref DistributionFloat.RawDistributionFloat Height() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 72); }
}
