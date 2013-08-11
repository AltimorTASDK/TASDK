module UnrealScript.Engine.SeqAct_CastToFloat;

import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_CastToFloat : SeqAct_SetSequenceVariable
{
public extern(D):
	@property final auto ref
	{
		float FloatResult() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
		int Value() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
	}
}
