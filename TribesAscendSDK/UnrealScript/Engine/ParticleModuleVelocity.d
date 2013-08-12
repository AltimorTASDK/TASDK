module UnrealScript.Engine.ParticleModuleVelocity;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleVelocityBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleVelocity : ParticleModuleVelocityBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleVelocity")); }
	@property final auto ref
	{
		DistributionFloat.RawDistributionFloat StartVelocityRadial() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 104); }
		DistributionVector.RawDistributionVector StartVelocity() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 76); }
	}
}
