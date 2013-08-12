module UnrealScript.Engine.ParticleModuleTypeDataMesh;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleOrientationAxisLock;
import UnrealScript.Engine.ParticleModuleTypeDataBase;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface ParticleModuleTypeDataMesh : ParticleModuleTypeDataBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleTypeDataMesh")); }
	private static __gshared ParticleModuleTypeDataMesh mDefaultProperties;
	@property final static ParticleModuleTypeDataMesh DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleTypeDataMesh)("ParticleModuleTypeDataMesh Engine.Default__ParticleModuleTypeDataMesh")); }
	enum EMeshCameraFacingOptions : ubyte
	{
		XAxisFacing_NoUp = 0,
		XAxisFacing_ZUp = 1,
		XAxisFacing_NegativeZUp = 2,
		XAxisFacing_YUp = 3,
		XAxisFacing_NegativeYUp = 4,
		LockedAxis_ZAxisFacing = 5,
		LockedAxis_NegativeZAxisFacing = 6,
		LockedAxis_YAxisFacing = 7,
		LockedAxis_NegativeYAxisFacing = 8,
		VelocityAligned_ZAxisFacing = 9,
		VelocityAligned_NegativeZAxisFacing = 10,
		VelocityAligned_YAxisFacing = 11,
		VelocityAligned_NegativeYAxisFacing = 12,
		EMeshCameraFacingOptions_MAX = 13,
	}
	enum EMeshCameraFacingUpAxis : ubyte
	{
		CameraFacing_NoneUP = 0,
		CameraFacing_ZUp = 1,
		CameraFacing_NegativeZUp = 2,
		CameraFacing_YUp = 3,
		CameraFacing_NegativeYUp = 4,
		CameraFacing_MAX = 5,
	}
	enum EMeshScreenAlignment : ubyte
	{
		PSMA_MeshFaceCameraWithRoll = 0,
		PSMA_MeshFaceCameraWithSpin = 1,
		PSMA_MeshFaceCameraWithLockedAxis = 2,
		PSMA_MAX = 3,
	}
	@property final
	{
		auto ref
		{
			float Yaw() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
			float Roll() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
			float Pitch() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
			ParticleModuleTypeDataMesh.EMeshCameraFacingOptions CameraFacingOption() { return *cast(ParticleModuleTypeDataMesh.EMeshCameraFacingOptions*)(cast(size_t)cast(void*)this + 83); }
			ParticleModuleTypeDataMesh.EMeshCameraFacingUpAxis CameraFacingUpAxisOption() { return *cast(ParticleModuleTypeDataMesh.EMeshCameraFacingUpAxis*)(cast(size_t)cast(void*)this + 82); }
			ParticleModuleOrientationAxisLock.EParticleAxisLock AxisLockOption() { return *cast(ParticleModuleOrientationAxisLock.EParticleAxisLock*)(cast(size_t)cast(void*)this + 81); }
			ParticleModuleTypeDataMesh.EMeshScreenAlignment MeshAlignment() { return *cast(ParticleModuleTypeDataMesh.EMeshScreenAlignment*)(cast(size_t)cast(void*)this + 80); }
			StaticMesh Mesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 72); }
		}
		bool bApplyParticleRotationAsSpin() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x20) != 0; }
		bool bApplyParticleRotationAsSpin(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x20; } return val; }
		bool bCameraFacing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x10) != 0; }
		bool bCameraFacing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x10; } return val; }
		bool bOverrideMaterial() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x8) != 0; }
		bool bOverrideMaterial(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x8; } return val; }
		bool bAllowMotionBlur() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x4) != 0; }
		bool bAllowMotionBlur(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x4; } return val; }
		bool DoCollisions() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x2) != 0; }
		bool DoCollisions(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x2; } return val; }
		bool CastShadows() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x1) != 0; }
		bool CastShadows(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x1; } return val; }
	}
}
