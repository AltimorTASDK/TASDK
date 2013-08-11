module UnrealScript.Engine.SeqEvent_LevelLoaded;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_LevelLoaded : SequenceEvent
{
public extern(D):
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26101], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
