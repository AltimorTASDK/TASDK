module UnrealScript.TribesGame.TrRank;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrRank : UObject
{
	public @property final auto ref int IconIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref ScriptString FriendlyName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref int Rank() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref int RequiredXP() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
}
