module UnrealScript.Engine.ParticleModuleKillHeight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleKillBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleKillHeight : ParticleModuleKillBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleKillHeight")()); }
	private static __gshared ParticleModuleKillHeight mDefaultProperties;
	@property final static ParticleModuleKillHeight DefaultProperties() { mixin(MGDPC!(ParticleModuleKillHeight, "ParticleModuleKillHeight Engine.Default__ParticleModuleKillHeight")()); }
	@property final
	{
		@property final auto ref DistributionFloat.RawDistributionFloat Height() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 72)()); }
		bool bApplyPSysScale() { mixin(MGBPC!(100, 0x4)()); }
		bool bApplyPSysScale(bool val) { mixin(MSBPC!(100, 0x4)()); }
		bool bFloor() { mixin(MGBPC!(100, 0x2)()); }
		bool bFloor(bool val) { mixin(MSBPC!(100, 0x2)()); }
		bool bAbsolute() { mixin(MGBPC!(100, 0x1)()); }
		bool bAbsolute(bool val) { mixin(MSBPC!(100, 0x1)()); }
	}
}
