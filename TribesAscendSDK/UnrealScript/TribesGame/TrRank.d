module UnrealScript.TribesGame.TrRank;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrRank : UObject
{
public extern(D):
	@property final auto ref
	{
		int IconIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
		ScriptString FriendlyName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 72); }
		int Rank() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
		int RequiredXP() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
	}
}
