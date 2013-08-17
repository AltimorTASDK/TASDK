module UnrealScript.Engine.ParticleModuleTypeDataTrail;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleTypeDataBase;

extern(C++) interface ParticleModuleTypeDataTrail : ParticleModuleTypeDataBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleTypeDataTrail")); }
	private static __gshared ParticleModuleTypeDataTrail mDefaultProperties;
	@property final static ParticleModuleTypeDataTrail DefaultProperties() { mixin(MGDPC("ParticleModuleTypeDataTrail", "ParticleModuleTypeDataTrail Engine.Default__ParticleModuleTypeDataTrail")); }
	@property final
	{
		auto ref
		{
			Vector SpawnDistance() { mixin(MGPC("Vector", 108)); }
			DistributionFloat.RawDistributionFloat Tension() { mixin(MGPC("DistributionFloat.RawDistributionFloat", 80)); }
			int TessellationFactor() { mixin(MGPC("int", 76)); }
		}
		bool SpawnByDistance() { mixin(MGBPC(72, 0x10)); }
		bool SpawnByDistance(bool val) { mixin(MSBPC(72, 0x10)); }
		bool Tapered() { mixin(MGBPC(72, 0x8)); }
		bool Tapered(bool val) { mixin(MSBPC(72, 0x8)); }
		bool RenderTessellation() { mixin(MGBPC(72, 0x4)); }
		bool RenderTessellation(bool val) { mixin(MSBPC(72, 0x4)); }
		bool RenderLines() { mixin(MGBPC(72, 0x2)); }
		bool RenderLines(bool val) { mixin(MSBPC(72, 0x2)); }
		bool RenderGeometry() { mixin(MGBPC(72, 0x1)); }
		bool RenderGeometry(bool val) { mixin(MSBPC(72, 0x1)); }
	}
}
