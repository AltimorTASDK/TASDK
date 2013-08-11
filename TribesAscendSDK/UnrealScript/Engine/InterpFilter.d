module UnrealScript.Engine.InterpFilter;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface InterpFilter : UObject
{
	public @property final auto ref ScriptString Caption() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 60); }
}
