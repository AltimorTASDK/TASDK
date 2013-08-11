module UnrealScript.Engine.ParticleModuleEventReceiverSpawn;

import UnrealScript.Engine.ParticleModuleEventReceiverBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleEventReceiverSpawn : ParticleModuleEventReceiverBase
{
	public @property final auto ref DistributionVector.RawDistributionVector InheritVelocityScale() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 116); }
	public @property final bool bInheritVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x4) != 0; }
	public @property final bool bInheritVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x4; } return val; }
	public @property final bool bUsePSysLocation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x2) != 0; }
	public @property final bool bUsePSysLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x2; } return val; }
	public @property final bool bUseParticleTime() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x1) != 0; }
	public @property final bool bUseParticleTime(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x1; } return val; }
	public @property final auto ref DistributionFloat.RawDistributionFloat SpawnCount() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 84); }
}
