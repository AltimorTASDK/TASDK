module UnrealScript.Engine.ParticleModuleTypeDataTrail;

import ScriptClasses;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleTypeDataBase;

extern(C++) interface ParticleModuleTypeDataTrail : ParticleModuleTypeDataBase
{
	public @property final auto ref Vector SpawnDistance() { return *cast(Vector*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref DistributionFloat.RawDistributionFloat Tension() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref int TessellationFactor() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
	public @property final bool SpawnByDistance() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x10) != 0; }
	public @property final bool SpawnByDistance(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x10; } return val; }
	public @property final bool Tapered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x8) != 0; }
	public @property final bool Tapered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x8; } return val; }
	public @property final bool RenderTessellation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x4) != 0; }
	public @property final bool RenderTessellation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x4; } return val; }
	public @property final bool RenderLines() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x2) != 0; }
	public @property final bool RenderLines(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x2; } return val; }
	public @property final bool RenderGeometry() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
	public @property final bool RenderGeometry(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
}
