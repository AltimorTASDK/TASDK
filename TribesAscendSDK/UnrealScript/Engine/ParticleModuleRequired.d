module UnrealScript.Engine.ParticleModuleRequired;

import ScriptClasses;
import UnrealScript.Engine.ParticleEmitter;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModule;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.ParticleSpriteEmitter;

extern(C++) interface ParticleModuleRequired : ParticleModule
{
	enum EEmitterNormalsMode : ubyte
	{
		ENM_CameraFacing = 0,
		ENM_Spherical = 1,
		ENM_Cylindrical = 2,
		ENM_MAX = 3,
	}
	enum EParticleSortMode : ubyte
	{
		PSORTMODE_None = 0,
		PSORTMODE_ViewProjDepth = 1,
		PSORTMODE_DistanceToView = 2,
		PSORTMODE_Age_OldestFirst = 3,
		PSORTMODE_Age_NewestFirst = 4,
		PSORTMODE_MAX = 5,
	}
	public @property final auto ref ScriptArray!(ParticleEmitter.ParticleBurst) BurstList() { return *cast(ScriptArray!(ParticleEmitter.ParticleBurst)*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref Vector NormalsCylinderDirection() { return *cast(Vector*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref Vector NormalsSphereCenter() { return *cast(Vector*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref float DownsampleThresholdScreenFraction() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref int MaxDrawCount() { return *cast(int*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref int RandomImageChanges() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref float RandomImageTime() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref int SubImages_Vertical() { return *cast(int*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref int SubImages_Horizontal() { return *cast(int*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref float EmitterDelayLow() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref float EmitterDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref DistributionFloat.RawDistributionFloat SpawnRate() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref int EmitterLoops() { return *cast(int*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref float EmitterDurationLow() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref float EmitterDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
	public @property final bool bUseMaxDrawCount() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x800) != 0; }
	public @property final bool bUseMaxDrawCount(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x800; } return val; }
	public @property final bool bDirectUV() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x400) != 0; }
	public @property final bool bDirectUV(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x400; } return val; }
	public @property final bool bScaleUV() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x200) != 0; }
	public @property final bool bScaleUV(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x200; } return val; }
	public @property final bool bDelayFirstLoopOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x100) != 0; }
	public @property final bool bDelayFirstLoopOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x100; } return val; }
	public @property final bool bEmitterDelayUseRange() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x80) != 0; }
	public @property final bool bEmitterDelayUseRange(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x80; } return val; }
	public @property final bool bDurationRecalcEachLoop() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x40) != 0; }
	public @property final bool bDurationRecalcEachLoop(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x40; } return val; }
	public @property final bool bEmitterDurationUseRange() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x20) != 0; }
	public @property final bool bEmitterDurationUseRange(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x20; } return val; }
	public @property final bool bUseLegacyEmitterTime() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x10) != 0; }
	public @property final bool bUseLegacyEmitterTime(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x10; } return val; }
	public @property final bool bRequiresSorting() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x8) != 0; }
	public @property final bool bRequiresSorting(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x8; } return val; }
	public @property final bool bKillOnCompleted() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x4) != 0; }
	public @property final bool bKillOnCompleted(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x4; } return val; }
	public @property final bool bKillOnDeactivate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x2) != 0; }
	public @property final bool bKillOnDeactivate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x2; } return val; }
	public @property final bool bUseLocalSpace() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x1) != 0; }
	public @property final bool bUseLocalSpace(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x1; } return val; }
	public @property final auto ref ParticleModuleRequired.EEmitterNormalsMode EmitterNormalsMode() { return *cast(ParticleModuleRequired.EEmitterNormalsMode*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref ParticleEmitter.EParticleSubUVInterpMethod InterpolationMethod() { return *cast(ParticleEmitter.EParticleSubUVInterpMethod*)(cast(size_t)cast(void*)this + 79); }
	public @property final auto ref ParticleEmitter.EParticleBurstMethod ParticleBurstMethod() { return *cast(ParticleEmitter.EParticleBurstMethod*)(cast(size_t)cast(void*)this + 78); }
	public @property final auto ref ParticleModuleRequired.EParticleSortMode SortMode() { return *cast(ParticleModuleRequired.EParticleSortMode*)(cast(size_t)cast(void*)this + 77); }
	// WARNING: Property 'Material' has the same name as a defined type!
	public @property final auto ref ParticleSpriteEmitter.EParticleScreenAlignment ScreenAlignment() { return *cast(ParticleSpriteEmitter.EParticleScreenAlignment*)(cast(size_t)cast(void*)this + 76); }
}
