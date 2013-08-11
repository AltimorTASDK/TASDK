module UnrealScript.Engine.SeqEvent_AnimNotify;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_AnimNotify : SequenceEvent
{
	public @property final auto ref ScriptName NotifyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 256); }
}
