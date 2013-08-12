module UnrealScript.Engine.ParticleModuleMeshRotationRateMultiplyLife;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleRotationRateBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleMeshRotationRateMultiplyLife : ParticleModuleRotationRateBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleMeshRotationRateMultiplyLife")); }
	private static __gshared ParticleModuleMeshRotationRateMultiplyLife mDefaultProperties;
	@property final static ParticleModuleMeshRotationRateMultiplyLife DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleMeshRotationRateMultiplyLife)("ParticleModuleMeshRotationRateMultiplyLife Engine.Default__ParticleModuleMeshRotationRateMultiplyLife")); }
	@property final auto ref DistributionVector.RawDistributionVector LifeMultiplier() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
}
