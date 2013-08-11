module UnrealScript.Engine.SeqCond_IsPIE;

import ScriptClasses;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_IsPIE : SequenceCondition
{
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26037], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
