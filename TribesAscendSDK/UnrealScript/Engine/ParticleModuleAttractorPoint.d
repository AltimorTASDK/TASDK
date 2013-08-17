module UnrealScript.Engine.ParticleModuleAttractorPoint;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;
import UnrealScript.Engine.ParticleModuleAttractorBase;

extern(C++) interface ParticleModuleAttractorPoint : ParticleModuleAttractorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleAttractorPoint")()); }
	private static __gshared ParticleModuleAttractorPoint mDefaultProperties;
	@property final static ParticleModuleAttractorPoint DefaultProperties() { mixin(MGDPC!(ParticleModuleAttractorPoint, "ParticleModuleAttractorPoint Engine.Default__ParticleModuleAttractorPoint")()); }
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat Strength() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 128)()); }
			DistributionFloat.RawDistributionFloat Range() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 100)()); }
			DistributionVector.RawDistributionVector Position() { mixin(MGPC!("DistributionVector.RawDistributionVector", 72)()); }
		}
		bool bUseWorldSpacePosition() { mixin(MGBPC!(156, 0x8)()); }
		bool bUseWorldSpacePosition(bool val) { mixin(MSBPC!(156, 0x8)()); }
		bool bOverrideVelocity() { mixin(MGBPC!(156, 0x4)()); }
		bool bOverrideVelocity(bool val) { mixin(MSBPC!(156, 0x4)()); }
		bool bAffectBaseVelocity() { mixin(MGBPC!(156, 0x2)()); }
		bool bAffectBaseVelocity(bool val) { mixin(MSBPC!(156, 0x2)()); }
		bool StrengthByDistance() { mixin(MGBPC!(156, 0x1)()); }
		bool StrengthByDistance(bool val) { mixin(MSBPC!(156, 0x1)()); }
	}
}
