module UnrealScript.Engine.ParticleModuleBeamTarget;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleBeamBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleBeamTarget : ParticleModuleBeamBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleBeamTarget")()); }
	private static __gshared ParticleModuleBeamTarget mDefaultProperties;
	@property final static ParticleModuleBeamTarget DefaultProperties() { mixin(MGDPC!(ParticleModuleBeamTarget, "ParticleModuleBeamTarget Engine.Default__ParticleModuleBeamTarget")()); }
	@property final
	{
		auto ref
		{
			float LockRadius() { mixin(MGPC!(float, 172)()); }
			DistributionFloat.RawDistributionFloat TargetStrength() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 144)()); }
			DistributionVector.RawDistributionVector TargetTangent() { mixin(MGPC!(DistributionVector.RawDistributionVector, 116)()); }
			DistributionVector.RawDistributionVector Target() { mixin(MGPC!(DistributionVector.RawDistributionVector, 84)()); }
			ScriptName TargetName() { mixin(MGPC!(ScriptName, 76)()); }
			ParticleModuleBeamBase.Beam2SourceTargetTangentMethod TargetTangentMethod() { mixin(MGPC!(ParticleModuleBeamBase.Beam2SourceTargetTangentMethod, 73)()); }
			ParticleModuleBeamBase.Beam2SourceTargetMethod TargetMethod() { mixin(MGPC!(ParticleModuleBeamBase.Beam2SourceTargetMethod, 72)()); }
		}
		bool bLockTargetStength() { mixin(MGBPC!(112, 0x8)()); }
		bool bLockTargetStength(bool val) { mixin(MSBPC!(112, 0x8)()); }
		bool bLockTargetTangent() { mixin(MGBPC!(112, 0x4)()); }
		bool bLockTargetTangent(bool val) { mixin(MSBPC!(112, 0x4)()); }
		bool bLockTarget() { mixin(MGBPC!(112, 0x2)()); }
		bool bLockTarget(bool val) { mixin(MSBPC!(112, 0x2)()); }
		bool bTargetAbsolute() { mixin(MGBPC!(112, 0x1)()); }
		bool bTargetAbsolute(bool val) { mixin(MSBPC!(112, 0x1)()); }
	}
}
