module UnrealScript.Engine.ParticleModuleTrailSource;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleTrailBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleTrailSource : ParticleModuleTrailBase
{
	enum ETrail2SourceMethod : ubyte
	{
		PET2SRCM_Default = 0,
		PET2SRCM_Particle = 1,
		PET2SRCM_Actor = 2,
		PET2SRCM_MAX = 3,
	}
	public @property final auto ref ScriptArray!(Vector) SourceOffsetDefaults() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref int SourceOffsetCount() { return *cast(int*)(cast(size_t)cast(void*)this + 116); }
	public @property final bool bInheritRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x2) != 0; }
	public @property final bool bInheritRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x2; } return val; }
	public @property final bool bLockSourceStength() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x1) != 0; }
	public @property final bool bLockSourceStength(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x1; } return val; }
	public @property final auto ref DistributionFloat.RawDistributionFloat SourceStrength() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref ScriptName SourceName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref ParticleModule.EParticleSourceSelectionMethod SelectionMethod() { return *cast(ParticleModule.EParticleSourceSelectionMethod*)(cast(size_t)cast(void*)this + 73); }
	public @property final auto ref ParticleModuleTrailSource.ETrail2SourceMethod SourceMethod() { return *cast(ParticleModuleTrailSource.ETrail2SourceMethod*)(cast(size_t)cast(void*)this + 72); }
}
