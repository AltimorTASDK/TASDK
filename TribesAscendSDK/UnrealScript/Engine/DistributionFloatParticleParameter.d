module UnrealScript.Engine.DistributionFloatParticleParameter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DistributionFloatParameterBase;

extern(C++) interface DistributionFloatParticleParameter : DistributionFloatParameterBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DistributionFloatParticleParameter")()); }
	private static __gshared DistributionFloatParticleParameter mDefaultProperties;
	@property final static DistributionFloatParticleParameter DefaultProperties() { mixin(MGDPC!(DistributionFloatParticleParameter, "DistributionFloatParticleParameter Engine.Default__DistributionFloatParticleParameter")()); }
}
