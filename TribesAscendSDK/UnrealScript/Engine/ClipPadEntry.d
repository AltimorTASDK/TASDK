module UnrealScript.Engine.ClipPadEntry;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface ClipPadEntry : UObject
{
	public @property final auto ref ScriptString Text() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref ScriptString Title() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 60); }
}
