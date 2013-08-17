module UnrealScript.Engine.ParticleModuleTypeDataPhysX;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleTypeDataBase;
import UnrealScript.Engine.PhysXParticleSystem;

extern(C++) interface ParticleModuleTypeDataPhysX : ParticleModuleTypeDataBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleTypeDataPhysX")()); }
	private static __gshared ParticleModuleTypeDataPhysX mDefaultProperties;
	@property final static ParticleModuleTypeDataPhysX DefaultProperties() { mixin(MGDPC!(ParticleModuleTypeDataPhysX, "ParticleModuleTypeDataPhysX Engine.Default__ParticleModuleTypeDataPhysX")()); }
	struct PhysXEmitterVerticalLodProperties
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.ParticleModuleTypeDataPhysX.PhysXEmitterVerticalLodProperties")()); }
		@property final auto ref
		{
			float RelativeFadeoutTime() { mixin(MGPS!("float", 12)()); }
			float SpawnLodRateVsLifeBias() { mixin(MGPS!("float", 8)()); }
			float WeightForSpawnLod() { mixin(MGPS!("float", 4)()); }
			float WeightForFifo() { mixin(MGPS!("float", 0)()); }
		}
	}
	@property final auto ref
	{
		ParticleModuleTypeDataPhysX.PhysXEmitterVerticalLodProperties VerticalLod() { mixin(MGPC!("ParticleModuleTypeDataPhysX.PhysXEmitterVerticalLodProperties", 76)()); }
		PhysXParticleSystem PhysXParSys() { mixin(MGPC!("PhysXParticleSystem", 72)()); }
	}
}
