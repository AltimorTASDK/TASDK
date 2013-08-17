module UnrealScript.Engine.ParticleModuleKillBox;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleKillBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleKillBox : ParticleModuleKillBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleKillBox")()); }
	private static __gshared ParticleModuleKillBox mDefaultProperties;
	@property final static ParticleModuleKillBox DefaultProperties() { mixin(MGDPC!(ParticleModuleKillBox, "ParticleModuleKillBox Engine.Default__ParticleModuleKillBox")()); }
	@property final
	{
		auto ref
		{
			DistributionVector.RawDistributionVector UpperRightCorner() { mixin(MGPC!(DistributionVector.RawDistributionVector, 100)()); }
			DistributionVector.RawDistributionVector LowerLeftCorner() { mixin(MGPC!(DistributionVector.RawDistributionVector, 72)()); }
		}
		bool bKillInside() { mixin(MGBPC!(128, 0x2)()); }
		bool bKillInside(bool val) { mixin(MSBPC!(128, 0x2)()); }
		bool bAbsolute() { mixin(MGBPC!(128, 0x1)()); }
		bool bAbsolute(bool val) { mixin(MSBPC!(128, 0x1)()); }
	}
}
