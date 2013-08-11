module UnrealScript.Engine.InterpFilter_Classes;

import ScriptClasses;
import UnrealScript.Engine.InterpFilter;

extern(C++) interface InterpFilter_Classes : InterpFilter
{
	public @property final auto ref ScriptArray!(ScriptClass) TrackClasses() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref ScriptClass ClassToFilterBy() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 72); }
}
