module UnrealScript.Engine.Note;

import ScriptClasses;
import UnrealScript.Engine.Actor;

extern(C++) interface Note : Actor
{
	public @property final auto ref ScriptString Text() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 476); }
}
