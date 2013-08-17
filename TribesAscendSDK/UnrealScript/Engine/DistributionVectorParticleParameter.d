module UnrealScript.Engine.DistributionVectorParticleParameter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DistributionVectorParameterBase;

extern(C++) interface DistributionVectorParticleParameter : DistributionVectorParameterBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DistributionVectorParticleParameter")()); }
	private static __gshared DistributionVectorParticleParameter mDefaultProperties;
	@property final static DistributionVectorParticleParameter DefaultProperties() { mixin(MGDPC!(DistributionVectorParticleParameter, "DistributionVectorParticleParameter Engine.Default__DistributionVectorParticleParameter")()); }
}
