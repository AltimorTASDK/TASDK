module UnrealScript.Engine.ParticleModuleTypeDataMeshPhysX;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleTypeDataPhysX;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleModuleTypeDataMesh;
import UnrealScript.Engine.PhysXParticleSystem;

extern(C++) interface ParticleModuleTypeDataMeshPhysX : ParticleModuleTypeDataMesh
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleTypeDataMeshPhysX")); }
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
		ParticleModuleTypeDataPhysX.PhysXEmitterVerticalLodProperties VerticalLod() { return *cast(ParticleModuleTypeDataPhysX.PhysXEmitterVerticalLodProperties*)(cast(size_t)cast(void*)this + 112); }
		UObject.Pointer RenderInstance() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 108); }
		float FluidRotationCoefficient() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
		ParticleModuleTypeDataMeshPhysX.EPhysXMeshRotationMethod PhysXRotationMethod() { return *cast(ParticleModuleTypeDataMeshPhysX.EPhysXMeshRotationMethod*)(cast(size_t)cast(void*)this + 100); }
		PhysXParticleSystem PhysXParSys() { return *cast(PhysXParticleSystem*)(cast(size_t)cast(void*)this + 96); }
	}
}
