module UnrealScript.Engine.SeqEvent_SequenceActivated;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_SequenceActivated : SequenceEvent
{
public extern(D):
	@property final auto ref ScriptString InputLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 256); }
}
