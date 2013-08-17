module UnrealScript.Engine.ParticleModuleBeamSource;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleBeamBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleBeamSource : ParticleModuleBeamBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleBeamSource")()); }
	private static __gshared ParticleModuleBeamSource mDefaultProperties;
	@property final static ParticleModuleBeamSource DefaultProperties() { mixin(MGDPC!(ParticleModuleBeamSource, "ParticleModuleBeamSource Engine.Default__ParticleModuleBeamSource")()); }
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat SourceStrength() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 144)()); }
			DistributionVector.RawDistributionVector SourceTangent() { mixin(MGPC!(DistributionVector.RawDistributionVector, 116)()); }
			DistributionVector.RawDistributionVector Source() { mixin(MGPC!(DistributionVector.RawDistributionVector, 88)()); }
			ScriptName SourceName() { mixin(MGPC!(ScriptName, 76)()); }
			ParticleModuleBeamBase.Beam2SourceTargetTangentMethod SourceTangentMethod() { mixin(MGPC!(ParticleModuleBeamBase.Beam2SourceTargetTangentMethod, 73)()); }
			ParticleModuleBeamBase.Beam2SourceTargetMethod SourceMethod() { mixin(MGPC!(ParticleModuleBeamBase.Beam2SourceTargetMethod, 72)()); }
		}
		bool bLockSourceStength() { mixin(MGBPC!(84, 0x8)()); }
		bool bLockSourceStength(bool val) { mixin(MSBPC!(84, 0x8)()); }
		bool bLockSourceTangent() { mixin(MGBPC!(84, 0x4)()); }
		bool bLockSourceTangent(bool val) { mixin(MSBPC!(84, 0x4)()); }
		bool bLockSource() { mixin(MGBPC!(84, 0x2)()); }
		bool bLockSource(bool val) { mixin(MSBPC!(84, 0x2)()); }
		bool bSourceAbsolute() { mixin(MGBPC!(84, 0x1)()); }
		bool bSourceAbsolute(bool val) { mixin(MSBPC!(84, 0x1)()); }
	}
}
