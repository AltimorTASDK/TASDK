module UnrealScript.TribesGame.TrAccoladeList;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrAccoladeList : UObject
{
	public @property final auto ref ScriptArray!(ScriptString) accoladeList() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 60); }
}
