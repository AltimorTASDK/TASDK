module UnrealScript.TribesGame.TrFamilyInfoList;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrFamilyInfoList : UObject
{
	public @property final auto ref ScriptArray!(ScriptString) ClassList() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 60); }
}
