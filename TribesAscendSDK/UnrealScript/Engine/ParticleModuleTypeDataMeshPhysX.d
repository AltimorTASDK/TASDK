module UnrealScript.Engine.ParticleModuleTypeDataMeshPhysX;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleTypeDataPhysX;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleModuleTypeDataMesh;
import UnrealScript.Engine.PhysXParticleSystem;

extern(C++) interface ParticleModuleTypeDataMeshPhysX : ParticleModuleTypeDataMesh
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleTypeDataMeshPhysX")()); }
	private static __gshared ParticleModuleTypeDataMeshPhysX mDefaultProperties;
	@property final static ParticleModuleTypeDataMeshPhysX DefaultProperties() { mixin(MGDPC!(ParticleModuleTypeDataMeshPhysX, "ParticleModuleTypeDataMeshPhysX Engine.Default__ParticleModuleTypeDataMeshPhysX")()); }
	enum EPhysXMeshRotationMethod : ubyte
	{
		PMRM_Disabled = 0,
		PMRM_Spherical = 1,
		PMRM_Box = 2,
		PMRM_LongBox = 3,
		PMRM_FlatBox = 4,
		PMRM_Velocity = 5,
		PMRM_MAX = 6,
	}
	@property final auto ref
	{
		ParticleModuleTypeDataPhysX.PhysXEmitterVerticalLodProperties VerticalLod() { mixin(MGPC!(ParticleModuleTypeDataPhysX.PhysXEmitterVerticalLodProperties, 112)()); }
		UObject.Pointer RenderInstance() { mixin(MGPC!(UObject.Pointer, 108)()); }
		float FluidRotationCoefficient() { mixin(MGPC!(float, 104)()); }
		ParticleModuleTypeDataMeshPhysX.EPhysXMeshRotationMethod PhysXRotationMethod() { mixin(MGPC!(ParticleModuleTypeDataMeshPhysX.EPhysXMeshRotationMethod, 100)()); }
		PhysXParticleSystem PhysXParSys() { mixin(MGPC!(PhysXParticleSystem, 96)()); }
	}
}
