module UnrealScript.Engine.SaveGameSummary;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface SaveGameSummary : UObject
{
	public @property final auto ref ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref ScriptName BaseLevel() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 60); }
}
