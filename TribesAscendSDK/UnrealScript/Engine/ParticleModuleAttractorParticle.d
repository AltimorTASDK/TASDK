module UnrealScript.Engine.ParticleModuleAttractorParticle;

import ScriptClasses;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleAttractorBase;

extern(C++) interface ParticleModuleAttractorParticle : ParticleModuleAttractorBase
{
	enum EAttractorParticleSelectionMethod : ubyte
	{
		EAPSM_Random = 0,
		EAPSM_Sequential = 1,
		EAPSM_MAX = 2,
	}
	public @property final auto ref int LastSelIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref ParticleModuleAttractorParticle.EAttractorParticleSelectionMethod SelectionMethod() { return *cast(ParticleModuleAttractorParticle.EAttractorParticleSelectionMethod*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref ScriptName EmitterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref DistributionFloat.RawDistributionFloat Strength() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 112); }
	public @property final bool bInheritSourceVel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x8) != 0; }
	public @property final bool bInheritSourceVel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x8; } return val; }
	public @property final bool bRenewSource() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x4) != 0; }
	public @property final bool bRenewSource(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x4; } return val; }
	public @property final bool bAffectBaseVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x2) != 0; }
	public @property final bool bAffectBaseVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x2; } return val; }
	public @property final bool bStrengthByDistance() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x1) != 0; }
	public @property final bool bStrengthByDistance(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x1; } return val; }
	public @property final auto ref DistributionFloat.RawDistributionFloat Range() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 80); }
}
