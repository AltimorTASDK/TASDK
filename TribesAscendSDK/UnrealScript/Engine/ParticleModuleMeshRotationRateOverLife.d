module UnrealScript.Engine.ParticleModuleMeshRotationRateOverLife;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleRotationRateBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleMeshRotationRateOverLife : ParticleModuleRotationRateBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleMeshRotationRateOverLife")()); }
	private static __gshared ParticleModuleMeshRotationRateOverLife mDefaultProperties;
	@property final static ParticleModuleMeshRotationRateOverLife DefaultProperties() { mixin(MGDPC!(ParticleModuleMeshRotationRateOverLife, "ParticleModuleMeshRotationRateOverLife Engine.Default__ParticleModuleMeshRotationRateOverLife")()); }
	@property final
	{
		@property final auto ref DistributionVector.RawDistributionVector RotRate() { mixin(MGPC!("DistributionVector.RawDistributionVector", 72)()); }
		bool bScaleRotRate() { mixin(MGBPC!(100, 0x1)()); }
		bool bScaleRotRate(bool val) { mixin(MSBPC!(100, 0x1)()); }
	}
}
