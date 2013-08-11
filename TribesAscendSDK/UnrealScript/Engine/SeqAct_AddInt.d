module UnrealScript.Engine.SeqAct_AddInt;

import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_AddInt : SeqAct_SetSequenceVariable
{
public extern(D):
	@property final auto ref
	{
		int IntResult() { return *cast(int*)(cast(size_t)cast(void*)this + 244); }
		float FloatResult() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
		int ValueB() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
		int ValueA() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
	}
}
