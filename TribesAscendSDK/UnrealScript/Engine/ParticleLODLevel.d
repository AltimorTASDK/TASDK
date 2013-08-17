module UnrealScript.Engine.ParticleLODLevel;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleOrbit;
import UnrealScript.Engine.ParticleModuleEventReceiverBase;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleModuleSpawn;
import UnrealScript.Engine.ParticleModuleRequired;
import UnrealScript.Engine.ParticleModule;
import UnrealScript.Engine.ParticleModuleSpawnBase;
import UnrealScript.Engine.ParticleModuleEventGenerator;

extern(C++) interface ParticleLODLevel : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleLODLevel")()); }
	private static __gshared ParticleLODLevel mDefaultProperties;
	@property final static ParticleLODLevel DefaultProperties() { mixin(MGDPC!(ParticleLODLevel, "ParticleLODLevel Engine.Default__ParticleLODLevel")()); }
	@property final
	{
		auto ref
		{
			ScriptArray!(ParticleModule) Modules() { mixin(MGPC!(ScriptArray!(ParticleModule), 72)()); }
			ScriptArray!(ParticleModuleSpawnBase) SpawningModules() { mixin(MGPC!(ScriptArray!(ParticleModuleSpawnBase), 96)()); }
			ScriptArray!(ParticleModule) SpawnModules() { mixin(MGPC!(ScriptArray!(ParticleModule), 108)()); }
			ScriptArray!(ParticleModule) UpdateModules() { mixin(MGPC!(ScriptArray!(ParticleModule), 120)()); }
			ScriptArray!(ParticleModuleOrbit) OrbitModules() { mixin(MGPC!(ScriptArray!(ParticleModuleOrbit), 132)()); }
			ScriptArray!(ParticleModuleEventReceiverBase) EventReceiverModules() { mixin(MGPC!(ScriptArray!(ParticleModuleEventReceiverBase), 144)()); }
			int PeakActiveParticles() { mixin(MGPC!(int, 156)()); }
			ParticleModuleEventGenerator EventGenerator() { mixin(MGPC!(ParticleModuleEventGenerator, 92)()); }
			ParticleModuleSpawn SpawnModule() { mixin(MGPC!(ParticleModuleSpawn, 88)()); }
			ParticleModule TypeDataModule() { mixin(MGPC!(ParticleModule, 84)()); }
			ParticleModuleRequired RequiredModule() { mixin(MGPC!(ParticleModuleRequired, 68)()); }
			// WARNING: Property 'Level' has the same name as a defined type!
		}
		bool ConvertedModules() { mixin(MGBPC!(64, 0x2)()); }
		bool ConvertedModules(bool val) { mixin(MSBPC!(64, 0x2)()); }
		bool bEnabled() { mixin(MGBPC!(64, 0x1)()); }
		bool bEnabled(bool val) { mixin(MSBPC!(64, 0x1)()); }
	}
}
