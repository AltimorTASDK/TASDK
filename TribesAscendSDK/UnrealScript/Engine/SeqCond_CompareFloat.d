module UnrealScript.Engine.SeqCond_CompareFloat;

import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_CompareFloat : SequenceCondition
{
public extern(D):
	@property final auto ref
	{
		float ValueB() { return *cast(float*)(cast(size_t)cast(void*)this + 212); }
		float ValueA() { return *cast(float*)(cast(size_t)cast(void*)this + 208); }
	}
}
