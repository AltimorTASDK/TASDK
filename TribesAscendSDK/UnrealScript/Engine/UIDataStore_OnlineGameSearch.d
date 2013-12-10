module UnrealScript.Engine.UIDataStore_OnlineGameSearch;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineGameSearch;
import UnrealScript.Engine.UIDataStore_Remote;
import UnrealScript.Engine.UIDataProvider_Settings;

extern(C++) interface UIDataStore_OnlineGameSearch : UIDataStore_Remote
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.UIDataStore_OnlineGameSearch")); }
	private static __gshared UIDataStore_OnlineGameSearch mDefaultProperties;
	@property final static UIDataStore_OnlineGameSearch DefaultProperties() { mixin(MGDPC("UIDataStore_OnlineGameSearch", "UIDataStore_OnlineGameSearch Engine.Default__UIDataStore_OnlineGameSearch")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInit;
			ScriptFunction mInvalidateCurrentSearchResults;
			ScriptFunction mSubmitGameSearch;
			ScriptFunction mOverrideQuerySubmission;
			ScriptFunction mOnSearchComplete;
			ScriptFunction mGetSearchResultFromIndex;
			ScriptFunction mShowHostGamercard;
			ScriptFunction mBuildSearchResults;
			ScriptFunction mGetCurrentGameSearch;
			ScriptFunction mGetActiveGameSearch;
			ScriptFunction mFindSearchConfigurationIndex;
			ScriptFunction mSetCurrentByIndex;
			ScriptFunction mSetCurrentByName;
			ScriptFunction mMoveToNext;
			ScriptFunction mMoveToPrevious;
			ScriptFunction mClearAllSearchResults;
		}
		public @property static final
		{
			ScriptFunction Init() { mixin(MGF("mInit", "Function Engine.UIDataStore_OnlineGameSearch.Init")); }
			ScriptFunction InvalidateCurrentSearchResults() { mixin(MGF("mInvalidateCurrentSearchResults", "Function Engine.UIDataStore_OnlineGameSearch.InvalidateCurrentSearchResults")); }
			ScriptFunction SubmitGameSearch() { mixin(MGF("mSubmitGameSearch", "Function Engine.UIDataStore_OnlineGameSearch.SubmitGameSearch")); }
			ScriptFunction OverrideQuerySubmission() { mixin(MGF("mOverrideQuerySubmission", "Function Engine.UIDataStore_OnlineGameSearch.OverrideQuerySubmission")); }
			ScriptFunction OnSearchComplete() { mixin(MGF("mOnSearchComplete", "Function Engine.UIDataStore_OnlineGameSearch.OnSearchComplete")); }
			ScriptFunction GetSearchResultFromIndex() { mixin(MGF("mGetSearchResultFromIndex", "Function Engine.UIDataStore_OnlineGameSearch.GetSearchResultFromIndex")); }
			ScriptFunction ShowHostGamercard() { mixin(MGF("mShowHostGamercard", "Function Engine.UIDataStore_OnlineGameSearch.ShowHostGamercard")); }
			ScriptFunction BuildSearchResults() { mixin(MGF("mBuildSearchResults", "Function Engine.UIDataStore_OnlineGameSearch.BuildSearchResults")); }
			ScriptFunction GetCurrentGameSearch() { mixin(MGF("mGetCurrentGameSearch", "Function Engine.UIDataStore_OnlineGameSearch.GetCurrentGameSearch")); }
			ScriptFunction GetActiveGameSearch() { mixin(MGF("mGetActiveGameSearch", "Function Engine.UIDataStore_OnlineGameSearch.GetActiveGameSearch")); }
			ScriptFunction FindSearchConfigurationIndex() { mixin(MGF("mFindSearchConfigurationIndex", "Function Engine.UIDataStore_OnlineGameSearch.FindSearchConfigurationIndex")); }
			ScriptFunction SetCurrentByIndex() { mixin(MGF("mSetCurrentByIndex", "Function Engine.UIDataStore_OnlineGameSearch.SetCurrentByIndex")); }
			ScriptFunction SetCurrentByName() { mixin(MGF("mSetCurrentByName", "Function Engine.UIDataStore_OnlineGameSearch.SetCurrentByName")); }
			ScriptFunction MoveToNext() { mixin(MGF("mMoveToNext", "Function Engine.UIDataStore_OnlineGameSearch.MoveToNext")); }
			ScriptFunction MoveToPrevious() { mixin(MGF("mMoveToPrevious", "Function Engine.UIDataStore_OnlineGameSearch.MoveToPrevious")); }
			ScriptFunction ClearAllSearchResults() { mixin(MGF("mClearAllSearchResults", "Function Engine.UIDataStore_OnlineGameSearch.ClearAllSearchResults")); }
		}
	}
	struct GameSearchCfg
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.UIDataStore_OnlineGameSearch.GameSearchCfg")); }
		@property final auto ref
		{
			ScriptArray!(UIDataProvider_Settings) SearchResults() { mixin(MGPS("ScriptArray!(UIDataProvider_Settings)", 16)); }
			ScriptName SearchName() { mixin(MGPS("ScriptName", 32)); }
			OnlineGameSearch Search() { mixin(MGPS("OnlineGameSearch", 28)); }
			UIDataProvider_Settings DesiredSettingsProvider() { mixin(MGPS("UIDataProvider_Settings", 12)); }
			ScriptClass SearchResultsProviderClass() { mixin(MGPS("ScriptClass", 8)); }
			ScriptClass DefaultGameSettingsClass() { mixin(MGPS("ScriptClass", 4)); }
			ScriptClass GameSearchClass() { mixin(MGPS("ScriptClass", 0)); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UIDataStore_OnlineGameSearch.GameSearchCfg) GameSearchCfgList() { mixin(MGPC("ScriptArray!(UIDataStore_OnlineGameSearch.GameSearchCfg)", 148)); }
		int ActiveSearchIndex() { mixin(MGPC("int", 164)); }
		int SelectedIndex() { mixin(MGPC("int", 160)); }
		// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'GameInterface'!
		OnlineSubsystem OnlineSub() { mixin(MGPC("OnlineSubsystem", 136)); }
		ScriptName SearchResultsName() { mixin(MGPC("ScriptName", 128)); }
		Pointer VfTable_IUIListElementCellProvider() { mixin(MGPC("Pointer", 124)); }
		Pointer VfTable_IUIListElementProvider() { mixin(MGPC("Pointer", 120)); }
	}
final:
	void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, cast(void*)0, cast(void*)0);
	}
	bool InvalidateCurrentSearchResults()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.InvalidateCurrentSearchResults, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
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
	bool OverrideQuerySubmission(ubyte ControllerId, OnlineGameSearch Search)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = ControllerId;
		*cast(OnlineGameSearch*)&params[4] = Search;
		(cast(ScriptObject)this).ProcessEvent(Functions.OverrideQuerySubmission, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void OnSearchComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSearchComplete, params.ptr, cast(void*)0);
	}
	bool GetSearchResultFromIndex(int ListIndex, ref OnlineGameSearch.OnlineGameSearchResult Result)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ListIndex;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)&params[4] = Result;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSearchResultFromIndex, params.ptr, cast(void*)0);
		Result = *cast(OnlineGameSearch.OnlineGameSearchResult*)&params[4];
		return *cast(bool*)&params[12];
	}
	bool ShowHostGamercard(ubyte ControllerIndex, int ListIndex)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = ControllerIndex;
		*cast(int*)&params[4] = ListIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowHostGamercard, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void BuildSearchResults()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.BuildSearchResults, cast(void*)0, cast(void*)0);
	}
	OnlineGameSearch GetCurrentGameSearch()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentGameSearch, params.ptr, cast(void*)0);
		return *cast(OnlineGameSearch*)params.ptr;
	}
	OnlineGameSearch GetActiveGameSearch()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetActiveGameSearch, params.ptr, cast(void*)0);
		return *cast(OnlineGameSearch*)params.ptr;
	}
	int FindSearchConfigurationIndex(ScriptName SearchTag)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SearchTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindSearchConfigurationIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void SetCurrentByIndex(int NewIndex, bool* bInvalidateExistingSearchResults = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = NewIndex;
		if (bInvalidateExistingSearchResults !is null)
			*cast(bool*)&params[4] = *bInvalidateExistingSearchResults;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCurrentByIndex, params.ptr, cast(void*)0);
	}
	void SetCurrentByName(ScriptName SearchName, bool* bInvalidateExistingSearchResults = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SearchName;
		if (bInvalidateExistingSearchResults !is null)
			*cast(bool*)&params[8] = *bInvalidateExistingSearchResults;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCurrentByName, params.ptr, cast(void*)0);
	}
	void MoveToNext(bool* bInvalidateExistingSearchResults = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bInvalidateExistingSearchResults !is null)
			*cast(bool*)params.ptr = *bInvalidateExistingSearchResults;
		(cast(ScriptObject)this).ProcessEvent(Functions.MoveToNext, params.ptr, cast(void*)0);
	}
	void MoveToPrevious(bool* bInvalidateExistingSearchResults = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bInvalidateExistingSearchResults !is null)
			*cast(bool*)params.ptr = *bInvalidateExistingSearchResults;
		(cast(ScriptObject)this).ProcessEvent(Functions.MoveToPrevious, params.ptr, cast(void*)0);
	}
	void ClearAllSearchResults()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearAllSearchResults, cast(void*)0, cast(void*)0);
	}
}
