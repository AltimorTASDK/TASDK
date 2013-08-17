module UnrealScript.Engine.ParticleModuleTrailSource;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleTrailBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleTrailSource : ParticleModuleTrailBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleTrailSource")()); }
	private static __gshared ParticleModuleTrailSource mDefaultProperties;
	@property final static ParticleModuleTrailSource DefaultProperties() { mixin(MGDPC!(ParticleModuleTrailSource, "ParticleModuleTrailSource Engine.Default__ParticleModuleTrailSource")()); }
	enum ETrail2SourceMethod : ubyte
	{
		PET2SRCM_Default = 0,
		PET2SRCM_Particle = 1,
		PET2SRCM_Actor = 2,
		PET2SRCM_MAX = 3,
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Vector) SourceOffsetDefaults() { mixin(MGPC!("ScriptArray!(Vector)", 120)()); }
			int SourceOffsetCount() { mixin(MGPC!("int", 116)()); }
			DistributionFloat.RawDistributionFloat SourceStrength() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 84)()); }
			ScriptName SourceName() { mixin(MGPC!("ScriptName", 76)()); }
			ParticleModule.EParticleSourceSelectionMethod SelectionMethod() { mixin(MGPC!("ParticleModule.EParticleSourceSelectionMethod", 73)()); }
			ParticleModuleTrailSource.ETrail2SourceMethod SourceMethod() { mixin(MGPC!("ParticleModuleTrailSource.ETrail2SourceMethod", 72)()); }
		}
		bool bInheritRotation() { mixin(MGBPC!(112, 0x2)()); }
		bool bInheritRotation(bool val) { mixin(MSBPC!(112, 0x2)()); }
		bool bLockSourceStength() { mixin(MGBPC!(112, 0x1)()); }
		bool bLockSourceStength(bool val) { mixin(MSBPC!(112, 0x1)()); }
	}
}
