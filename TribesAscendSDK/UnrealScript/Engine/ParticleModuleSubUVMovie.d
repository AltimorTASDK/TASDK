module UnrealScript.Engine.ParticleModuleSubUVMovie;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleSubUV;

extern(C++) interface ParticleModuleSubUVMovie : ParticleModuleSubUV
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleSubUVMovie")()); }
	private static __gshared ParticleModuleSubUVMovie mDefaultProperties;
	@property final static ParticleModuleSubUVMovie DefaultProperties() { mixin(MGDPC!(ParticleModuleSubUVMovie, "ParticleModuleSubUVMovie Engine.Default__ParticleModuleSubUVMovie")()); }
	@property final
	{
		auto ref
		{
			int StartingFrame() { mixin(MGPC!("int", 132)()); }
			DistributionFloat.RawDistributionFloat FrameRate() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 104)()); }
		}
		bool bUseEmitterTime() { mixin(MGBPC!(100, 0x1)()); }
		bool bUseEmitterTime(bool val) { mixin(MSBPC!(100, 0x1)()); }
	}
}
