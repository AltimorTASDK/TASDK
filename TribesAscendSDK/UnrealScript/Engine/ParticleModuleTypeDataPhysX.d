module UnrealScript.Engine.ParticleModuleTypeDataPhysX;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleTypeDataBase;
import UnrealScript.Engine.PhysXParticleSystem;

extern(C++) interface ParticleModuleTypeDataPhysX : ParticleModuleTypeDataBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleTypeDataPhysX")); }
	struct PhysXEmitterVerticalLodProperties
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ParticleModuleTypeDataPhysX.PhysXEmitterVerticalLodProperties")); }
		@property final auto ref
		{
			float RelativeFadeoutTime() { return *cast(float*)(cast(size_t)&this + 12); }
			float SpawnLodRateVsLifeBias() { return *cast(float*)(cast(size_t)&this + 8); }
			float WeightForSpawnLod() { return *cast(float*)(cast(size_t)&this + 4); }
			float WeightForFifo() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ParticleModuleTypeDataPhysX.PhysXEmitterVerticalLodProperties VerticalLod() { return *cast(ParticleModuleTypeDataPhysX.PhysXEmitterVerticalLodProperties*)(cast(size_t)cast(void*)this + 76); }
		PhysXParticleSystem PhysXParSys() { return *cast(PhysXParticleSystem*)(cast(size_t)cast(void*)this + 72); }
	}
}
