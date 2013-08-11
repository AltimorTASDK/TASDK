module UnrealScript.Engine.SeqCond_Increment;

import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_Increment : SequenceCondition
{
public extern(D):
	@property final auto ref
	{
		int ValueB() { return *cast(int*)(cast(size_t)cast(void*)this + 216); }
		int ValueA() { return *cast(int*)(cast(size_t)cast(void*)this + 212); }
		int IncrementAmount() { return *cast(int*)(cast(size_t)cast(void*)this + 208); }
	}
}
