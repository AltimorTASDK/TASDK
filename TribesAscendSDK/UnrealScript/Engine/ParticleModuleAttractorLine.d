module UnrealScript.Engine.ParticleModuleAttractorLine;

import ScriptClasses;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleAttractorBase;

extern(C++) interface ParticleModuleAttractorLine : ParticleModuleAttractorBase
{
	public @property final auto ref DistributionFloat.RawDistributionFloat Strength() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref DistributionFloat.RawDistributionFloat Range() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref Vector EndPoint1() { return *cast(Vector*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref Vector EndPoint0() { return *cast(Vector*)(cast(size_t)cast(void*)this + 72); }
}
