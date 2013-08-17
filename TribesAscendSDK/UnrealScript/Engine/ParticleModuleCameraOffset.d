module UnrealScript.Engine.ParticleModuleCameraOffset;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleCameraBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleCameraOffset : ParticleModuleCameraBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleCameraOffset")()); }
	private static __gshared ParticleModuleCameraOffset mDefaultProperties;
	@property final static ParticleModuleCameraOffset DefaultProperties() { mixin(MGDPC!(ParticleModuleCameraOffset, "ParticleModuleCameraOffset Engine.Default__ParticleModuleCameraOffset")()); }
	enum EParticleCameraOffsetUpdateMethod : ubyte
	{
		EPCOUM_DirectSet = 0,
		EPCOUM_Additive = 1,
		EPCOUM_Scalar = 2,
		EPCOUM_MAX = 3,
	}
	@property final
	{
		auto ref
		{
			ParticleModuleCameraOffset.EParticleCameraOffsetUpdateMethod UpdateMethod() { mixin(MGPC!("ParticleModuleCameraOffset.EParticleCameraOffsetUpdateMethod", 104)()); }
			DistributionFloat.RawDistributionFloat CameraOffset() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 72)()); }
		}
		bool bSpawnTimeOnly() { mixin(MGBPC!(100, 0x1)()); }
		bool bSpawnTimeOnly(bool val) { mixin(MSBPC!(100, 0x1)()); }
	}
}
