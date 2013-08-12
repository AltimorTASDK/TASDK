module UnrealScript.Engine.UIDataStore_OnlineGameSearch;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineGameSearch;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataStore_Remote;
import UnrealScript.Engine.UIDataProvider_Settings;

extern(C++) interface UIDataStore_OnlineGameSearch : UIDataStore_Remote
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIDataStore_OnlineGameSearch")); }
	private static __gshared UIDataStore_OnlineGameSearch mDefaultProperties;
	@property final static UIDataStore_OnlineGameSearch DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UIDataStore_OnlineGameSearch)("UIDataStore_OnlineGameSearch Engine.Default__UIDataStore_OnlineGameSearch")); }
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
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlineGameSearch.Init")); }
			ScriptFunction InvalidateCurrentSearchResults() { return mInvalidateCurrentSearchResults ? mInvalidateCurrentSearchResults : (mInvalidateCurrentSearchResults = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlineGameSearch.InvalidateCurrentSearchResults")); }
			ScriptFunction SubmitGameSearch() { return mSubmitGameSearch ? mSubmitGameSearch : (mSubmitGameSearch = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlineGameSearch.SubmitGameSearch")); }
			ScriptFunction OverrideQuerySubmission() { return mOverrideQuerySubmission ? mOverrideQuerySubmission : (mOverrideQuerySubmission = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlineGameSearch.OverrideQuerySubmission")); }
			ScriptFunction OnSearchComplete() { return mOnSearchComplete ? mOnSearchComplete : (mOnSearchComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlineGameSearch.OnSearchComplete")); }
			ScriptFunction GetSearchResultFromIndex() { return mGetSearchResultFromIndex ? mGetSearchResultFromIndex : (mGetSearchResultFromIndex = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlineGameSearch.GetSearchResultFromIndex")); }
			ScriptFunction ShowHostGamercard() { return mShowHostGamercard ? mShowHostGamercard : (mShowHostGamercard = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlineGameSearch.ShowHostGamercard")); }
			ScriptFunction BuildSearchResults() { return mBuildSearchResults ? mBuildSearchResults : (mBuildSearchResults = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlineGameSearch.BuildSearchResults")); }
			ScriptFunction GetCurrentGameSearch() { return mGetCurrentGameSearch ? mGetCurrentGameSearch : (mGetCurrentGameSearch = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlineGameSearch.GetCurrentGameSearch")); }
			ScriptFunction GetActiveGameSearch() { return mGetActiveGameSearch ? mGetActiveGameSearch : (mGetActiveGameSearch = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlineGameSearch.GetActiveGameSearch")); }
			ScriptFunction FindSearchConfigurationIndex() { return mFindSearchConfigurationIndex ? mFindSearchConfigurationIndex : (mFindSearchConfigurationIndex = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlineGameSearch.FindSearchConfigurationIndex")); }
			ScriptFunction SetCurrentByIndex() { return mSetCurrentByIndex ? mSetCurrentByIndex : (mSetCurrentByIndex = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlineGameSearch.SetCurrentByIndex")); }
			ScriptFunction SetCurrentByName() { return mSetCurrentByName ? mSetCurrentByName : (mSetCurrentByName = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlineGameSearch.SetCurrentByName")); }
			ScriptFunction MoveToNext() { return mMoveToNext ? mMoveToNext : (mMoveToNext = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlineGameSearch.MoveToNext")); }
			ScriptFunction MoveToPrevious() { return mMoveToPrevious ? mMoveToPrevious : (mMoveToPrevious = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlineGameSearch.MoveToPrevious")); }
			ScriptFunction ClearAllSearchResults() { return mClearAllSearchResults ? mClearAllSearchResults : (mClearAllSearchResults = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_OnlineGameSearch.ClearAllSearchResults")); }
		}
	}
	struct GameSearchCfg
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.UIDataStore_OnlineGameSearch.GameSearchCfg")); }
		@property final auto ref
		{
			ScriptArray!(UIDataProvider_Settings) SearchResults() { return *cast(ScriptArray!(UIDataProvider_Settings)*)(cast(size_t)&this + 16); }
			ScriptName SearchName() { return *cast(ScriptName*)(cast(size_t)&this + 32); }
			OnlineGameSearch Search() { return *cast(OnlineGameSearch*)(cast(size_t)&this + 28); }
			UIDataProvider_Settings DesiredSettingsProvider() { return *cast(UIDataProvider_Settings*)(cast(size_t)&this + 12); }
			ScriptClass SearchResultsProviderClass() { return *cast(ScriptClass*)(cast(size_t)&this + 8); }
			ScriptClass DefaultGameSettingsClass() { return *cast(ScriptClass*)(cast(size_t)&this + 4); }
			ScriptClass GameSearchClass() { return *cast(ScriptClass*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UIDataStore_OnlineGameSearch.GameSearchCfg) GameSearchCfgList() { return *cast(ScriptArray!(UIDataStore_OnlineGameSearch.GameSearchCfg)*)(cast(size_t)cast(void*)this + 148); }
		int ActiveSearchIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 164); }
		int SelectedIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
		OnlineSubsystem OnlineSub() { return *cast(OnlineSubsystem*)(cast(size_t)cast(void*)this + 136); }
		ScriptName SearchResultsName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 128); }
		UObject.Pointer VfTable_IUIListElementCellProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 124); }
		UObject.Pointer VfTable_IUIListElementProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 120); }
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
	bool SubmitGameSearch(ubyte ControllerIndex, bool bInvalidateExistingSearchResults)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = ControllerIndex;
		*cast(bool*)&params[4] = bInvalidateExistingSearchResults;
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
	bool GetSearchResultFromIndex(int ListIndex, OnlineGameSearch.OnlineGameSearchResult* Result)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ListIndex;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)&params[4] = *Result;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSearchResultFromIndex, params.ptr, cast(void*)0);
		*Result = *cast(OnlineGameSearch.OnlineGameSearchResult*)&params[4];
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
	void SetCurrentByIndex(int NewIndex, bool bInvalidateExistingSearchResults)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = NewIndex;
		*cast(bool*)&params[4] = bInvalidateExistingSearchResults;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCurrentByIndex, params.ptr, cast(void*)0);
	}
	void SetCurrentByName(ScriptName SearchName, bool bInvalidateExistingSearchResults)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SearchName;
		*cast(bool*)&params[8] = bInvalidateExistingSearchResults;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCurrentByName, params.ptr, cast(void*)0);
	}
	void MoveToNext(bool bInvalidateExistingSearchResults)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInvalidateExistingSearchResults;
		(cast(ScriptObject)this).ProcessEvent(Functions.MoveToNext, params.ptr, cast(void*)0);
	}
	void MoveToPrevious(bool bInvalidateExistingSearchResults)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInvalidateExistingSearchResults;
		(cast(ScriptObject)this).ProcessEvent(Functions.MoveToPrevious, params.ptr, cast(void*)0);
	}
	void ClearAllSearchResults()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearAllSearchResults, cast(void*)0, cast(void*)0);
	}
}
