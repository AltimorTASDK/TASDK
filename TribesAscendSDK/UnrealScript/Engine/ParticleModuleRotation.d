module UnrealScript.Engine.ParticleModuleRotation;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleRotationBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleRotation : ParticleModuleRotationBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleRotation")()); }
	private static __gshared ParticleModuleRotation mDefaultProperties;
	@property final static ParticleModuleRotation DefaultProperties() { mixin(MGDPC!(ParticleModuleRotation, "ParticleModuleRotation Engine.Default__ParticleModuleRotation")()); }
	@property final auto ref DistributionFloat.RawDistributionFloat StartRotation() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 72)()); }
}
