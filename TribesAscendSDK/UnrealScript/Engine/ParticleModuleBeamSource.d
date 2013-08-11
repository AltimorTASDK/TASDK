module UnrealScript.Engine.ParticleModuleBeamSource;

import ScriptClasses;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleBeamBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleBeamSource : ParticleModuleBeamBase
{
	public @property final auto ref DistributionFloat.RawDistributionFloat SourceStrength() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref DistributionVector.RawDistributionVector SourceTangent() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref DistributionVector.RawDistributionVector Source() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 88); }
	public @property final bool bLockSourceStength() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x8) != 0; }
	public @property final bool bLockSourceStength(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x8; } return val; }
	public @property final bool bLockSourceTangent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x4) != 0; }
	public @property final bool bLockSourceTangent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x4; } return val; }
	public @property final bool bLockSource() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x2) != 0; }
	public @property final bool bLockSource(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x2; } return val; }
	public @property final bool bSourceAbsolute() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x1) != 0; }
	public @property final bool bSourceAbsolute(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x1; } return val; }
	public @property final auto ref ScriptName SourceName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref ParticleModuleBeamBase.Beam2SourceTargetTangentMethod SourceTangentMethod() { return *cast(ParticleModuleBeamBase.Beam2SourceTargetTangentMethod*)(cast(size_t)cast(void*)this + 73); }
	public @property final auto ref ParticleModuleBeamBase.Beam2SourceTargetMethod SourceMethod() { return *cast(ParticleModuleBeamBase.Beam2SourceTargetMethod*)(cast(size_t)cast(void*)this + 72); }
}
