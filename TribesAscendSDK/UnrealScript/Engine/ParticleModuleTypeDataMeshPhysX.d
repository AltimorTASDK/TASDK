module UnrealScript.Engine.ParticleModuleTypeDataMeshPhysX;

import UnrealScript.Engine.ParticleModuleTypeDataPhysX;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleModuleTypeDataMesh;
import UnrealScript.Engine.PhysXParticleSystem;

extern(C++) interface ParticleModuleTypeDataMeshPhysX : ParticleModuleTypeDataMesh
{
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
	public @property final auto ref ParticleModuleTypeDataPhysX.PhysXEmitterVerticalLodProperties VerticalLod() { return *cast(ParticleModuleTypeDataPhysX.PhysXEmitterVerticalLodProperties*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref UObject.Pointer RenderInstance() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref float FluidRotationCoefficient() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref ParticleModuleTypeDataMeshPhysX.EPhysXMeshRotationMethod PhysXRotationMethod() { return *cast(ParticleModuleTypeDataMeshPhysX.EPhysXMeshRotationMethod*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref PhysXParticleSystem PhysXParSys() { return *cast(PhysXParticleSystem*)(cast(size_t)cast(void*)this + 96); }
}
