module UnrealScript.Engine.ParticleModuleEventReceiverSpawn;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleEventReceiverBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleEventReceiverSpawn : ParticleModuleEventReceiverBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleEventReceiverSpawn")); }
	private static __gshared ParticleModuleEventReceiverSpawn mDefaultProperties;
	@property final static ParticleModuleEventReceiverSpawn DefaultProperties() { mixin(MGDPC("ParticleModuleEventReceiverSpawn", "ParticleModuleEventReceiverSpawn Engine.Default__ParticleModuleEventReceiverSpawn")); }
	@property final
	{
		auto ref
		{
			DistributionVector.RawDistributionVector InheritVelocityScale() { mixin(MGPC("DistributionVector.RawDistributionVector", 116)); }
			DistributionFloat.RawDistributionFloat SpawnCount() { mixin(MGPC("DistributionFloat.RawDistributionFloat", 84)); }
		}
		bool bInheritVelocity() { mixin(MGBPC(112, 0x4)); }
		bool bInheritVelocity(bool val) { mixin(MSBPC(112, 0x4)); }
		bool bUsePSysLocation() { mixin(MGBPC(112, 0x2)); }
		bool bUsePSysLocation(bool val) { mixin(MSBPC(112, 0x2)); }
		bool bUseParticleTime() { mixin(MGBPC(112, 0x1)); }
		bool bUseParticleTime(bool val) { mixin(MSBPC(112, 0x1)); }
	}
}
