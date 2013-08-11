module UnrealScript.Engine.UIDataStore_OnlineGameSearch;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineGameSearch;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataStore_Remote;
import UnrealScript.Engine.UIDataProvider_Settings;

extern(C++) interface UIDataStore_OnlineGameSearch : UIDataStore_Remote
{
	struct GameSearchCfg
	{
		public @property final auto ref ScriptArray!(UIDataProvider_Settings) SearchResults() { return *cast(ScriptArray!(UIDataProvider_Settings)*)(cast(size_t)&this + 16); }
		private ubyte __SearchResults[12];
		public @property final auto ref ScriptName SearchName() { return *cast(ScriptName*)(cast(size_t)&this + 32); }
		private ubyte __SearchName[8];
		public @property final auto ref OnlineGameSearch Search() { return *cast(OnlineGameSearch*)(cast(size_t)&this + 28); }
		private ubyte __Search[4];
		public @property final auto ref UIDataProvider_Settings DesiredSettingsProvider() { return *cast(UIDataProvider_Settings*)(cast(size_t)&this + 12); }
		private ubyte __DesiredSettingsProvider[4];
		public @property final auto ref ScriptClass SearchResultsProviderClass() { return *cast(ScriptClass*)(cast(size_t)&this + 8); }
		private ubyte __SearchResultsProviderClass[4];
		public @property final auto ref ScriptClass DefaultGameSettingsClass() { return *cast(ScriptClass*)(cast(size_t)&this + 4); }
		private ubyte __DefaultGameSettingsClass[4];
		public @property final auto ref ScriptClass GameSearchClass() { return *cast(ScriptClass*)(cast(size_t)&this + 0); }
		private ubyte __GameSearchClass[4];
	}
	public @property final auto ref ScriptArray!(UIDataStore_OnlineGameSearch.GameSearchCfg) GameSearchCfgList() { return *cast(ScriptArray!(UIDataStore_OnlineGameSearch.GameSearchCfg)*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref int ActiveSearchIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref int SelectedIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref OnlineSubsystem OnlineSub() { return *cast(OnlineSubsystem*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref ScriptName SearchResultsName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref UObject.Pointer VfTable_IUIListElementCellProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref UObject.Pointer VfTable_IUIListElementProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 120); }
	final void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28644], cast(void*)0, cast(void*)0);
	}
	final bool InvalidateCurrentSearchResults()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28645], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool SubmitGameSearch(ubyte ControllerIndex, bool bInvalidateExistingSearchResults)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = ControllerIndex;
		*cast(bool*)&params[4] = bInvalidateExistingSearchResults;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28649], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool OverrideQuerySubmission(ubyte ControllerId, OnlineGameSearch Search)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = ControllerId;
		*cast(OnlineGameSearch*)&params[4] = Search;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28653], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void OnSearchComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28657], params.ptr, cast(void*)0);
	}
	final bool GetSearchResultFromIndex(int ListIndex, OnlineGameSearch.OnlineGameSearchResult* Result)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ListIndex;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)&params[4] = *Result;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28659], params.ptr, cast(void*)0);
		*Result = *cast(OnlineGameSearch.OnlineGameSearchResult*)&params[4];
		return *cast(bool*)&params[12];
	}
	final bool ShowHostGamercard(ubyte ControllerIndex, int ListIndex)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = ControllerIndex;
		*cast(int*)&params[4] = ListIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28663], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void BuildSearchResults()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28669], cast(void*)0, cast(void*)0);
	}
	final OnlineGameSearch GetCurrentGameSearch()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28670], params.ptr, cast(void*)0);
		return *cast(OnlineGameSearch*)params.ptr;
	}
	final OnlineGameSearch GetActiveGameSearch()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28672], params.ptr, cast(void*)0);
		return *cast(OnlineGameSearch*)params.ptr;
	}
	final int FindSearchConfigurationIndex(ScriptName SearchTag)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SearchTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28674], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void SetCurrentByIndex(int NewIndex, bool bInvalidateExistingSearchResults)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = NewIndex;
		*cast(bool*)&params[4] = bInvalidateExistingSearchResults;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28678], params.ptr, cast(void*)0);
	}
	final void SetCurrentByName(ScriptName SearchName, bool bInvalidateExistingSearchResults)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SearchName;
		*cast(bool*)&params[8] = bInvalidateExistingSearchResults;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28681], params.ptr, cast(void*)0);
	}
	final void MoveToNext(bool bInvalidateExistingSearchResults)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInvalidateExistingSearchResults;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28685], params.ptr, cast(void*)0);
	}
	final void MoveToPrevious(bool bInvalidateExistingSearchResults)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInvalidateExistingSearchResults;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28687], params.ptr, cast(void*)0);
	}
	final void ClearAllSearchResults()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28689], cast(void*)0, cast(void*)0);
	}
}
