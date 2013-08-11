module UnrealScript.Engine.SeqAct_AddInt;

import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_AddInt : SeqAct_SetSequenceVariable
{
	public @property final auto ref int IntResult() { return *cast(int*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref float FloatResult() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref int ValueB() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref int ValueA() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
}
