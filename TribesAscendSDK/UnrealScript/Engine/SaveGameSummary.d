module UnrealScript.Engine.SaveGameSummary;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface SaveGameSummary : UObject
{
public extern(D):
	@property final auto ref
	{
		ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 68); }
		ScriptName BaseLevel() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 60); }
	}
}
