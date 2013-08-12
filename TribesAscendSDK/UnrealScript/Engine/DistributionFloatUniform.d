module UnrealScript.Engine.DistributionFloatUniform;

import ScriptClasses;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface DistributionFloatUniform : DistributionFloat
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DistributionFloatUniform")); }
	private static __gshared DistributionFloatUniform mDefaultProperties;
	@property final static DistributionFloatUniform DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DistributionFloatUniform)("DistributionFloatUniform Engine.Default__DistributionFloatUniform")); }
	@property final auto ref
	{
		float Max() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
		float Min() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	}
}
