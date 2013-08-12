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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleLODLevel")); }
	private static __gshared ParticleLODLevel mDefaultProperties;
	@property final static ParticleLODLevel DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleLODLevel)("ParticleLODLevel Engine.Default__ParticleLODLevel")); }
	@property final
	{
		auto ref
		{
			ScriptArray!(ParticleModule) Modules() { return *cast(ScriptArray!(ParticleModule)*)(cast(size_t)cast(void*)this + 72); }
			ScriptArray!(ParticleModuleSpawnBase) SpawningModules() { return *cast(ScriptArray!(ParticleModuleSpawnBase)*)(cast(size_t)cast(void*)this + 96); }
			ScriptArray!(ParticleModule) SpawnModules() { return *cast(ScriptArray!(ParticleModule)*)(cast(size_t)cast(void*)this + 108); }
			ScriptArray!(ParticleModule) UpdateModules() { return *cast(ScriptArray!(ParticleModule)*)(cast(size_t)cast(void*)this + 120); }
			ScriptArray!(ParticleModuleOrbit) OrbitModules() { return *cast(ScriptArray!(ParticleModuleOrbit)*)(cast(size_t)cast(void*)this + 132); }
			ScriptArray!(ParticleModuleEventReceiverBase) EventReceiverModules() { return *cast(ScriptArray!(ParticleModuleEventReceiverBase)*)(cast(size_t)cast(void*)this + 144); }
			int PeakActiveParticles() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
			ParticleModuleEventGenerator EventGenerator() { return *cast(ParticleModuleEventGenerator*)(cast(size_t)cast(void*)this + 92); }
			ParticleModuleSpawn SpawnModule() { return *cast(ParticleModuleSpawn*)(cast(size_t)cast(void*)this + 88); }
			ParticleModule TypeDataModule() { return *cast(ParticleModule*)(cast(size_t)cast(void*)this + 84); }
			ParticleModuleRequired RequiredModule() { return *cast(ParticleModuleRequired*)(cast(size_t)cast(void*)this + 68); }
			// WARNING: Property 'Level' has the same name as a defined type!
		}
		bool ConvertedModules() { return (*cast(uint*)(cast(size_t)cast(void*)this + 64) & 0x2) != 0; }
		bool ConvertedModules(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 64) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 64) &= ~0x2; } return val; }
		bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 64) & 0x1) != 0; }
		bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 64) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 64) &= ~0x1; } return val; }
	}
}
