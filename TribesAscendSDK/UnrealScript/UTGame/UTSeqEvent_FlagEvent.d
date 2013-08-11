module UnrealScript.UTGame.UTSeqEvent_FlagEvent;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface UTSeqEvent_FlagEvent : SequenceEvent
{
	// WARNING: Function 'Trigger' has the same name as a defined type!
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49215], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
