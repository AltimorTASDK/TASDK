module UnrealScript.Engine.ParticleModuleRequired;

import ScriptClasses;
import UnrealScript.Engine.ParticleEmitter;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModule;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.ParticleSpriteEmitter;

extern(C++) interface ParticleModuleRequired : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleRequired")); }
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
	@property final
	{
		auto ref
		{
			ScriptArray!(ParticleEmitter.ParticleBurst) BurstList() { return *cast(ScriptArray!(ParticleEmitter.ParticleBurst)*)(cast(size_t)cast(void*)this + 128); }
			Vector NormalsCylinderDirection() { return *cast(Vector*)(cast(size_t)cast(void*)this + 184); }
			Vector NormalsSphereCenter() { return *cast(Vector*)(cast(size_t)cast(void*)this + 172); }
			float DownsampleThresholdScreenFraction() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
			int MaxDrawCount() { return *cast(int*)(cast(size_t)cast(void*)this + 164); }
			int RandomImageChanges() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
			float RandomImageTime() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
			int SubImages_Vertical() { return *cast(int*)(cast(size_t)cast(void*)this + 152); }
			int SubImages_Horizontal() { return *cast(int*)(cast(size_t)cast(void*)this + 148); }
			float EmitterDelayLow() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
			float EmitterDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
			DistributionFloat.RawDistributionFloat SpawnRate() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 100); }
			int EmitterLoops() { return *cast(int*)(cast(size_t)cast(void*)this + 96); }
			float EmitterDurationLow() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
			float EmitterDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
			ParticleModuleRequired.EEmitterNormalsMode EmitterNormalsMode() { return *cast(ParticleModuleRequired.EEmitterNormalsMode*)(cast(size_t)cast(void*)this + 80); }
			ParticleEmitter.EParticleSubUVInterpMethod InterpolationMethod() { return *cast(ParticleEmitter.EParticleSubUVInterpMethod*)(cast(size_t)cast(void*)this + 79); }
			ParticleEmitter.EParticleBurstMethod ParticleBurstMethod() { return *cast(ParticleEmitter.EParticleBurstMethod*)(cast(size_t)cast(void*)this + 78); }
			ParticleModuleRequired.EParticleSortMode SortMode() { return *cast(ParticleModuleRequired.EParticleSortMode*)(cast(size_t)cast(void*)this + 77); }
			// WARNING: Property 'Material' has the same name as a defined type!
			ParticleSpriteEmitter.EParticleScreenAlignment ScreenAlignment() { return *cast(ParticleSpriteEmitter.EParticleScreenAlignment*)(cast(size_t)cast(void*)this + 76); }
		}
		bool bUseMaxDrawCount() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x800) != 0; }
		bool bUseMaxDrawCount(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x800; } return val; }
		bool bDirectUV() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x400) != 0; }
		bool bDirectUV(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x400; } return val; }
		bool bScaleUV() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x200) != 0; }
		bool bScaleUV(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x200; } return val; }
		bool bDelayFirstLoopOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x100) != 0; }
		bool bDelayFirstLoopOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x100; } return val; }
		bool bEmitterDelayUseRange() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x80) != 0; }
		bool bEmitterDelayUseRange(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x80; } return val; }
		bool bDurationRecalcEachLoop() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x40) != 0; }
		bool bDurationRecalcEachLoop(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x40; } return val; }
		bool bEmitterDurationUseRange() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x20) != 0; }
		bool bEmitterDurationUseRange(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x20; } return val; }
		bool bUseLegacyEmitterTime() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x10) != 0; }
		bool bUseLegacyEmitterTime(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x10; } return val; }
		bool bRequiresSorting() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x8) != 0; }
		bool bRequiresSorting(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x8; } return val; }
		bool bKillOnCompleted() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x4) != 0; }
		bool bKillOnCompleted(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x4; } return val; }
		bool bKillOnDeactivate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x2) != 0; }
		bool bKillOnDeactivate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x2; } return val; }
		bool bUseLocalSpace() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x1) != 0; }
		bool bUseLocalSpace(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x1; } return val; }
	}
}
