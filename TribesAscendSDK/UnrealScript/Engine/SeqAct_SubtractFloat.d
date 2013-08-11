module UnrealScript.Engine.SeqAct_SubtractFloat;

import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_SubtractFloat : SeqAct_SetSequenceVariable
{
public extern(D):
	@property final auto ref
	{
		int IntResult() { return *cast(int*)(cast(size_t)cast(void*)this + 244); }
		float FloatResult() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
		float ValueB() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
		float ValueA() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	}
}
