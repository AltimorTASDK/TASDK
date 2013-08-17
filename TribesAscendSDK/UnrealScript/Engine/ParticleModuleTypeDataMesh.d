module UnrealScript.Engine.ParticleModuleTypeDataMesh;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleOrientationAxisLock;
import UnrealScript.Engine.ParticleModuleTypeDataBase;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface ParticleModuleTypeDataMesh : ParticleModuleTypeDataBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleTypeDataMesh")()); }
	private static __gshared ParticleModuleTypeDataMesh mDefaultProperties;
	@property final static ParticleModuleTypeDataMesh DefaultProperties() { mixin(MGDPC!(ParticleModuleTypeDataMesh, "ParticleModuleTypeDataMesh Engine.Default__ParticleModuleTypeDataMesh")()); }
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
			float Yaw() { mixin(MGPC!(float, 92)()); }
			float Roll() { mixin(MGPC!(float, 88)()); }
			float Pitch() { mixin(MGPC!(float, 84)()); }
			ParticleModuleTypeDataMesh.EMeshCameraFacingOptions CameraFacingOption() { mixin(MGPC!(ParticleModuleTypeDataMesh.EMeshCameraFacingOptions, 83)()); }
			ParticleModuleTypeDataMesh.EMeshCameraFacingUpAxis CameraFacingUpAxisOption() { mixin(MGPC!(ParticleModuleTypeDataMesh.EMeshCameraFacingUpAxis, 82)()); }
			ParticleModuleOrientationAxisLock.EParticleAxisLock AxisLockOption() { mixin(MGPC!(ParticleModuleOrientationAxisLock.EParticleAxisLock, 81)()); }
			ParticleModuleTypeDataMesh.EMeshScreenAlignment MeshAlignment() { mixin(MGPC!(ParticleModuleTypeDataMesh.EMeshScreenAlignment, 80)()); }
			StaticMesh Mesh() { mixin(MGPC!(StaticMesh, 72)()); }
		}
		bool bApplyParticleRotationAsSpin() { mixin(MGBPC!(76, 0x20)()); }
		bool bApplyParticleRotationAsSpin(bool val) { mixin(MSBPC!(76, 0x20)()); }
		bool bCameraFacing() { mixin(MGBPC!(76, 0x10)()); }
		bool bCameraFacing(bool val) { mixin(MSBPC!(76, 0x10)()); }
		bool bOverrideMaterial() { mixin(MGBPC!(76, 0x8)()); }
		bool bOverrideMaterial(bool val) { mixin(MSBPC!(76, 0x8)()); }
		bool bAllowMotionBlur() { mixin(MGBPC!(76, 0x4)()); }
		bool bAllowMotionBlur(bool val) { mixin(MSBPC!(76, 0x4)()); }
		bool DoCollisions() { mixin(MGBPC!(76, 0x2)()); }
		bool DoCollisions(bool val) { mixin(MSBPC!(76, 0x2)()); }
		bool CastShadows() { mixin(MGBPC!(76, 0x1)()); }
		bool CastShadows(bool val) { mixin(MSBPC!(76, 0x1)()); }
	}
}
