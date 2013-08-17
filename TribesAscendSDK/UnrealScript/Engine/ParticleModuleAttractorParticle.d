module UnrealScript.Engine.ParticleModuleAttractorParticle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleAttractorBase;

extern(C++) interface ParticleModuleAttractorParticle : ParticleModuleAttractorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleAttractorParticle")); }
	private static __gshared ParticleModuleAttractorParticle mDefaultProperties;
	@property final static ParticleModuleAttractorParticle DefaultProperties() { mixin(MGDPC("ParticleModuleAttractorParticle", "ParticleModuleAttractorParticle Engine.Default__ParticleModuleAttractorParticle")); }
	enum EAttractorParticleSelectionMethod : ubyte
	{
		EAPSM_Random = 0,
		EAPSM_Sequential = 1,
		EAPSM_MAX = 2,
	}
	@property final
	{
		auto ref
		{
			int LastSelIndex() { mixin(MGPC("int", 144)); }
			ParticleModuleAttractorParticle.EAttractorParticleSelectionMethod SelectionMethod() { mixin(MGPC("ParticleModuleAttractorParticle.EAttractorParticleSelectionMethod", 140)); }
			ScriptName EmitterName() { mixin(MGPC("ScriptName", 72)); }
			DistributionFloat.RawDistributionFloat Strength() { mixin(MGPC("DistributionFloat.RawDistributionFloat", 112)); }
			DistributionFloat.RawDistributionFloat Range() { mixin(MGPC("DistributionFloat.RawDistributionFloat", 80)); }
		}
		bool bInheritSourceVel() { mixin(MGBPC(108, 0x8)); }
		bool bInheritSourceVel(bool val) { mixin(MSBPC(108, 0x8)); }
		bool bRenewSource() { mixin(MGBPC(108, 0x4)); }
		bool bRenewSource(bool val) { mixin(MSBPC(108, 0x4)); }
		bool bAffectBaseVelocity() { mixin(MGBPC(108, 0x2)); }
		bool bAffectBaseVelocity(bool val) { mixin(MSBPC(108, 0x2)); }
		bool bStrengthByDistance() { mixin(MGBPC(108, 0x1)); }
		bool bStrengthByDistance(bool val) { mixin(MSBPC(108, 0x1)); }
	}
}
