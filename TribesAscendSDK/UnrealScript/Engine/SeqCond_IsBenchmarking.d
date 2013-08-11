module UnrealScript.Engine.SeqCond_IsBenchmarking;

import ScriptClasses;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_IsBenchmarking : SequenceCondition
{
public extern(D):
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26028], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
