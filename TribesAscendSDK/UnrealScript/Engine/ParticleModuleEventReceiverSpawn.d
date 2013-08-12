module UnrealScript.Engine.ParticleModuleEventReceiverSpawn;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleEventReceiverBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleEventReceiverSpawn : ParticleModuleEventReceiverBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleEventReceiverSpawn")); }
	private static __gshared ParticleModuleEventReceiverSpawn mDefaultProperties;
	@property final static ParticleModuleEventReceiverSpawn DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleEventReceiverSpawn)("ParticleModuleEventReceiverSpawn Engine.Default__ParticleModuleEventReceiverSpawn")); }
	@property final
	{
		auto ref
		{
			DistributionVector.RawDistributionVector InheritVelocityScale() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 116); }
			DistributionFloat.RawDistributionFloat SpawnCount() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 84); }
		}
		bool bInheritVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x4) != 0; }
		bool bInheritVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x4; } return val; }
		bool bUsePSysLocation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x2) != 0; }
		bool bUsePSysLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x2; } return val; }
		bool bUseParticleTime() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x1) != 0; }
		bool bUseParticleTime(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x1; } return val; }
	}
}
