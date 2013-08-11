module UnrealScript.Engine.ParticleModuleTypeDataTrail2;

import UnrealScript.Engine.ParticleModuleTypeDataBase;

extern(C++) interface ParticleModuleTypeDataTrail2 : ParticleModuleTypeDataBase
{
	public @property final bool RenderTessellation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x20) != 0; }
	public @property final bool RenderTessellation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x20; } return val; }
	public @property final bool RenderLines() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x10) != 0; }
	public @property final bool RenderLines(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x10; } return val; }
	public @property final bool RenderDirectLine() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x8) != 0; }
	public @property final bool RenderDirectLine(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x8; } return val; }
	public @property final bool RenderGeometry() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x4) != 0; }
	public @property final bool RenderGeometry(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x4; } return val; }
	public @property final bool bClearTangents() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x2) != 0; }
	public @property final bool bClearTangents(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x2; } return val; }
	public @property final bool bClipSourceSegement() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
	public @property final bool bClipSourceSegement(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
	public @property final auto ref int MaxParticleInTrailCount() { return *cast(int*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref int MaxTrailCount() { return *cast(int*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref int Sheets() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref int TextureTile() { return *cast(int*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float TessellationStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref float TessellationFactorDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref int TessellationFactor() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
}
