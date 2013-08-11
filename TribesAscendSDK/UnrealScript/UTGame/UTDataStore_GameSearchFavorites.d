module UnrealScript.UTGame.UTDataStore_GameSearchFavorites;

import ScriptClasses;
import UnrealScript.UTGame.UTDataStore_GameSearchPersonal;
import UnrealScript.UTGame.UTDataStore_GameSearchHistory;

extern(C++) interface UTDataStore_GameSearchFavorites : UTDataStore_GameSearchPersonal
{
public extern(D):
	@property final auto ref UTDataStore_GameSearchHistory HistoryGameSearchDataStore() { return *cast(UTDataStore_GameSearchHistory*)(cast(size_t)cast(void*)this + 356); }
	final bool HasOutstandingQueries(bool bRestrictCheckToSelf)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bRestrictCheckToSelf;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46904], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
