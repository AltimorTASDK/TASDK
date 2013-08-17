module UnrealScript.Engine.ParticleModuleSizeScaleByTime;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleSizeBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleSizeScaleByTime : ParticleModuleSizeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleSizeScaleByTime")()); }
	private static __gshared ParticleModuleSizeScaleByTime mDefaultProperties;
	@property final static ParticleModuleSizeScaleByTime DefaultProperties() { mixin(MGDPC!(ParticleModuleSizeScaleByTime, "ParticleModuleSizeScaleByTime Engine.Default__ParticleModuleSizeScaleByTime")()); }
	@property final
	{
		@property final auto ref DistributionVector.RawDistributionVector SizeScaleByTime() { mixin(MGPC!("DistributionVector.RawDistributionVector", 72)()); }
		bool bEnableZ() { mixin(MGBPC!(100, 0x4)()); }
		bool bEnableZ(bool val) { mixin(MSBPC!(100, 0x4)()); }
		bool bEnableY() { mixin(MGBPC!(100, 0x2)()); }
		bool bEnableY(bool val) { mixin(MSBPC!(100, 0x2)()); }
		bool bEnableX() { mixin(MGBPC!(100, 0x1)()); }
		bool bEnableX(bool val) { mixin(MSBPC!(100, 0x1)()); }
	}
}
