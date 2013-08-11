module UnrealScript.Engine.ParticleModuleTypeDataRibbon;

import UnrealScript.Engine.ParticleModuleTypeDataBase;

extern(C++) interface ParticleModuleTypeDataRibbon : ParticleModuleTypeDataBase
{
public extern(D):
	enum ETrailsRenderAxisOption : ubyte
	{
		Trails_CameraUp = 0,
		Trails_SourceUp = 1,
		Trails_WorldUp = 2,
		Trails_MAX = 3,
	}
	@property final
	{
		auto ref
		{
			float TangentTessellationScalar() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			float DistanceTessellationStepSize() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
			float TilingDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
			float TangentSpawningScalar() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
			ParticleModuleTypeDataRibbon.ETrailsRenderAxisOption RenderAxis() { return *cast(ParticleModuleTypeDataRibbon.ETrailsRenderAxisOption*)(cast(size_t)cast(void*)this + 92); }
			int MaxTessellationBetweenParticles() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
			int MaxParticleInTrailCount() { return *cast(int*)(cast(size_t)cast(void*)this + 84); }
			int MaxTrailCount() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
			int SheetsPerTrail() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
		}
		bool bRenderTessellation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x100) != 0; }
		bool bRenderTessellation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x100; } return val; }
		bool bRenderTangents() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x80) != 0; }
		bool bRenderTangents(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x80; } return val; }
		bool bRenderSpawnPoints() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x40) != 0; }
		bool bRenderSpawnPoints(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x40; } return val; }
		bool bRenderGeometry() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x20) != 0; }
		bool bRenderGeometry(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x20; } return val; }
		bool bTangentRecalculationEveryFrame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x10) != 0; }
		bool bTangentRecalculationEveryFrame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x10; } return val; }
		bool bEnablePreviousTangentRecalculation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x8) != 0; }
		bool bEnablePreviousTangentRecalculation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x8; } return val; }
		bool bClipSourceSegement() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x4) != 0; }
		bool bClipSourceSegement(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x4; } return val; }
		bool bDeadTrailsOnSourceLoss() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x2) != 0; }
		bool bDeadTrailsOnSourceLoss(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x2; } return val; }
		bool bDeadTrailsOnDeactivate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x1) != 0; }
		bool bDeadTrailsOnDeactivate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x1; } return val; }
	}
}
