module UnrealScript.Engine.ParticleModuleTypeDataBeam2;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleTypeDataBase;

extern(C++) interface ParticleModuleTypeDataBeam2 : ParticleModuleTypeDataBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleTypeDataBeam2")()); }
	private static __gshared ParticleModuleTypeDataBeam2 mDefaultProperties;
	@property final static ParticleModuleTypeDataBeam2 DefaultProperties() { mixin(MGDPC!(ParticleModuleTypeDataBeam2, "ParticleModuleTypeDataBeam2 Engine.Default__ParticleModuleTypeDataBeam2")()); }
	enum EBeam2Method : ubyte
	{
		PEB2M_Distance = 0,
		PEB2M_Target = 1,
		PEB2M_Branch = 2,
		PEB2M_MAX = 3,
	}
	enum EBeamTaperMethod : ubyte
	{
		PEBTM_None = 0,
		PEBTM_Full = 1,
		PEBTM_Partial = 2,
		PEBTM_MAX = 3,
	}
	struct BeamTargetData
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.ParticleModuleTypeDataBeam2.BeamTargetData")()); }
		@property final auto ref
		{
			float TargetPercentage() { mixin(MGPS!(float, 8)()); }
			ScriptName TargetName() { mixin(MGPS!(ScriptName, 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat TaperScale() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 172)()); }
			DistributionFloat.RawDistributionFloat TaperFactor() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 144)()); }
			DistributionFloat.RawDistributionFloat Distance() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 116)()); }
			ScriptName BranchParentName() { mixin(MGPC!(ScriptName, 108)()); }
			int UpVectorStepSize() { mixin(MGPC!(int, 104)()); }
			int InterpolationPoints() { mixin(MGPC!(int, 96)()); }
			float Speed() { mixin(MGPC!(float, 92)()); }
			int MaxBeamCount() { mixin(MGPC!(int, 88)()); }
			int Sheets() { mixin(MGPC!(int, 84)()); }
			float TextureTileDistance() { mixin(MGPC!(float, 80)()); }
			int TextureTile() { mixin(MGPC!(int, 76)()); }
			ParticleModuleTypeDataBeam2.EBeamTaperMethod TaperMethod() { mixin(MGPC!(ParticleModuleTypeDataBeam2.EBeamTaperMethod, 73)()); }
			ParticleModuleTypeDataBeam2.EBeam2Method BeamMethod() { mixin(MGPC!(ParticleModuleTypeDataBeam2.EBeam2Method, 72)()); }
		}
		bool RenderTessellation() { mixin(MGBPC!(100, 0x10)()); }
		bool RenderTessellation(bool val) { mixin(MSBPC!(100, 0x10)()); }
		bool RenderLines() { mixin(MGBPC!(100, 0x8)()); }
		bool RenderLines(bool val) { mixin(MSBPC!(100, 0x8)()); }
		bool RenderDirectLine() { mixin(MGBPC!(100, 0x4)()); }
		bool RenderDirectLine(bool val) { mixin(MSBPC!(100, 0x4)()); }
		bool RenderGeometry() { mixin(MGBPC!(100, 0x2)()); }
		bool RenderGeometry(bool val) { mixin(MSBPC!(100, 0x2)()); }
		bool bAlwaysOn() { mixin(MGBPC!(100, 0x1)()); }
		bool bAlwaysOn(bool val) { mixin(MSBPC!(100, 0x1)()); }
	}
}
