module UnrealScript.Engine.ParticleModuleTypeDataBeam;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;
import UnrealScript.Engine.ParticleModuleTypeDataBase;

extern(C++) interface ParticleModuleTypeDataBeam : ParticleModuleTypeDataBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleTypeDataBeam")()); }
	private static __gshared ParticleModuleTypeDataBeam mDefaultProperties;
	@property final static ParticleModuleTypeDataBeam DefaultProperties() { mixin(MGDPC!(ParticleModuleTypeDataBeam, "ParticleModuleTypeDataBeam Engine.Default__ParticleModuleTypeDataBeam")()); }
	enum EBeamMethod : ubyte
	{
		PEBM_Distance = 0,
		PEBM_EndPoints = 1,
		PEBM_EndPoints_Interpolated = 2,
		PEBM_UserSet_EndPoints = 3,
		PEBM_UserSet_EndPoints_Interpolated = 4,
		PEBM_MAX = 5,
	}
	enum EBeamEndPointMethod : ubyte
	{
		PEBEPM_Calculated = 0,
		PEBEPM_Distribution = 1,
		PEBEPM_Distribution_Constant = 2,
		PEBEPM_MAX = 3,
	}
	@property final
	{
		auto ref
		{
			int TextureTile() { mixin(MGPC!("int", 220)()); }
			DistributionVector.RawDistributionVector EndPointDirection() { mixin(MGPC!("DistributionVector.RawDistributionVector", 192)()); }
			DistributionFloat.RawDistributionFloat TargetStrength() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 164)()); }
			DistributionFloat.RawDistributionFloat EmitterStrength() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 136)()); }
			int TessellationFactor() { mixin(MGPC!("int", 132)()); }
			DistributionVector.RawDistributionVector EndPoint() { mixin(MGPC!("DistributionVector.RawDistributionVector", 104)()); }
			DistributionFloat.RawDistributionFloat Distance() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 76)()); }
			ParticleModuleTypeDataBeam.EBeamEndPointMethod EndPointMethod() { mixin(MGPC!("ParticleModuleTypeDataBeam.EBeamEndPointMethod", 73)()); }
			ParticleModuleTypeDataBeam.EBeamMethod BeamMethod() { mixin(MGPC!("ParticleModuleTypeDataBeam.EBeamMethod", 72)()); }
		}
		bool RenderTessellation() { mixin(MGBPC!(224, 0x8)()); }
		bool RenderTessellation(bool val) { mixin(MSBPC!(224, 0x8)()); }
		bool RenderLines() { mixin(MGBPC!(224, 0x4)()); }
		bool RenderLines(bool val) { mixin(MSBPC!(224, 0x4)()); }
		bool RenderDirectLine() { mixin(MGBPC!(224, 0x2)()); }
		bool RenderDirectLine(bool val) { mixin(MSBPC!(224, 0x2)()); }
		bool RenderGeometry() { mixin(MGBPC!(224, 0x1)()); }
		bool RenderGeometry(bool val) { mixin(MSBPC!(224, 0x1)()); }
	}
}
