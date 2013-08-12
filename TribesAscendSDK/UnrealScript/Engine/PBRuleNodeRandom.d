module UnrealScript.Engine.PBRuleNodeRandom;

import ScriptClasses;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeRandom : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PBRuleNodeRandom")); }
	private static __gshared PBRuleNodeRandom mDefaultProperties;
	@property final static PBRuleNodeRandom DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PBRuleNodeRandom)("PBRuleNodeRandom Engine.Default__PBRuleNodeRandom")); }
	@property final auto ref
	{
		int MaxNumExecuted() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
		int MinNumExecuted() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
		int NumOutputs() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
	}
}
