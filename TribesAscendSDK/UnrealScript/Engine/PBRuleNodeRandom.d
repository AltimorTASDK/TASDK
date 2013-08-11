module UnrealScript.Engine.PBRuleNodeRandom;

import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeRandom : PBRuleNodeBase
{
public extern(D):
	@property final auto ref
	{
		int MaxNumExecuted() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
		int MinNumExecuted() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
		int NumOutputs() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
	}
}
