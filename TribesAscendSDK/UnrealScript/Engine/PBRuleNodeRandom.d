module UnrealScript.Engine.PBRuleNodeRandom;

import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeRandom : PBRuleNodeBase
{
	public @property final auto ref int MaxNumExecuted() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref int MinNumExecuted() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref int NumOutputs() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
}
