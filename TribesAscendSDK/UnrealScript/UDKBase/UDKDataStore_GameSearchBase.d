module UnrealScript.UDKBase.UDKDataStore_GameSearchBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDataStore_OnlineGameSearch;
import UnrealScript.UDKBase.UDKUIDataProvider_ServerDetails;

extern(C++) interface UDKDataStore_GameSearchBase : UIDataStore_OnlineGameSearch
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKDataStore_GameSearchBase")()); }
	private static __gshared UDKDataStore_GameSearchBase mDefaultProperties;
	@property final static UDKDataStore_GameSearchBase DefaultProperties() { mixin(MGDPC!(UDKDataStore_GameSearchBase, "UDKDataStore_GameSearchBase UDKBase.Default__UDKDataStore_GameSearchBase")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetEnabledMutators;
			ScriptFunction mInit;
			ScriptFunction mSubmitGameSearch;
			ScriptFunction mOnSearchComplete;
			ScriptFunction mHasOutstandingQueries;
			ScriptFunction mHasExistingSearchResults;
		}
		public @property static final
		{
			ScriptFunction GetEnabledMutators() { mixin(MGF!("mGetEnabledMutators", "Function UDKBase.UDKDataStore_GameSearchBase.GetEnabledMutators")()); }
			ScriptFunction Init() { mixin(MGF!("mInit", "Function UDKBase.UDKDataStore_GameSearchBase.Init")()); }
			ScriptFunction SubmitGameSearch() { mixin(MGF!("mSubmitGameSearch", "Function UDKBase.UDKDataStore_GameSearchBase.SubmitGameSearch")()); }
			ScriptFunction OnSearchComplete() { mixin(MGF!("mOnSearchComplete", "Function UDKBase.UDKDataStore_GameSearchBase.OnSearchComplete")()); }
			ScriptFunction HasOutstandingQueries() { mixin(MGF!("mHasOutstandingQueries", "Function UDKBase.UDKDataStore_GameSearchBase.HasOutstandingQueries")()); }
			ScriptFunction HasExistingSearchResults() { mixin(MGF!("mHasExistingSearchResults", "Function UDKBase.UDKDataStore_GameSearchBase.HasExistingSearchResults")()); }
		}
	}
	@property final auto ref UDKUIDataProvider_ServerDetails ServerDetailsProvider() { mixin(MGPC!(UDKUIDataProvider_ServerDetails, 168)()); }
final:
	bool GetEnabledMutators(ref ScriptArray!(int) MutatorIndices)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(int)*)params.ptr = MutatorIndices;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEnabledMutators, params.ptr, cast(void*)0);
		*MutatorIndices = *cast(ScriptArray!(int)*)params.ptr;
		return *cast(bool*)&params[12];
	}
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
