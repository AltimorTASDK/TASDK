module UnrealScript.Engine.ParticleModuleUberLTISIVCLIL;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleUberBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleUberLTISIVCLIL : ParticleModuleUberBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleUberLTISIVCLIL")); }
	@property final auto ref
	{
		DistributionVector.RawDistributionVector StartLocation() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 252); }
		DistributionFloat.RawDistributionFloat AlphaOverLife() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 224); }
		DistributionVector.RawDistributionVector ColorOverLife() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 196); }
		DistributionFloat.RawDistributionFloat StartVelocityRadial() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 168); }
		DistributionVector.RawDistributionVector StartVelocity() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 140); }
		DistributionVector.RawDistributionVector StartSize() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 112); }
		DistributionFloat.RawDistributionFloat Lifetime() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 84); }
	}
}
