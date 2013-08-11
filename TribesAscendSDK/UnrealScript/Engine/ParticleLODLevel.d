module UnrealScript.Engine.ParticleLODLevel;

import ScriptClasses;
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
	public @property final auto ref ScriptArray!(ParticleModule) Modules() { return *cast(ScriptArray!(ParticleModule)*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref ScriptArray!(ParticleModuleSpawnBase) SpawningModules() { return *cast(ScriptArray!(ParticleModuleSpawnBase)*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref ScriptArray!(ParticleModule) SpawnModules() { return *cast(ScriptArray!(ParticleModule)*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref ScriptArray!(ParticleModule) UpdateModules() { return *cast(ScriptArray!(ParticleModule)*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref ScriptArray!(ParticleModuleOrbit) OrbitModules() { return *cast(ScriptArray!(ParticleModuleOrbit)*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref ScriptArray!(ParticleModuleEventReceiverBase) EventReceiverModules() { return *cast(ScriptArray!(ParticleModuleEventReceiverBase)*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref int PeakActiveParticles() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref ParticleModuleEventGenerator EventGenerator() { return *cast(ParticleModuleEventGenerator*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref ParticleModuleSpawn SpawnModule() { return *cast(ParticleModuleSpawn*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref ParticleModule TypeDataModule() { return *cast(ParticleModule*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref ParticleModuleRequired RequiredModule() { return *cast(ParticleModuleRequired*)(cast(size_t)cast(void*)this + 68); }
	public @property final bool ConvertedModules() { return (*cast(uint*)(cast(size_t)cast(void*)this + 64) & 0x2) != 0; }
	public @property final bool ConvertedModules(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 64) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 64) &= ~0x2; } return val; }
	public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 64) & 0x1) != 0; }
	public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 64) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 64) &= ~0x1; } return val; }
	// WARNING: Property 'Level' has the same name as a defined type!
}
