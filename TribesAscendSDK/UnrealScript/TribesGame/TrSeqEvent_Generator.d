module UnrealScript.TribesGame.TrSeqEvent_Generator;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface TrSeqEvent_Generator : SequenceEvent
{
public extern(D):
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110925], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
