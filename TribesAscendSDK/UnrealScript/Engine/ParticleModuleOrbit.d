module UnrealScript.Engine.ParticleModuleOrbit;

import UnrealScript.Engine.ParticleModuleOrbitBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleOrbit : ParticleModuleOrbitBase
{
	enum EOrbitChainMode : ubyte
	{
		EOChainMode_Add = 0,
		EOChainMode_Scale = 1,
		EOChainMode_Link = 2,
		EOChainMode_MAX = 3,
	}
	struct OrbitOptions
	{
		public @property final bool bUseEmitterTime() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
		public @property final bool bUseEmitterTime(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
		private ubyte __bUseEmitterTime[4];
		public @property final bool bProcessDuringUpdate() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
		public @property final bool bProcessDuringUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
		private ubyte __bProcessDuringUpdate[4];
		public @property final bool bProcessDuringSpawn() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bProcessDuringSpawn(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bProcessDuringSpawn[4];
	}
	public @property final auto ref ParticleModuleOrbit.OrbitOptions RotationRateOptions() { return *cast(ParticleModuleOrbit.OrbitOptions*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref DistributionVector.RawDistributionVector RotationRateAmount() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref ParticleModuleOrbit.OrbitOptions RotationOptions() { return *cast(ParticleModuleOrbit.OrbitOptions*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref DistributionVector.RawDistributionVector RotationAmount() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref ParticleModuleOrbit.OrbitOptions OffsetOptions() { return *cast(ParticleModuleOrbit.OrbitOptions*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref DistributionVector.RawDistributionVector OffsetAmount() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref ParticleModuleOrbit.EOrbitChainMode ChainMode() { return *cast(ParticleModuleOrbit.EOrbitChainMode*)(cast(size_t)cast(void*)this + 76); }
}
