module UnrealScript.UTGame.UTSeqEvent_GameEnded;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Engine.Actor;

extern(C++) interface UTSeqEvent_GameEnded : SequenceEvent
{
public extern(D):
	@property final auto ref
	{
		Actor ActualWinner() { return *cast(Actor*)(cast(size_t)cast(void*)this + 260); }
		Actor Winner() { return *cast(Actor*)(cast(size_t)cast(void*)this + 256); }
	}
final:
	void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49220], cast(void*)0, cast(void*)0);
	}
	int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49222], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
