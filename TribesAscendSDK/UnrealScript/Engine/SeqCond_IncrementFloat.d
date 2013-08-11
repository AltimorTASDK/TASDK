module UnrealScript.Engine.SeqCond_IncrementFloat;

import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_IncrementFloat : SequenceCondition
{
public extern(D):
	@property final auto ref
	{
		float ValueB() { return *cast(float*)(cast(size_t)cast(void*)this + 216); }
		float ValueA() { return *cast(float*)(cast(size_t)cast(void*)this + 212); }
		float IncrementAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 208); }
	}
}
