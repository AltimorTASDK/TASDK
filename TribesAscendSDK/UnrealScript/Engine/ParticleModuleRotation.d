module UnrealScript.Engine.ParticleModuleRotation;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleRotationBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleRotation : ParticleModuleRotationBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleRotation")); }
	@property final auto ref DistributionFloat.RawDistributionFloat StartRotation() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 72); }
}
