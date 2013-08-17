module UnrealScript.Engine.ParticleModuleSizeScale;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleSizeBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleSizeScale : ParticleModuleSizeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleSizeScale")()); }
	private static __gshared ParticleModuleSizeScale mDefaultProperties;
	@property final static ParticleModuleSizeScale DefaultProperties() { mixin(MGDPC!(ParticleModuleSizeScale, "ParticleModuleSizeScale Engine.Default__ParticleModuleSizeScale")()); }
	@property final
	{
		@property final auto ref DistributionVector.RawDistributionVector SizeScale() { mixin(MGPC!(DistributionVector.RawDistributionVector, 72)()); }
		bool EnableZ() { mixin(MGBPC!(100, 0x4)()); }
		bool EnableZ(bool val) { mixin(MSBPC!(100, 0x4)()); }
		bool EnableY() { mixin(MGBPC!(100, 0x2)()); }
		bool EnableY(bool val) { mixin(MSBPC!(100, 0x2)()); }
		bool EnableX() { mixin(MGBPC!(100, 0x1)()); }
		bool EnableX(bool val) { mixin(MSBPC!(100, 0x1)()); }
	}
}
