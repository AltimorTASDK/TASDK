module UnrealScript.Engine.SeqAct_SetObject;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_SetObject : SeqAct_SetSequenceVariable
{
	public @property final auto ref UObject Value() { return *cast(UObject*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref UObject DefaultValue() { return *cast(UObject*)(cast(size_t)cast(void*)this + 232); }
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25916], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
