module UnrealScript.Engine.ParticleModuleOrbit;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleOrbitBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleOrbit : ParticleModuleOrbitBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleOrbit")); }
	enum EOrbitChainMode : ubyte
	{
		EOChainMode_Add = 0,
		EOChainMode_Scale = 1,
		EOChainMode_Link = 2,
		EOChainMode_MAX = 3,
	}
	struct OrbitOptions
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ParticleModuleOrbit.OrbitOptions")); }
		@property final
		{
			bool bUseEmitterTime() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
			bool bUseEmitterTime(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
			bool bProcessDuringUpdate() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
			bool bProcessDuringUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
			bool bProcessDuringSpawn() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bProcessDuringSpawn(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final auto ref
	{
		ParticleModuleOrbit.OrbitOptions RotationRateOptions() { return *cast(ParticleModuleOrbit.OrbitOptions*)(cast(size_t)cast(void*)this + 172); }
		DistributionVector.RawDistributionVector RotationRateAmount() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 144); }
		ParticleModuleOrbit.OrbitOptions RotationOptions() { return *cast(ParticleModuleOrbit.OrbitOptions*)(cast(size_t)cast(void*)this + 140); }
		DistributionVector.RawDistributionVector RotationAmount() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 112); }
		ParticleModuleOrbit.OrbitOptions OffsetOptions() { return *cast(ParticleModuleOrbit.OrbitOptions*)(cast(size_t)cast(void*)this + 108); }
		DistributionVector.RawDistributionVector OffsetAmount() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 80); }
		ParticleModuleOrbit.EOrbitChainMode ChainMode() { return *cast(ParticleModuleOrbit.EOrbitChainMode*)(cast(size_t)cast(void*)this + 76); }
	}
}
