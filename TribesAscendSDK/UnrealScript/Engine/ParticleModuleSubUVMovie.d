module UnrealScript.Engine.ParticleModuleSubUVMovie;

import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleSubUV;

extern(C++) interface ParticleModuleSubUVMovie : ParticleModuleSubUV
{
	public @property final auto ref int StartingFrame() { return *cast(int*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref DistributionFloat.RawDistributionFloat FrameRate() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 104); }
	public @property final bool bUseEmitterTime() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
	public @property final bool bUseEmitterTime(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
}
