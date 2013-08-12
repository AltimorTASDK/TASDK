module UnrealScript.TribesGame.TrDataStore_OnlineGameSearch;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore_OnlineGameSearch;
import UnrealScript.UDKBase.UDKUIDataProvider_ServerDetails;

extern(C++) interface TrDataStore_OnlineGameSearch : UIDataStore_OnlineGameSearch
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDataStore_OnlineGameSearch")); }
	private static __gshared TrDataStore_OnlineGameSearch mDefaultProperties;
	@property final static TrDataStore_OnlineGameSearch DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDataStore_OnlineGameSearch)("TrDataStore_OnlineGameSearch TribesGame.Default__TrDataStore_OnlineGameSearch")); }
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
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDataStore_OnlineGameSearch.Init")); }
			ScriptFunction SubmitGameSearch() { return mSubmitGameSearch ? mSubmitGameSearch : (mSubmitGameSearch = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDataStore_OnlineGameSearch.SubmitGameSearch")); }
			ScriptFunction OnSearchComplete() { return mOnSearchComplete ? mOnSearchComplete : (mOnSearchComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDataStore_OnlineGameSearch.OnSearchComplete")); }
			ScriptFunction HasOutstandingQueries() { return mHasOutstandingQueries ? mHasOutstandingQueries : (mHasOutstandingQueries = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDataStore_OnlineGameSearch.HasOutstandingQueries")); }
			ScriptFunction HasExistingSearchResults() { return mHasExistingSearchResults ? mHasExistingSearchResults : (mHasExistingSearchResults = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDataStore_OnlineGameSearch.HasExistingSearchResults")); }
		}
	}
	@property final auto ref UDKUIDataProvider_ServerDetails ServerDetailsProvider() { return *cast(UDKUIDataProvider_ServerDetails*)(cast(size_t)cast(void*)this + 168); }
final:
	void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, cast(void*)0, cast(void*)0);
	}
	bool SubmitGameSearch(ubyte ControllerIndex, bool bInvalidateExistingSearchResults)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = ControllerIndex;
		*cast(bool*)&params[4] = bInvalidateExistingSearchResults;
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
	bool HasOutstandingQueries(bool bRestrictCheckToSelf)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bRestrictCheckToSelf;
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
