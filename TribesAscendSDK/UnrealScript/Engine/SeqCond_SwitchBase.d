module UnrealScript.Engine.SeqCond_SwitchBase;

import ScriptClasses;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_SwitchBase : SequenceCondition
{
	final void VerifyDefaultCaseValue()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26039], cast(void*)0, cast(void*)0);
	}
	final bool IsFallThruEnabled(int ValueIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ValueIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26040], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void InsertValueEntry(int InsertIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = InsertIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26043], params.ptr, cast(void*)0);
	}
	final void RemoveValueEntry(int RemoveIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = RemoveIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26045], params.ptr, cast(void*)0);
	}
}
