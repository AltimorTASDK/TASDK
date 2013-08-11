module UnrealScript.Engine.ParticleModuleTypeDataPhysX;

import UnrealScript.Engine.ParticleModuleTypeDataBase;
import UnrealScript.Engine.PhysXParticleSystem;

extern(C++) interface ParticleModuleTypeDataPhysX : ParticleModuleTypeDataBase
{
public extern(D):
	struct PhysXEmitterVerticalLodProperties
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final auto ref
		{
			float RelativeFadeoutTime() { return *cast(float*)(cast(size_t)&this + 12); }
			float SpawnLodRateVsLifeBias() { return *cast(float*)(cast(size_t)&this + 8); }
			float WeightForSpawnLod() { return *cast(float*)(cast(size_t)&this + 4); }
			float WeightForFifo() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ParticleModuleTypeDataPhysX.PhysXEmitterVerticalLodProperties VerticalLod() { return *cast(ParticleModuleTypeDataPhysX.PhysXEmitterVerticalLodProperties*)(cast(size_t)cast(void*)this + 76); }
		PhysXParticleSystem PhysXParSys() { return *cast(PhysXParticleSystem*)(cast(size_t)cast(void*)this + 72); }
	}
}
