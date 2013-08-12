module UnrealScript.Engine.PBRuleNodeRandom;

import ScriptClasses;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeRandom : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PBRuleNodeRandom")); }
	@property final auto ref
	{
		int MaxNumExecuted() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
		int MinNumExecuted() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
		int NumOutputs() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
	}
}
