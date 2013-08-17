module UnrealScript.UTGame.UTDataStore_GameSearchHistory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.UTGame.UTDataStore_GameSearchFavorites;
import UnrealScript.UTGame.UTDataStore_GameSearchPersonal;

extern(C++) interface UTDataStore_GameSearchHistory : UTDataStore_GameSearchPersonal
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTDataStore_GameSearchHistory")()); }
	private static __gshared UTDataStore_GameSearchHistory mDefaultProperties;
	@property final static UTDataStore_GameSearchHistory DefaultProperties() { mixin(MGDPC!(UTDataStore_GameSearchHistory, "UTDataStore_GameSearchHistory UTGame.Default__UTDataStore_GameSearchHistory")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mHasOutstandingQueries;
			ScriptFunction mRegistered;
		}
		public @property static final
		{
			ScriptFunction HasOutstandingQueries() { mixin(MGF!("mHasOutstandingQueries", "Function UTGame.UTDataStore_GameSearchHistory.HasOutstandingQueries")()); }
			ScriptFunction Registered() { mixin(MGF!("mRegistered", "Function UTGame.UTDataStore_GameSearchHistory.Registered")()); }
		}
	}
	@property final auto ref
	{
		UTDataStore_GameSearchFavorites FavoritesGameSearchDataStore() { mixin(MGPC!(UTDataStore_GameSearchFavorites, 360)()); }
		ScriptClass FavoritesGameSearchDataStoreClass() { mixin(MGPC!(ScriptClass, 356)()); }
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
