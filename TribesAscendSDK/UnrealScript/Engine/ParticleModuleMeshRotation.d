module UnrealScript.Engine.ParticleModuleMeshRotation;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleRotationBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleMeshRotation : ParticleModuleRotationBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleMeshRotation")()); }
	private static __gshared ParticleModuleMeshRotation mDefaultProperties;
	@property final static ParticleModuleMeshRotation DefaultProperties() { mixin(MGDPC!(ParticleModuleMeshRotation, "ParticleModuleMeshRotation Engine.Default__ParticleModuleMeshRotation")()); }
	@property final
	{
		@property final auto ref DistributionVector.RawDistributionVector StartRotation() { mixin(MGPC!(DistributionVector.RawDistributionVector, 72)()); }
		bool bInheritParent() { mixin(MGBPC!(100, 0x1)()); }
		bool bInheritParent(bool val) { mixin(MSBPC!(100, 0x1)()); }
	}
}
