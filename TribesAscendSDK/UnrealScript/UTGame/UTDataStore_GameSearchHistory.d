module UnrealScript.UTGame.UTDataStore_GameSearchHistory;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.UTGame.UTDataStore_GameSearchFavorites;
import UnrealScript.UTGame.UTDataStore_GameSearchPersonal;

extern(C++) interface UTDataStore_GameSearchHistory : UTDataStore_GameSearchPersonal
{
	public @property final auto ref UTDataStore_GameSearchFavorites FavoritesGameSearchDataStore() { return *cast(UTDataStore_GameSearchFavorites*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref ScriptClass FavoritesGameSearchDataStoreClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 356); }
	final bool HasOutstandingQueries(bool bRestrictCheckToSelf)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bRestrictCheckToSelf;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46899], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void Registered(LocalPlayer PlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47003], params.ptr, cast(void*)0);
	}
}
