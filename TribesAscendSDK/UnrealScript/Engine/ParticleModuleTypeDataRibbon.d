module UnrealScript.Engine.ParticleModuleTypeDataRibbon;

import UnrealScript.Engine.ParticleModuleTypeDataBase;

extern(C++) interface ParticleModuleTypeDataRibbon : ParticleModuleTypeDataBase
{
	enum ETrailsRenderAxisOption : ubyte
	{
		Trails_CameraUp = 0,
		Trails_SourceUp = 1,
		Trails_WorldUp = 2,
		Trails_MAX = 3,
	}
	public @property final auto ref float TangentTessellationScalar() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref float DistanceTessellationStepSize() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref float TilingDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref float TangentSpawningScalar() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref ParticleModuleTypeDataRibbon.ETrailsRenderAxisOption RenderAxis() { return *cast(ParticleModuleTypeDataRibbon.ETrailsRenderAxisOption*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref int MaxTessellationBetweenParticles() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
	public @property final bool bRenderTessellation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x100) != 0; }
	public @property final bool bRenderTessellation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x100; } return val; }
	public @property final bool bRenderTangents() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x80) != 0; }
	public @property final bool bRenderTangents(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x80; } return val; }
	public @property final bool bRenderSpawnPoints() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x40) != 0; }
	public @property final bool bRenderSpawnPoints(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x40; } return val; }
	public @property final bool bRenderGeometry() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x20) != 0; }
	public @property final bool bRenderGeometry(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x20; } return val; }
	public @property final bool bTangentRecalculationEveryFrame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x10) != 0; }
	public @property final bool bTangentRecalculationEveryFrame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x10; } return val; }
	public @property final bool bEnablePreviousTangentRecalculation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x8) != 0; }
	public @property final bool bEnablePreviousTangentRecalculation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x8; } return val; }
	public @property final bool bClipSourceSegement() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x4) != 0; }
	public @property final bool bClipSourceSegement(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x4; } return val; }
	public @property final bool bDeadTrailsOnSourceLoss() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x2) != 0; }
	public @property final bool bDeadTrailsOnSourceLoss(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x2; } return val; }
	public @property final bool bDeadTrailsOnDeactivate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x1) != 0; }
	public @property final bool bDeadTrailsOnDeactivate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x1; } return val; }
	public @property final auto ref int MaxParticleInTrailCount() { return *cast(int*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref int MaxTrailCount() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref int SheetsPerTrail() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
}
