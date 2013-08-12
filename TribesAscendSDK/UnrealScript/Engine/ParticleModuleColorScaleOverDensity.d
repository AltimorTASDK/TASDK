module UnrealScript.Engine.ParticleModuleColorScaleOverDensity;

import ScriptClasses;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleColorBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleColorScaleOverDensity : ParticleModuleColorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleColorScaleOverDensity")); }
	@property final auto ref
	{
		DistributionFloat.RawDistributionFloat AlphaScaleOverDensity() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 100); }
		DistributionVector.RawDistributionVector ColorScaleOverDensity() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
	}
}
