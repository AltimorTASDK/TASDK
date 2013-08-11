module UnrealScript.Engine.SeqCond_IsLoggedIn;

import ScriptClasses;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_IsLoggedIn : SequenceCondition
{
	public @property final auto ref int NumNeededLoggedIn() { return *cast(int*)(cast(size_t)cast(void*)this + 208); }
	final bool CheckLogins()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26031], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
