module UnrealScript.UTGame.UTDataStore_GameSearchHistory;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.UTGame.UTDataStore_GameSearchFavorites;
import UnrealScript.UTGame.UTDataStore_GameSearchPersonal;

extern(C++) interface UTDataStore_GameSearchHistory : UTDataStore_GameSearchPersonal
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTDataStore_GameSearchHistory")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mHasOutstandingQueries;
			ScriptFunction mRegistered;
		}
		public @property static final
		{
			ScriptFunction HasOutstandingQueries() { return mHasOutstandingQueries ? mHasOutstandingQueries : (mHasOutstandingQueries = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDataStore_GameSearchHistory.HasOutstandingQueries")); }
			ScriptFunction Registered() { return mRegistered ? mRegistered : (mRegistered = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDataStore_GameSearchHistory.Registered")); }
		}
	}
	@property final auto ref
	{
		UTDataStore_GameSearchFavorites FavoritesGameSearchDataStore() { return *cast(UTDataStore_GameSearchFavorites*)(cast(size_t)cast(void*)this + 360); }
		ScriptClass FavoritesGameSearchDataStoreClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 356); }
	}
final:
	bool HasOutstandingQueries(bool bRestrictCheckToSelf)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bRestrictCheckToSelf;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasOutstandingQueries, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void Registered(LocalPlayer PlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(Functions.Registered, params.ptr, cast(void*)0);
	}
}
