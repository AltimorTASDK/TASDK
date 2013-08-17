module UnrealScript.Engine.ParticleModuleLocationPrimitiveSphere;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleLocationPrimitiveBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleLocationPrimitiveSphere : ParticleModuleLocationPrimitiveBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleLocationPrimitiveSphere")()); }
	private static __gshared ParticleModuleLocationPrimitiveSphere mDefaultProperties;
	@property final static ParticleModuleLocationPrimitiveSphere DefaultProperties() { mixin(MGDPC!(ParticleModuleLocationPrimitiveSphere, "ParticleModuleLocationPrimitiveSphere Engine.Default__ParticleModuleLocationPrimitiveSphere")()); }
	@property final auto ref DistributionFloat.RawDistributionFloat StartRadius() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 132)()); }
}
