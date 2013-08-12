module UnrealScript.Engine.ParticleModuleSubUVSelect;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleSubUVBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleSubUVSelect : ParticleModuleSubUVBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleSubUVSelect")); }
	@property final auto ref DistributionVector.RawDistributionVector SubImageSelect() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
}
