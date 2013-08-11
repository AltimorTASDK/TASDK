module UnrealScript.Engine.ParticleModuleTypeDataAnimTrail;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleTypeDataBase;

extern(C++) interface ParticleModuleTypeDataAnimTrail : ParticleModuleTypeDataBase
{
	public @property final auto ref float TangentTessellationScalar() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref float DistanceTessellationStepSize() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref float TilingDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
	public @property final bool bRenderTessellation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x80) != 0; }
	public @property final bool bRenderTessellation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x80; } return val; }
	public @property final bool bRenderTangents() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x40) != 0; }
	public @property final bool bRenderTangents(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x40; } return val; }
	public @property final bool bRenderSpawnPoints() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x20) != 0; }
	public @property final bool bRenderSpawnPoints(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x20; } return val; }
	public @property final bool bRenderGeometry() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x10) != 0; }
	public @property final bool bRenderGeometry(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x10; } return val; }
	public @property final bool bTangentRecalculationEveryFrame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x8) != 0; }
	public @property final bool bTangentRecalculationEveryFrame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x8; } return val; }
	public @property final bool bEnablePreviousTangentRecalculation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x4) != 0; }
	public @property final bool bEnablePreviousTangentRecalculation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x4; } return val; }
	public @property final bool bClipSourceSegement() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x2) != 0; }
	public @property final bool bClipSourceSegement(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x2; } return val; }
	public @property final bool bDeadTrailsOnDeactivate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x1) != 0; }
	public @property final bool bDeadTrailsOnDeactivate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x1; } return val; }
	public @property final auto ref int SheetsPerTrail() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref ScriptName ControlEdgeName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 72); }
}
