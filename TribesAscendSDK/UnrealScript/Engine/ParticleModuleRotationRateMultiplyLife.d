module UnrealScript.Engine.ParticleModuleRotationRateMultiplyLife;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleRotationRateBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleRotationRateMultiplyLife : ParticleModuleRotationRateBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleRotationRateMultiplyLife")); }
	@property final auto ref DistributionFloat.RawDistributionFloat LifeMultiplier() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 72); }
}
