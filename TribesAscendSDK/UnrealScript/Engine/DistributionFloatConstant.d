module UnrealScript.Engine.DistributionFloatConstant;

import ScriptClasses;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface DistributionFloatConstant : DistributionFloat
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DistributionFloatConstant")); }
	@property final auto ref float Constant() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
}
