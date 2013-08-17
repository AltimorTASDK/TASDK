module UnrealScript.Engine.ParticleModuleOrbit;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleOrbitBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleOrbit : ParticleModuleOrbitBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleOrbit")()); }
	private static __gshared ParticleModuleOrbit mDefaultProperties;
	@property final static ParticleModuleOrbit DefaultProperties() { mixin(MGDPC!(ParticleModuleOrbit, "ParticleModuleOrbit Engine.Default__ParticleModuleOrbit")()); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.ParticleModuleOrbit.OrbitOptions")()); }
		@property final
		{
			bool bUseEmitterTime() { mixin(MGBPS!(0, 0x4)()); }
			bool bUseEmitterTime(bool val) { mixin(MSBPS!(0, 0x4)()); }
			bool bProcessDuringUpdate() { mixin(MGBPS!(0, 0x2)()); }
			bool bProcessDuringUpdate(bool val) { mixin(MSBPS!(0, 0x2)()); }
			bool bProcessDuringSpawn() { mixin(MGBPS!(0, 0x1)()); }
			bool bProcessDuringSpawn(bool val) { mixin(MSBPS!(0, 0x1)()); }
		}
	}
	@property final auto ref
	{
		ParticleModuleOrbit.OrbitOptions RotationRateOptions() { mixin(MGPC!("ParticleModuleOrbit.OrbitOptions", 172)()); }
		DistributionVector.RawDistributionVector RotationRateAmount() { mixin(MGPC!("DistributionVector.RawDistributionVector", 144)()); }
		ParticleModuleOrbit.OrbitOptions RotationOptions() { mixin(MGPC!("ParticleModuleOrbit.OrbitOptions", 140)()); }
		DistributionVector.RawDistributionVector RotationAmount() { mixin(MGPC!("DistributionVector.RawDistributionVector", 112)()); }
		ParticleModuleOrbit.OrbitOptions OffsetOptions() { mixin(MGPC!("ParticleModuleOrbit.OrbitOptions", 108)()); }
		DistributionVector.RawDistributionVector OffsetAmount() { mixin(MGPC!("DistributionVector.RawDistributionVector", 80)()); }
		ParticleModuleOrbit.EOrbitChainMode ChainMode() { mixin(MGPC!("ParticleModuleOrbit.EOrbitChainMode", 76)()); }
	}
}
