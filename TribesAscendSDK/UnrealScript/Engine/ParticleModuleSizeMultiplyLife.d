module UnrealScript.Engine.ParticleModuleSizeMultiplyLife;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleSizeBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleSizeMultiplyLife : ParticleModuleSizeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleSizeMultiplyLife")()); }
	private static __gshared ParticleModuleSizeMultiplyLife mDefaultProperties;
	@property final static ParticleModuleSizeMultiplyLife DefaultProperties() { mixin(MGDPC!(ParticleModuleSizeMultiplyLife, "ParticleModuleSizeMultiplyLife Engine.Default__ParticleModuleSizeMultiplyLife")()); }
	@property final
	{
		@property final auto ref DistributionVector.RawDistributionVector LifeMultiplier() { mixin(MGPC!("DistributionVector.RawDistributionVector", 72)()); }
		bool MultiplyZ() { mixin(MGBPC!(100, 0x4)()); }
		bool MultiplyZ(bool val) { mixin(MSBPC!(100, 0x4)()); }
		bool MultiplyY() { mixin(MGBPC!(100, 0x2)()); }
		bool MultiplyY(bool val) { mixin(MSBPC!(100, 0x2)()); }
		bool MultiplyX() { mixin(MGBPC!(100, 0x1)()); }
		bool MultiplyX(bool val) { mixin(MSBPC!(100, 0x1)()); }
	}
}
