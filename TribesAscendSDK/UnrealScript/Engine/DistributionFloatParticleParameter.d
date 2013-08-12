module UnrealScript.Engine.DistributionFloatParticleParameter;

import ScriptClasses;
import UnrealScript.Engine.DistributionFloatParameterBase;

extern(C++) interface DistributionFloatParticleParameter : DistributionFloatParameterBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DistributionFloatParticleParameter")); }
}
