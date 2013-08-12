module UnrealScript.Engine.SeqAct_ModifyObjectList;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_ModifyObjectList : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_ModifyObjectList")); }
	@property final auto ref int ListEntriesCount() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
}
