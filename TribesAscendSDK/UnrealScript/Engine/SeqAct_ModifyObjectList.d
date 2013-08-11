module UnrealScript.Engine.SeqAct_ModifyObjectList;

import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_ModifyObjectList : SeqAct_SetSequenceVariable
{
	public @property final auto ref int ListEntriesCount() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
}
