module UnrealScript.Engine.ParticleModuleRotationOverLifetime;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleRotationBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleRotationOverLifetime : ParticleModuleRotationBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleRotationOverLifetime")); }
	private static __gshared ParticleModuleRotationOverLifetime mDefaultProperties;
	@property final static ParticleModuleRotationOverLifetime DefaultProperties() { mixin(MGDPC("ParticleModuleRotationOverLifetime", "ParticleModuleRotationOverLifetime Engine.Default__ParticleModuleRotationOverLifetime")); }
	@property final
	{
		@property final auto ref DistributionFloat.RawDistributionFloat RotationOverLife() { mixin(MGPC("DistributionFloat.RawDistributionFloat", 72)); }
		bool Scale() { mixin(MGBPC(100, 0x1)); }
		bool Scale(bool val) { mixin(MSBPC(100, 0x1)); }
	}
}
