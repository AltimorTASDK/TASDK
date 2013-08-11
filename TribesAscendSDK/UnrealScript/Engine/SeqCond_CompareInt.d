module UnrealScript.Engine.SeqCond_CompareInt;

import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_CompareInt : SequenceCondition
{
	public @property final auto ref int ValueB() { return *cast(int*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref int ValueA() { return *cast(int*)(cast(size_t)cast(void*)this + 208); }
}
