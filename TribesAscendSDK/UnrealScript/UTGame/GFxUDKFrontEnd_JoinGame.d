module UnrealScript.UTGame.GFxUDKFrontEnd_JoinGame;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.UTGame.GFxUDKFrontEnd_PasswordDialog;
import UnrealScript.UTGame.GFxUDKFrontEnd_Screen;
import UnrealScript.UTGame.UTUIDataStore_MenuItems;
import UnrealScript.Engine.OnlineGameSearch;
import UnrealScript.UDKBase.UDKDataStore_GameSearchBase;
import UnrealScript.UDKBase.UDKUIDataProvider_SearchResult;
import UnrealScript.UTGame.UTUIDataStore_StringList;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.UTGame.GFxUDKFrontEnd_JoinDialog;
import UnrealScript.UTGame.UTDataStore_GameSearchDM;

extern(C++) interface GFxUDKFrontEnd_JoinGame : GFxUDKFrontEnd_Screen
{
public extern(D):
	enum
	{
		SERVERBROWSER_SERVERTYPE_RANKED = 2,
		SERVERBROWSER_SERVERTYPE_UNRANKED = 1,
		SERVERBROWSER_SERVERTYPE_LAN = 0,
	}
	enum EQueryCompletionAction : ubyte
	{
		QUERYACTION_None = 0,
		QUERYACTION_Default = 1,
		QUERYACTION_CloseScene = 2,
		QUERYACTION_JoinServer = 3,
		QUERYACTION_RefreshAll = 4,
		QUERYACTION_MAX = 5,
	}
	@property final
	{
		auto ref
		{
			UDKDataStore_GameSearchBase SearchDataStore() { return *cast(UDKDataStore_GameSearchBase*)(cast(size_t)cast(void*)this + 220); }
			ScriptName SearchDSName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 264); }
			UTUIDataStore_StringList StringListDataStore() { return *cast(UTUIDataStore_StringList*)(cast(size_t)cast(void*)this + 224); }
			UTUIDataStore_MenuItems MenuItemDataStore() { return *cast(UTUIDataStore_MenuItems*)(cast(size_t)cast(void*)this + 244); }
			OnlineSubsystem OnlineSub() { return *cast(OnlineSubsystem*)(cast(size_t)cast(void*)this + 248); }
			GFxClikWidget FlagsHeaderBtn() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 328); }
			GFxClikWidget ServerHeaderBtn() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 332); }
			GFxClikWidget MapHeaderBtn() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 336); }
			GFxClikWidget PlayersHeaderBtn() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 340); }
			GFxClikWidget PingHeaderBtn() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 344); }
			GFxClikWidget RefreshBtn() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 320); }
			GFxClikWidget ServerListMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 316); }
			GFxObject FilterMatchTypeTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 348); }
			GFxObject FilterGameModeTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 352); }
			GFxUDKFrontEnd_PasswordDialog PasswordDialog() { return *cast(GFxUDKFrontEnd_PasswordDialog*)(cast(size_t)cast(void*)this + 272); }
			ScriptString ServerPassword() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 284); }
			GFxObject StatusTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 356); }
			GFxObject ServerCountTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 364); }
			GFxUDKFrontEnd_JoinGame.EQueryCompletionAction QueryCompletionAction() { return *cast(GFxUDKFrontEnd_JoinGame.EQueryCompletionAction*)(cast(size_t)cast(void*)this + 280); }
			ScriptArray!(OnlineGameSearch.OnlineGameSearchResult) ServerInfoList() { return *cast(ScriptArray!(OnlineGameSearch.OnlineGameSearchResult)*)(cast(size_t)cast(void*)this + 232); }
			GFxObject HeaderBarMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 324); }
			int SelectedIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 372); }
			GFxUDKFrontEnd_JoinDialog JoinDialogMC() { return *cast(GFxUDKFrontEnd_JoinDialog*)(cast(size_t)cast(void*)this + 276); }
			GFxObject LoadingTickerMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 360); }
			GFxObject MenuMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 312); }
			GFxClikWidget FilterBtn() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 368); }
			UTDataStore_GameSearchDM SearchDMDataStore() { return *cast(UTDataStore_GameSearchDM*)(cast(size_t)cast(void*)this + 228); }
			int LastServerAdded() { return *cast(int*)(cast(size_t)cast(void*)this + 296); }
			ScriptArray!(UDKUIDataProvider_SearchResult) ServerListData() { return *cast(ScriptArray!(UDKUIDataProvider_SearchResult)*)(cast(size_t)cast(void*)this + 300); }
		}
		bool bGametypeOutdated() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x1) != 0; }
		bool bGametypeOutdated(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x1; } return val; }
		bool bIssuedInitialQuery() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x4) != 0; }
		bool bIssuedInitialQuery(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x4; } return val; }
		bool bSpectate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x2) != 0; }
		bool bSpectate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x2; } return val; }
		bool bQueryDialogShowing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x8) != 0; }
		bool bQueryDialogShowing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x8; } return val; }
		bool bJoinDialogShowing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x10) != 0; }
		bool bJoinDialogShowing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x10; } return val; }
		bool bProcessingJoin() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x20) != 0; }
		bool bProcessingJoin(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x20; } return val; }
	}
final:
	void OnViewLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38414], cast(void*)0, cast(void*)0);
	}
	void OnViewActivated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38421], cast(void*)0, cast(void*)0);
	}
	void ForceLANOption(int PlayerIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38429], params.ptr, cast(void*)0);
	}
	void UpdateFilterButton()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38430], cast(void*)0, cast(void*)0);
	}
	void OnTopMostView(bool bPlayOpenAnimation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38431], params.ptr, cast(void*)0);
	}
	void OnViewClosed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38434], cast(void*)0, cast(void*)0);
	}
	void DisableSubComponents(bool bDisableComponents)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDisableComponents;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38435], params.ptr, cast(void*)0);
	}
	void ValidateServerType()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38438], cast(void*)0, cast(void*)0);
	}
	void Cleanup()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38444], cast(void*)0, cast(void*)0);
	}
	int GetGameTypeSearchProviderIndex(ScriptString GameClassName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = GameClassName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38450], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	void OnGameTypeChanged(int PlayerIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38455], params.ptr, cast(void*)0);
	}
	void ConditionalRefreshServerList(int PlayerIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38459], params.ptr, cast(void*)0);
	}
	void UseLANMode()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38463], cast(void*)0, cast(void*)0);
	}
	void UpdateButtonStates()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38464], cast(void*)0, cast(void*)0);
	}
	void PromptForServerPassword()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38466], cast(void*)0, cast(void*)0);
	}
	ScriptString StripInvalidPasswordCharacters(ScriptString PasswordString, ScriptString InvalidChars)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PasswordString;
		*cast(ScriptString*)&params[12] = InvalidChars;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38468], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[24];
	}
	void OnPasswordDialog_OK(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38473], params.ptr, cast(void*)0);
	}
	void ProcessJoin()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38479], cast(void*)0, cast(void*)0);
	}
	void UpdateServerCount()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38480], cast(void*)0, cast(void*)0);
	}
	ScriptString BuildJoinURL(ScriptString ResolvedConnectionURL)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ResolvedConnectionURL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38485], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	void RefreshServerList(int InPlayerIndex, int MaxResults)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = InPlayerIndex;
		*cast(int*)&params[4] = MaxResults;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38490], params.ptr, cast(void*)0);
	}
	void SubmitServerListQuery(int PlayerIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38495], params.ptr, cast(void*)0);
	}
	void OnFindOnlineGamesCompleteDelegate(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38497], params.ptr, cast(void*)0);
	}
	void OnFindOnlineGamesComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38500], params.ptr, cast(void*)0);
	}
	int GetDesiredMatchType()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38504], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void OnRefreshButtonPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38506], params.ptr, cast(void*)0);
	}
	void OnFilterButtonPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38508], params.ptr, cast(void*)0);
	}
	void ServerFilterChangedGameType()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38511], cast(void*)0, cast(void*)0);
	}
	void UpdateListDataProvider()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38512], cast(void*)0, cast(void*)0);
	}
	void OnServerHeaderPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38523], params.ptr, cast(void*)0);
	}
	void OnMapHeaderPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38525], params.ptr, cast(void*)0);
	}
	void OnPlayersHeaderPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38527], params.ptr, cast(void*)0);
	}
	void OnPingHeaderPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38529], params.ptr, cast(void*)0);
	}
	void OnServerListItemPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38531], params.ptr, cast(void*)0);
	}
	void SpectateServer(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38538], params.ptr, cast(void*)0);
	}
	void JoinServerClikListener(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38540], params.ptr, cast(void*)0);
	}
	void JoinServer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38542], cast(void*)0, cast(void*)0);
	}
	void OnJoinGameComplete(ScriptName SessionName, bool bSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38550], params.ptr, cast(void*)0);
	}
	bool AllowJoinServer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38555], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void CancelQuery(GFxUDKFrontEnd_JoinGame.EQueryCompletionAction DesiredCancelAction)
	{
		ubyte params[1];
		params[] = 0;
		*cast(GFxUDKFrontEnd_JoinGame.EQueryCompletionAction*)params.ptr = DesiredCancelAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38558], params.ptr, cast(void*)0);
	}
	void SetRefreshing(bool IsRefreshing)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = IsRefreshing;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38560], params.ptr, cast(void*)0);
	}
	void OnCancelSearchComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38563], params.ptr, cast(void*)0);
	}
	void NotifyGameTypeChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38567], cast(void*)0, cast(void*)0);
	}
	bool WidgetInitialized(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38568], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
}
