module UnrealScript.TribesGame.TrPerkList;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrPerkList : UObject
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(ScriptString) PerkListA() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 60); }
		ScriptArray!(ScriptString) PerkListB() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 72); }
	}
}
