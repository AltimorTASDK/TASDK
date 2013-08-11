module UnrealScript.Engine.ParticleModuleCollision;

import UnrealScript.Engine.ParticleModuleCollisionBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleCollision : ParticleModuleCollisionBase
{
public extern(D):
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat DelayAmount() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 200); }
			float VerticalFudgeFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 196); }
			float DirScalar() { return *cast(float*)(cast(size_t)cast(void*)this + 192); }
			DistributionFloat.RawDistributionFloat ParticleMass() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 164); }
			ParticleModuleCollisionBase.EParticleCollisionComplete CollisionCompletionOption() { return *cast(ParticleModuleCollisionBase.EParticleCollisionComplete*)(cast(size_t)cast(void*)this + 156); }
			DistributionFloat.RawDistributionFloat MaxCollisions() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 128); }
			DistributionVector.RawDistributionVector DampingFactorRotation() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 100); }
			DistributionVector.RawDistributionVector DampingFactor() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
		}
		bool bDropDetail() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x8) != 0; }
		bool bDropDetail(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x8; } return val; }
		bool bOnlyVerticalNormalsDecrementCount() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x4) != 0; }
		bool bOnlyVerticalNormalsDecrementCount(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x4; } return val; }
		bool bPawnsDoNotDecrementCount() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x2) != 0; }
		bool bPawnsDoNotDecrementCount(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x2; } return val; }
		bool bApplyPhysics() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x1) != 0; }
		bool bApplyPhysics(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x1; } return val; }
	}
}
