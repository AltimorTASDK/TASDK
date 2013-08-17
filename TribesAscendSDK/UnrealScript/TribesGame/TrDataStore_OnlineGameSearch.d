module UnrealScript.TribesGame.TrDataStore_OnlineGameSearch;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDataStore_OnlineGameSearch;
import UnrealScript.UDKBase.UDKUIDataProvider_ServerDetails;

extern(C++) interface TrDataStore_OnlineGameSearch : UIDataStore_OnlineGameSearch
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDataStore_OnlineGameSearch")); }
	private static __gshared TrDataStore_OnlineGameSearch mDefaultProperties;
	@property final static TrDataStore_OnlineGameSearch DefaultProperties() { mixin(MGDPC("TrDataStore_OnlineGameSearch", "TrDataStore_OnlineGameSearch TribesGame.Default__TrDataStore_OnlineGameSearch")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInit;
			ScriptFunction mSubmitGameSearch;
			ScriptFunction mOnSearchComplete;
			ScriptFunction mHasOutstandingQueries;
			ScriptFunction mHasExistingSearchResults;
		}
		public @property static final
		{
			ScriptFunction Init() { mixin(MGF("mInit", "Function TribesGame.TrDataStore_OnlineGameSearch.Init")); }
			ScriptFunction SubmitGameSearch() { mixin(MGF("mSubmitGameSearch", "Function TribesGame.TrDataStore_OnlineGameSearch.SubmitGameSearch")); }
			ScriptFunction OnSearchComplete() { mixin(MGF("mOnSearchComplete", "Function TribesGame.TrDataStore_OnlineGameSearch.OnSearchComplete")); }
			ScriptFunction HasOutstandingQueries() { mixin(MGF("mHasOutstandingQueries", "Function TribesGame.TrDataStore_OnlineGameSearch.HasOutstandingQueries")); }
			ScriptFunction HasExistingSearchResults() { mixin(MGF("mHasExistingSearchResults", "Function TribesGame.TrDataStore_OnlineGameSearch.HasExistingSearchResults")); }
		}
	}
	@property final auto ref UDKUIDataProvider_ServerDetails ServerDetailsProvider() { mixin(MGPC("UDKUIDataProvider_ServerDetails", 168)); }
final:
	void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, cast(void*)0, cast(void*)0);
	}
	bool SubmitGameSearch(ubyte ControllerIndex, bool* bInvalidateExistingSearchResults = null)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = ControllerIndex;
		if (bInvalidateExistingSearchResults !is null)
			*cast(bool*)&params[4] = *bInvalidateExistingSearchResults;
		(cast(ScriptObject)this).ProcessEvent(Functions.SubmitGameSearch, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void OnSearchComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSearchComplete, params.ptr, cast(void*)0);
	}
	bool HasOutstandingQueries(bool* bRestrictCheckToSelf = null)
	{
		ubyte params[8];
		params[] = 0;
		if (bRestrictCheckToSelf !is null)
			*cast(bool*)params.ptr = *bRestrictCheckToSelf;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasOutstandingQueries, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool HasExistingSearchResults()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasExistingSearchResults, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
