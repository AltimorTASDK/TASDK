module UnrealScript.Engine.SeqAct_AccessObjectList;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_AccessObjectList : SeqAct_SetSequenceVariable
{
	public @property final auto ref int ObjectIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref UObject OutputObject() { return *cast(UObject*)(cast(size_t)cast(void*)this + 232); }
}
