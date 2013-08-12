module UnrealScript.UTGame.UTDataStore_GameSearchFavorites;

import ScriptClasses;
import UnrealScript.UTGame.UTDataStore_GameSearchPersonal;
import UnrealScript.UTGame.UTDataStore_GameSearchHistory;

extern(C++) interface UTDataStore_GameSearchFavorites : UTDataStore_GameSearchPersonal
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTDataStore_GameSearchFavorites")); }
	private static __gshared UTDataStore_GameSearchFavorites mDefaultProperties;
	@property final static UTDataStore_GameSearchFavorites DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTDataStore_GameSearchFavorites)("UTDataStore_GameSearchFavorites UTGame.Default__UTDataStore_GameSearchFavorites")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mHasOutstandingQueries;
		public @property static final ScriptFunction HasOutstandingQueries() { return mHasOutstandingQueries ? mHasOutstandingQueries : (mHasOutstandingQueries = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDataStore_GameSearchFavorites.HasOutstandingQueries")); }
	}
	@property final auto ref UTDataStore_GameSearchHistory HistoryGameSearchDataStore() { return *cast(UTDataStore_GameSearchHistory*)(cast(size_t)cast(void*)this + 356); }
	final bool HasOutstandingQueries(bool bRestrictCheckToSelf)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bRestrictCheckToSelf;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasOutstandingQueries, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
