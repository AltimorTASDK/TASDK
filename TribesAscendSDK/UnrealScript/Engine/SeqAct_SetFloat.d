module UnrealScript.Engine.SeqAct_SetFloat;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_SetFloat : SeqAct_SetSequenceVariable
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(float) Value() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 236); }
		float Target() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	}
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25879], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
