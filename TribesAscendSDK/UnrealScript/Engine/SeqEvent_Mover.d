module UnrealScript.Engine.SeqEvent_Mover;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Engine.Actor;

extern(C++) interface SeqEvent_Mover : SequenceEvent
{
public extern(D):
	@property final auto ref float StayOpenTime() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
final:
	void RegisterEvent()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26111], cast(void*)0, cast(void*)0);
	}
	void NotifyEncroachingOn(Actor Hit)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Hit;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26113], params.ptr, cast(void*)0);
	}
	void NotifyAttached(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26118], params.ptr, cast(void*)0);
	}
	void NotifyDetached(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26122], params.ptr, cast(void*)0);
	}
	void NotifyFinishedOpen()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26127], cast(void*)0, cast(void*)0);
	}
}
