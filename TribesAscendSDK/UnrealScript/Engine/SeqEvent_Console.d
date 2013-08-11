module UnrealScript.Engine.SeqEvent_Console;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_Console : SequenceEvent
{
	public @property final auto ref ScriptString EventDesc() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref ScriptName ConsoleEventName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 256); }
}
