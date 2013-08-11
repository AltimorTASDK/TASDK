module UnrealScript.Engine.SeqAct_AddFloat;

import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_AddFloat : SeqAct_SetSequenceVariable
{
	public @property final auto ref int IntResult() { return *cast(int*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref float FloatResult() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref float ValueB() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref float ValueA() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
}
