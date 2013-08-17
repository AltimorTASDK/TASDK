module UnrealScript.Engine.ParticleModuleTypeDataAnimTrail;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleTypeDataBase;

extern(C++) interface ParticleModuleTypeDataAnimTrail : ParticleModuleTypeDataBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleTypeDataAnimTrail")()); }
	private static __gshared ParticleModuleTypeDataAnimTrail mDefaultProperties;
	@property final static ParticleModuleTypeDataAnimTrail DefaultProperties() { mixin(MGDPC!(ParticleModuleTypeDataAnimTrail, "ParticleModuleTypeDataAnimTrail Engine.Default__ParticleModuleTypeDataAnimTrail")()); }
	@property final
	{
		auto ref
		{
			float TangentTessellationScalar() { mixin(MGPC!(float, 96)()); }
			float DistanceTessellationStepSize() { mixin(MGPC!(float, 92)()); }
			float TilingDistance() { mixin(MGPC!(float, 88)()); }
			int SheetsPerTrail() { mixin(MGPC!(int, 80)()); }
			ScriptName ControlEdgeName() { mixin(MGPC!(ScriptName, 72)()); }
		}
		bool bRenderTessellation() { mixin(MGBPC!(84, 0x80)()); }
		bool bRenderTessellation(bool val) { mixin(MSBPC!(84, 0x80)()); }
		bool bRenderTangents() { mixin(MGBPC!(84, 0x40)()); }
		bool bRenderTangents(bool val) { mixin(MSBPC!(84, 0x40)()); }
		bool bRenderSpawnPoints() { mixin(MGBPC!(84, 0x20)()); }
		bool bRenderSpawnPoints(bool val) { mixin(MSBPC!(84, 0x20)()); }
		bool bRenderGeometry() { mixin(MGBPC!(84, 0x10)()); }
		bool bRenderGeometry(bool val) { mixin(MSBPC!(84, 0x10)()); }
		bool bTangentRecalculationEveryFrame() { mixin(MGBPC!(84, 0x8)()); }
		bool bTangentRecalculationEveryFrame(bool val) { mixin(MSBPC!(84, 0x8)()); }
		bool bEnablePreviousTangentRecalculation() { mixin(MGBPC!(84, 0x4)()); }
		bool bEnablePreviousTangentRecalculation(bool val) { mixin(MSBPC!(84, 0x4)()); }
		bool bClipSourceSegement() { mixin(MGBPC!(84, 0x2)()); }
		bool bClipSourceSegement(bool val) { mixin(MSBPC!(84, 0x2)()); }
		bool bDeadTrailsOnDeactivate() { mixin(MGBPC!(84, 0x1)()); }
		bool bDeadTrailsOnDeactivate(bool val) { mixin(MSBPC!(84, 0x1)()); }
	}
}
