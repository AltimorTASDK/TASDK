module UnrealScript.Engine.ParticleModuleTypeDataRibbon;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleTypeDataBase;

extern(C++) interface ParticleModuleTypeDataRibbon : ParticleModuleTypeDataBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleTypeDataRibbon")()); }
	private static __gshared ParticleModuleTypeDataRibbon mDefaultProperties;
	@property final static ParticleModuleTypeDataRibbon DefaultProperties() { mixin(MGDPC!(ParticleModuleTypeDataRibbon, "ParticleModuleTypeDataRibbon Engine.Default__ParticleModuleTypeDataRibbon")()); }
	enum ETrailsRenderAxisOption : ubyte
	{
		Trails_CameraUp = 0,
		Trails_SourceUp = 1,
		Trails_WorldUp = 2,
		Trails_MAX = 3,
	}
	@property final
	{
		auto ref
		{
			float TangentTessellationScalar() { mixin(MGPC!(float, 108)()); }
			float DistanceTessellationStepSize() { mixin(MGPC!(float, 104)()); }
			float TilingDistance() { mixin(MGPC!(float, 100)()); }
			float TangentSpawningScalar() { mixin(MGPC!(float, 96)()); }
			ParticleModuleTypeDataRibbon.ETrailsRenderAxisOption RenderAxis() { mixin(MGPC!(ParticleModuleTypeDataRibbon.ETrailsRenderAxisOption, 92)()); }
			int MaxTessellationBetweenParticles() { mixin(MGPC!(int, 72)()); }
			int MaxParticleInTrailCount() { mixin(MGPC!(int, 84)()); }
			int MaxTrailCount() { mixin(MGPC!(int, 80)()); }
			int SheetsPerTrail() { mixin(MGPC!(int, 76)()); }
		}
		bool bRenderTessellation() { mixin(MGBPC!(88, 0x100)()); }
		bool bRenderTessellation(bool val) { mixin(MSBPC!(88, 0x100)()); }
		bool bRenderTangents() { mixin(MGBPC!(88, 0x80)()); }
		bool bRenderTangents(bool val) { mixin(MSBPC!(88, 0x80)()); }
		bool bRenderSpawnPoints() { mixin(MGBPC!(88, 0x40)()); }
		bool bRenderSpawnPoints(bool val) { mixin(MSBPC!(88, 0x40)()); }
		bool bRenderGeometry() { mixin(MGBPC!(88, 0x20)()); }
		bool bRenderGeometry(bool val) { mixin(MSBPC!(88, 0x20)()); }
		bool bTangentRecalculationEveryFrame() { mixin(MGBPC!(88, 0x10)()); }
		bool bTangentRecalculationEveryFrame(bool val) { mixin(MSBPC!(88, 0x10)()); }
		bool bEnablePreviousTangentRecalculation() { mixin(MGBPC!(88, 0x8)()); }
		bool bEnablePreviousTangentRecalculation(bool val) { mixin(MSBPC!(88, 0x8)()); }
		bool bClipSourceSegement() { mixin(MGBPC!(88, 0x4)()); }
		bool bClipSourceSegement(bool val) { mixin(MSBPC!(88, 0x4)()); }
		bool bDeadTrailsOnSourceLoss() { mixin(MGBPC!(88, 0x2)()); }
		bool bDeadTrailsOnSourceLoss(bool val) { mixin(MSBPC!(88, 0x2)()); }
		bool bDeadTrailsOnDeactivate() { mixin(MGBPC!(88, 0x1)()); }
		bool bDeadTrailsOnDeactivate(bool val) { mixin(MSBPC!(88, 0x1)()); }
	}
}
