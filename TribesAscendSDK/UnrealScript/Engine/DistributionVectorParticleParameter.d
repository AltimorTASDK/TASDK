module UnrealScript.Engine.DistributionVectorParticleParameter;

import ScriptClasses;
import UnrealScript.Engine.DistributionVectorParameterBase;

extern(C++) interface DistributionVectorParticleParameter : DistributionVectorParameterBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DistributionVectorParticleParameter")); }
}
