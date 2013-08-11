module UnrealScript.TribesGame.TrSeqEvent_StormShield;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface TrSeqEvent_StormShield : SequenceEvent
{
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110937], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
