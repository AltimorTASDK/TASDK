module UnrealScript.Engine.ParticleModuleCollision;

import UnrealScript.Engine.ParticleModuleCollisionBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleCollision : ParticleModuleCollisionBase
{
	public @property final auto ref DistributionFloat.RawDistributionFloat DelayAmount() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref float VerticalFudgeFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref float DirScalar() { return *cast(float*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref DistributionFloat.RawDistributionFloat ParticleMass() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 164); }
	public @property final bool bDropDetail() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x8) != 0; }
	public @property final bool bDropDetail(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x8; } return val; }
	public @property final bool bOnlyVerticalNormalsDecrementCount() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x4) != 0; }
	public @property final bool bOnlyVerticalNormalsDecrementCount(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x4; } return val; }
	public @property final bool bPawnsDoNotDecrementCount() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x2) != 0; }
	public @property final bool bPawnsDoNotDecrementCount(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x2; } return val; }
	public @property final bool bApplyPhysics() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x1) != 0; }
	public @property final bool bApplyPhysics(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x1; } return val; }
	public @property final auto ref ParticleModuleCollisionBase.EParticleCollisionComplete CollisionCompletionOption() { return *cast(ParticleModuleCollisionBase.EParticleCollisionComplete*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref DistributionFloat.RawDistributionFloat MaxCollisions() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref DistributionVector.RawDistributionVector DampingFactorRotation() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref DistributionVector.RawDistributionVector DampingFactor() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
}
