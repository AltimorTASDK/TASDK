module UnrealScript.UTGame.UTDataStore_GameSearchFavorites;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTDataStore_GameSearchPersonal;
import UnrealScript.UTGame.UTDataStore_GameSearchHistory;

extern(C++) interface UTDataStore_GameSearchFavorites : UTDataStore_GameSearchPersonal
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTDataStore_GameSearchFavorites")); }
	private static __gshared UTDataStore_GameSearchFavorites mDefaultProperties;
	@property final static UTDataStore_GameSearchFavorites DefaultProperties() { mixin(MGDPC("UTDataStore_GameSearchFavorites", "UTDataStore_GameSearchFavorites UTGame.Default__UTDataStore_GameSearchFavorites")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mHasOutstandingQueries;
		public @property static final ScriptFunction HasOutstandingQueries() { mixin(MGF("mHasOutstandingQueries", "Function UTGame.UTDataStore_GameSearchFavorites.HasOutstandingQueries")); }
	}
	@property final auto ref UTDataStore_GameSearchHistory HistoryGameSearchDataStore() { mixin(MGPC("UTDataStore_GameSearchHistory", 356)); }
	final bool HasOutstandingQueries(bool* bRestrictCheckToSelf = null)
	{
		ubyte params[8];
		params[] = 0;
		if (bRestrictCheckToSelf !is null)
			*cast(bool*)params.ptr = *bRestrictCheckToSelf;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasOutstandingQueries, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
