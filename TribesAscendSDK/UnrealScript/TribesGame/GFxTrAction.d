module UnrealScript.TribesGame.GFxTrAction;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.GFxTrPage;

extern(C++) interface GFxTrAction : UObject
{
	public @property final auto ref GFxTrPage ActionPage() { return *cast(GFxTrPage*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref ScriptString ActionString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref int ActionNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref int ActionIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
}
