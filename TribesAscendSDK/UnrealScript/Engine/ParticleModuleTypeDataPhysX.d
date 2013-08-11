module UnrealScript.Engine.ParticleModuleTypeDataPhysX;

import UnrealScript.Engine.ParticleModuleTypeDataBase;
import UnrealScript.Engine.PhysXParticleSystem;

extern(C++) interface ParticleModuleTypeDataPhysX : ParticleModuleTypeDataBase
{
	struct PhysXEmitterVerticalLodProperties
	{
		public @property final auto ref float RelativeFadeoutTime() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __RelativeFadeoutTime[4];
		public @property final auto ref float SpawnLodRateVsLifeBias() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __SpawnLodRateVsLifeBias[4];
		public @property final auto ref float WeightForSpawnLod() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __WeightForSpawnLod[4];
		public @property final auto ref float WeightForFifo() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __WeightForFifo[4];
	}
	public @property final auto ref ParticleModuleTypeDataPhysX.PhysXEmitterVerticalLodProperties VerticalLod() { return *cast(ParticleModuleTypeDataPhysX.PhysXEmitterVerticalLodProperties*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref PhysXParticleSystem PhysXParSys() { return *cast(PhysXParticleSystem*)(cast(size_t)cast(void*)this + 72); }
}
