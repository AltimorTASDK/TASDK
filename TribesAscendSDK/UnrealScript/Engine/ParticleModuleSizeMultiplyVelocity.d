module UnrealScript.Engine.ParticleModuleSizeMultiplyVelocity;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleSizeBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleSizeMultiplyVelocity : ParticleModuleSizeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleSizeMultiplyVelocity")()); }
	private static __gshared ParticleModuleSizeMultiplyVelocity mDefaultProperties;
	@property final static ParticleModuleSizeMultiplyVelocity DefaultProperties() { mixin(MGDPC!(ParticleModuleSizeMultiplyVelocity, "ParticleModuleSizeMultiplyVelocity Engine.Default__ParticleModuleSizeMultiplyVelocity")()); }
	@property final
	{
		@property final auto ref DistributionVector.RawDistributionVector VelocityMultiplier() { mixin(MGPC!(DistributionVector.RawDistributionVector, 72)()); }
		bool MultiplyZ() { mixin(MGBPC!(100, 0x4)()); }
		bool MultiplyZ(bool val) { mixin(MSBPC!(100, 0x4)()); }
		bool MultiplyY() { mixin(MGBPC!(100, 0x2)()); }
		bool MultiplyY(bool val) { mixin(MSBPC!(100, 0x2)()); }
		bool MultiplyX() { mixin(MGBPC!(100, 0x1)()); }
		bool MultiplyX(bool val) { mixin(MSBPC!(100, 0x1)()); }
	}
}
