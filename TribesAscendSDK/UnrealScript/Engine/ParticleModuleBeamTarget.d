module UnrealScript.Engine.ParticleModuleBeamTarget;

import ScriptClasses;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleBeamBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleBeamTarget : ParticleModuleBeamBase
{
	public @property final auto ref float LockRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref DistributionFloat.RawDistributionFloat TargetStrength() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref DistributionVector.RawDistributionVector TargetTangent() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 116); }
	public @property final bool bLockTargetStength() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x8) != 0; }
	public @property final bool bLockTargetStength(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x8; } return val; }
	public @property final bool bLockTargetTangent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x4) != 0; }
	public @property final bool bLockTargetTangent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x4; } return val; }
	public @property final bool bLockTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x2) != 0; }
	public @property final bool bLockTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x2; } return val; }
	public @property final bool bTargetAbsolute() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x1) != 0; }
	public @property final bool bTargetAbsolute(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x1; } return val; }
	public @property final auto ref DistributionVector.RawDistributionVector Target() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref ScriptName TargetName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref ParticleModuleBeamBase.Beam2SourceTargetTangentMethod TargetTangentMethod() { return *cast(ParticleModuleBeamBase.Beam2SourceTargetTangentMethod*)(cast(size_t)cast(void*)this + 73); }
	public @property final auto ref ParticleModuleBeamBase.Beam2SourceTargetMethod TargetMethod() { return *cast(ParticleModuleBeamBase.Beam2SourceTargetMethod*)(cast(size_t)cast(void*)this + 72); }
}
