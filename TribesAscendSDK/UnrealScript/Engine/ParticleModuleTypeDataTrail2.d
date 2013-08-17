module UnrealScript.Engine.ParticleModuleTypeDataTrail2;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleTypeDataBase;

extern(C++) interface ParticleModuleTypeDataTrail2 : ParticleModuleTypeDataBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleTypeDataTrail2")()); }
	private static __gshared ParticleModuleTypeDataTrail2 mDefaultProperties;
	@property final static ParticleModuleTypeDataTrail2 DefaultProperties() { mixin(MGDPC!(ParticleModuleTypeDataTrail2, "ParticleModuleTypeDataTrail2 Engine.Default__ParticleModuleTypeDataTrail2")()); }
	@property final
	{
		auto ref
		{
			int MaxParticleInTrailCount() { mixin(MGPC!("int", 96)()); }
			int MaxTrailCount() { mixin(MGPC!("int", 92)()); }
			int Sheets() { mixin(MGPC!("int", 88)()); }
			int TextureTile() { mixin(MGPC!("int", 84)()); }
			float TessellationStrength() { mixin(MGPC!("float", 80)()); }
			float TessellationFactorDistance() { mixin(MGPC!("float", 76)()); }
			int TessellationFactor() { mixin(MGPC!("int", 72)()); }
		}
		bool RenderTessellation() { mixin(MGBPC!(100, 0x20)()); }
		bool RenderTessellation(bool val) { mixin(MSBPC!(100, 0x20)()); }
		bool RenderLines() { mixin(MGBPC!(100, 0x10)()); }
		bool RenderLines(bool val) { mixin(MSBPC!(100, 0x10)()); }
		bool RenderDirectLine() { mixin(MGBPC!(100, 0x8)()); }
		bool RenderDirectLine(bool val) { mixin(MSBPC!(100, 0x8)()); }
		bool RenderGeometry() { mixin(MGBPC!(100, 0x4)()); }
		bool RenderGeometry(bool val) { mixin(MSBPC!(100, 0x4)()); }
		bool bClearTangents() { mixin(MGBPC!(100, 0x2)()); }
		bool bClearTangents(bool val) { mixin(MSBPC!(100, 0x2)()); }
		bool bClipSourceSegement() { mixin(MGBPC!(100, 0x1)()); }
		bool bClipSourceSegement(bool val) { mixin(MSBPC!(100, 0x1)()); }
	}
}
