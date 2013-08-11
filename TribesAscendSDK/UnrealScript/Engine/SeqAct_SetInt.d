module UnrealScript.Engine.SeqAct_SetInt;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_SetInt : SeqAct_SetSequenceVariable
{
	public @property final auto ref ScriptArray!(int) Value() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref int Target() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25884], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
