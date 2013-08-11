module UnrealScript.Engine.SeqAct_SetString;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_SetString : SeqAct_SetSequenceVariable
{
	public @property final auto ref ScriptString Value() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref ScriptString Target() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 232); }
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25933], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
