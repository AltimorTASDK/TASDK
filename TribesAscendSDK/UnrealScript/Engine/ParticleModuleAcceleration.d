module UnrealScript.Engine.ParticleModuleAcceleration;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.DistributionVector;
import UnrealScript.Engine.ParticleModuleAccelerationBase;

extern(C++) interface ParticleModuleAcceleration : ParticleModuleAccelerationBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleAcceleration")()); }
	private static __gshared ParticleModuleAcceleration mDefaultProperties;
	@property final static ParticleModuleAcceleration DefaultProperties() { mixin(MGDPC!(ParticleModuleAcceleration, "ParticleModuleAcceleration Engine.Default__ParticleModuleAcceleration")()); }
	@property final
	{
		@property final auto ref DistributionVector.RawDistributionVector Acceleration() { mixin(MGPC!(DistributionVector.RawDistributionVector, 76)()); }
		bool bApplyOwnerScale() { mixin(MGBPC!(104, 0x1)()); }
		bool bApplyOwnerScale(bool val) { mixin(MSBPC!(104, 0x1)()); }
	}
}
