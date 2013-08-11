module UnrealScript.TribesGame.TrSeqEvent_StormControlPoint;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface TrSeqEvent_StormControlPoint : SequenceEvent
{
public extern(D):
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110929], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
