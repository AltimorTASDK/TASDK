module UnrealScript.UTGame.GFxUDKFrontEnd_JoinGame;

import ScriptClasses;
import UnrealScript.Helpers;
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
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.GFxUDKFrontEnd_JoinGame")); }
	private static __gshared GFxUDKFrontEnd_JoinGame mDefaultProperties;
	@property final static GFxUDKFrontEnd_JoinGame DefaultProperties() { mixin(MGDPC("GFxUDKFrontEnd_JoinGame", "GFxUDKFrontEnd_JoinGame UTGame.Default__GFxUDKFrontEnd_JoinGame")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnViewLoaded;
			ScriptFunction mOnViewActivated;
			ScriptFunction mForceLANOption;
			ScriptFunction mUpdateFilterButton;
			ScriptFunction mOnTopMostView;
			ScriptFunction mOnViewClosed;
			ScriptFunction mDisableSubComponents;
			ScriptFunction mValidateServerType;
			ScriptFunction mCleanup;
			ScriptFunction mGetGameTypeSearchProviderIndex;
			ScriptFunction mOnGameTypeChanged;
			ScriptFunction mConditionalRefreshServerList;
			ScriptFunction mUseLANMode;
			ScriptFunction mUpdateButtonStates;
			ScriptFunction mPromptForServerPassword;
			ScriptFunction mStripInvalidPasswordCharacters;
			ScriptFunction mOnPasswordDialog_OK;
			ScriptFunction mProcessJoin;
			ScriptFunction mUpdateServerCount;
			ScriptFunction mBuildJoinURL;
			ScriptFunction mRefreshServerList;
			ScriptFunction mSubmitServerListQuery;
			ScriptFunction mOnFindOnlineGamesCompleteDelegate;
			ScriptFunction mOnFindOnlineGamesComplete;
			ScriptFunction mGetDesiredMatchType;
			ScriptFunction mOnRefreshButtonPress;
			ScriptFunction mOnFilterButtonPress;
			ScriptFunction mServerFilterChangedGameType;
			ScriptFunction mUpdateListDataProvider;
			ScriptFunction mOnServerHeaderPress;
			ScriptFunction mOnMapHeaderPress;
			ScriptFunction mOnPlayersHeaderPress;
			ScriptFunction mOnPingHeaderPress;
			ScriptFunction mOnServerListItemPress;
			ScriptFunction mSpectateServer;
			ScriptFunction mJoinServerClikListener;
			ScriptFunction mJoinServer;
			ScriptFunction mOnJoinGameComplete;
			ScriptFunction mAllowJoinServer;
			ScriptFunction mCancelQuery;
			ScriptFunction mSetRefreshing;
			ScriptFunction mOnCancelSearchComplete;
			ScriptFunction mNotifyGameTypeChanged;
			ScriptFunction mWidgetInitialized;
		}
		public @property static final
		{
			ScriptFunction OnViewLoaded() { mixin(MGF("mOnViewLoaded", "Function UTGame.GFxUDKFrontEnd_JoinGame.OnViewLoaded")); }
			ScriptFunction OnViewActivated() { mixin(MGF("mOnViewActivated", "Function UTGame.GFxUDKFrontEnd_JoinGame.OnViewActivated")); }
			ScriptFunction ForceLANOption() { mixin(MGF("mForceLANOption", "Function UTGame.GFxUDKFrontEnd_JoinGame.ForceLANOption")); }
			ScriptFunction UpdateFilterButton() { mixin(MGF("mUpdateFilterButton", "Function UTGame.GFxUDKFrontEnd_JoinGame.UpdateFilterButton")); }
			ScriptFunction OnTopMostView() { mixin(MGF("mOnTopMostView", "Function UTGame.GFxUDKFrontEnd_JoinGame.OnTopMostView")); }
			ScriptFunction OnViewClosed() { mixin(MGF("mOnViewClosed", "Function UTGame.GFxUDKFrontEnd_JoinGame.OnViewClosed")); }
			ScriptFunction DisableSubComponents() { mixin(MGF("mDisableSubComponents", "Function UTGame.GFxUDKFrontEnd_JoinGame.DisableSubComponents")); }
			ScriptFunction ValidateServerType() { mixin(MGF("mValidateServerType", "Function UTGame.GFxUDKFrontEnd_JoinGame.ValidateServerType")); }
			ScriptFunction Cleanup() { mixin(MGF("mCleanup", "Function UTGame.GFxUDKFrontEnd_JoinGame.Cleanup")); }
			ScriptFunction GetGameTypeSearchProviderIndex() { mixin(MGF("mGetGameTypeSearchProviderIndex", "Function UTGame.GFxUDKFrontEnd_JoinGame.GetGameTypeSearchProviderIndex")); }
			ScriptFunction OnGameTypeChanged() { mixin(MGF("mOnGameTypeChanged", "Function UTGame.GFxUDKFrontEnd_JoinGame.OnGameTypeChanged")); }
			ScriptFunction ConditionalRefreshServerList() { mixin(MGF("mConditionalRefreshServerList", "Function UTGame.GFxUDKFrontEnd_JoinGame.ConditionalRefreshServerList")); }
			ScriptFunction UseLANMode() { mixin(MGF("mUseLANMode", "Function UTGame.GFxUDKFrontEnd_JoinGame.UseLANMode")); }
			ScriptFunction UpdateButtonStates() { mixin(MGF("mUpdateButtonStates", "Function UTGame.GFxUDKFrontEnd_JoinGame.UpdateButtonStates")); }
			ScriptFunction PromptForServerPassword() { mixin(MGF("mPromptForServerPassword", "Function UTGame.GFxUDKFrontEnd_JoinGame.PromptForServerPassword")); }
			ScriptFunction StripInvalidPasswordCharacters() { mixin(MGF("mStripInvalidPasswordCharacters", "Function UTGame.GFxUDKFrontEnd_JoinGame.StripInvalidPasswordCharacters")); }
			ScriptFunction OnPasswordDialog_OK() { mixin(MGF("mOnPasswordDialog_OK", "Function UTGame.GFxUDKFrontEnd_JoinGame.OnPasswordDialog_OK")); }
			ScriptFunction ProcessJoin() { mixin(MGF("mProcessJoin", "Function UTGame.GFxUDKFrontEnd_JoinGame.ProcessJoin")); }
			ScriptFunction UpdateServerCount() { mixin(MGF("mUpdateServerCount", "Function UTGame.GFxUDKFrontEnd_JoinGame.UpdateServerCount")); }
			ScriptFunction BuildJoinURL() { mixin(MGF("mBuildJoinURL", "Function UTGame.GFxUDKFrontEnd_JoinGame.BuildJoinURL")); }
			ScriptFunction RefreshServerList() { mixin(MGF("mRefreshServerList", "Function UTGame.GFxUDKFrontEnd_JoinGame.RefreshServerList")); }
			ScriptFunction SubmitServerListQuery() { mixin(MGF("mSubmitServerListQuery", "Function UTGame.GFxUDKFrontEnd_JoinGame.SubmitServerListQuery")); }
			ScriptFunction OnFindOnlineGamesCompleteDelegate() { mixin(MGF("mOnFindOnlineGamesCompleteDelegate", "Function UTGame.GFxUDKFrontEnd_JoinGame.OnFindOnlineGamesCompleteDelegate")); }
			ScriptFunction OnFindOnlineGamesComplete() { mixin(MGF("mOnFindOnlineGamesComplete", "Function UTGame.GFxUDKFrontEnd_JoinGame.OnFindOnlineGamesComplete")); }
			ScriptFunction GetDesiredMatchType() { mixin(MGF("mGetDesiredMatchType", "Function UTGame.GFxUDKFrontEnd_JoinGame.GetDesiredMatchType")); }
			ScriptFunction OnRefreshButtonPress() { mixin(MGF("mOnRefreshButtonPress", "Function UTGame.GFxUDKFrontEnd_JoinGame.OnRefreshButtonPress")); }
			ScriptFunction OnFilterButtonPress() { mixin(MGF("mOnFilterButtonPress", "Function UTGame.GFxUDKFrontEnd_JoinGame.OnFilterButtonPress")); }
			ScriptFunction ServerFilterChangedGameType() { mixin(MGF("mServerFilterChangedGameType", "Function UTGame.GFxUDKFrontEnd_JoinGame.ServerFilterChangedGameType")); }
			ScriptFunction UpdateListDataProvider() { mixin(MGF("mUpdateListDataProvider", "Function UTGame.GFxUDKFrontEnd_JoinGame.UpdateListDataProvider")); }
			ScriptFunction OnServerHeaderPress() { mixin(MGF("mOnServerHeaderPress", "Function UTGame.GFxUDKFrontEnd_JoinGame.OnServerHeaderPress")); }
			ScriptFunction OnMapHeaderPress() { mixin(MGF("mOnMapHeaderPress", "Function UTGame.GFxUDKFrontEnd_JoinGame.OnMapHeaderPress")); }
			ScriptFunction OnPlayersHeaderPress() { mixin(MGF("mOnPlayersHeaderPress", "Function UTGame.GFxUDKFrontEnd_JoinGame.OnPlayersHeaderPress")); }
			ScriptFunction OnPingHeaderPress() { mixin(MGF("mOnPingHeaderPress", "Function UTGame.GFxUDKFrontEnd_JoinGame.OnPingHeaderPress")); }
			ScriptFunction OnServerListItemPress() { mixin(MGF("mOnServerListItemPress", "Function UTGame.GFxUDKFrontEnd_JoinGame.OnServerListItemPress")); }
			ScriptFunction SpectateServer() { mixin(MGF("mSpectateServer", "Function UTGame.GFxUDKFrontEnd_JoinGame.SpectateServer")); }
			ScriptFunction JoinServerClikListener() { mixin(MGF("mJoinServerClikListener", "Function UTGame.GFxUDKFrontEnd_JoinGame.JoinServerClikListener")); }
			ScriptFunction JoinServer() { mixin(MGF("mJoinServer", "Function UTGame.GFxUDKFrontEnd_JoinGame.JoinServer")); }
			ScriptFunction OnJoinGameComplete() { mixin(MGF("mOnJoinGameComplete", "Function UTGame.GFxUDKFrontEnd_JoinGame.OnJoinGameComplete")); }
			ScriptFunction AllowJoinServer() { mixin(MGF("mAllowJoinServer", "Function UTGame.GFxUDKFrontEnd_JoinGame.AllowJoinServer")); }
			ScriptFunction CancelQuery() { mixin(MGF("mCancelQuery", "Function UTGame.GFxUDKFrontEnd_JoinGame.CancelQuery")); }
			ScriptFunction SetRefreshing() { mixin(MGF("mSetRefreshing", "Function UTGame.GFxUDKFrontEnd_JoinGame.SetRefreshing")); }
			ScriptFunction OnCancelSearchComplete() { mixin(MGF("mOnCancelSearchComplete", "Function UTGame.GFxUDKFrontEnd_JoinGame.OnCancelSearchComplete")); }
			ScriptFunction NotifyGameTypeChanged() { mixin(MGF("mNotifyGameTypeChanged", "Function UTGame.GFxUDKFrontEnd_JoinGame.NotifyGameTypeChanged")); }
			ScriptFunction WidgetInitialized() { mixin(MGF("mWidgetInitialized", "Function UTGame.GFxUDKFrontEnd_JoinGame.WidgetInitialized")); }
		}
	}
	static struct Constants
	{
		enum
		{
			SERVERBROWSER_SERVERTYPE_RANKED = 2,
			SERVERBROWSER_SERVERTYPE_UNRANKED = 1,
			SERVERBROWSER_SERVERTYPE_LAN = 0,
		}
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
			UDKDataStore_GameSearchBase SearchDataStore() { mixin(MGPC("UDKDataStore_GameSearchBase", 220)); }
			ScriptName SearchDSName() { mixin(MGPC("ScriptName", 264)); }
			UTUIDataStore_StringList StringListDataStore() { mixin(MGPC("UTUIDataStore_StringList", 224)); }
			UTUIDataStore_MenuItems MenuItemDataStore() { mixin(MGPC("UTUIDataStore_MenuItems", 244)); }
			OnlineSubsystem OnlineSub() { mixin(MGPC("OnlineSubsystem", 248)); }
			// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'GameInterface'!
			GFxClikWidget FlagsHeaderBtn() { mixin(MGPC("GFxClikWidget", 328)); }
			GFxClikWidget ServerHeaderBtn() { mixin(MGPC("GFxClikWidget", 332)); }
			GFxClikWidget MapHeaderBtn() { mixin(MGPC("GFxClikWidget", 336)); }
			GFxClikWidget PlayersHeaderBtn() { mixin(MGPC("GFxClikWidget", 340)); }
			GFxClikWidget PingHeaderBtn() { mixin(MGPC("GFxClikWidget", 344)); }
			GFxClikWidget RefreshBtn() { mixin(MGPC("GFxClikWidget", 320)); }
			GFxClikWidget ServerListMC() { mixin(MGPC("GFxClikWidget", 316)); }
			GFxObject FilterMatchTypeTxt() { mixin(MGPC("GFxObject", 348)); }
			GFxObject FilterGameModeTxt() { mixin(MGPC("GFxObject", 352)); }
			GFxUDKFrontEnd_PasswordDialog PasswordDialog() { mixin(MGPC("GFxUDKFrontEnd_PasswordDialog", 272)); }
			ScriptString ServerPassword() { mixin(MGPC("ScriptString", 284)); }
			GFxObject StatusTxt() { mixin(MGPC("GFxObject", 356)); }
			GFxObject ServerCountTxt() { mixin(MGPC("GFxObject", 364)); }
			GFxUDKFrontEnd_JoinGame.EQueryCompletionAction QueryCompletionAction() { mixin(MGPC("GFxUDKFrontEnd_JoinGame.EQueryCompletionAction", 280)); }
			ScriptArray!(OnlineGameSearch.OnlineGameSearchResult) ServerInfoList() { mixin(MGPC("ScriptArray!(OnlineGameSearch.OnlineGameSearchResult)", 232)); }
			GFxObject HeaderBarMC() { mixin(MGPC("GFxObject", 324)); }
			int SelectedIndex() { mixin(MGPC("int", 372)); }
			GFxUDKFrontEnd_JoinDialog JoinDialogMC() { mixin(MGPC("GFxUDKFrontEnd_JoinDialog", 276)); }
			GFxObject LoadingTickerMC() { mixin(MGPC("GFxObject", 360)); }
			GFxObject MenuMC() { mixin(MGPC("GFxObject", 312)); }
			GFxClikWidget FilterBtn() { mixin(MGPC("GFxClikWidget", 368)); }
			UTDataStore_GameSearchDM SearchDMDataStore() { mixin(MGPC("UTDataStore_GameSearchDM", 228)); }
			int LastServerAdded() { mixin(MGPC("int", 296)); }
			ScriptArray!(UDKUIDataProvider_SearchResult) ServerListData() { mixin(MGPC("ScriptArray!(UDKUIDataProvider_SearchResult)", 300)); }
		}
		bool bGametypeOutdated() { mixin(MGBPC(260, 0x1)); }
		bool bGametypeOutdated(bool val) { mixin(MSBPC(260, 0x1)); }
		bool bIssuedInitialQuery() { mixin(MGBPC(260, 0x4)); }
		bool bIssuedInitialQuery(bool val) { mixin(MSBPC(260, 0x4)); }
		bool bSpectate() { mixin(MGBPC(260, 0x2)); }
		bool bSpectate(bool val) { mixin(MSBPC(260, 0x2)); }
		bool bQueryDialogShowing() { mixin(MGBPC(260, 0x8)); }
		bool bQueryDialogShowing(bool val) { mixin(MSBPC(260, 0x8)); }
		bool bJoinDialogShowing() { mixin(MGBPC(260, 0x10)); }
		bool bJoinDialogShowing(bool val) { mixin(MSBPC(260, 0x10)); }
		bool bProcessingJoin() { mixin(MGBPC(260, 0x20)); }
		bool bProcessingJoin(bool val) { mixin(MSBPC(260, 0x20)); }
	}
final:
	void OnViewLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewLoaded, cast(void*)0, cast(void*)0);
	}
	void OnViewActivated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewActivated, cast(void*)0, cast(void*)0);
	}
	void ForceLANOption(int PlayerIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceLANOption, params.ptr, cast(void*)0);
	}
	void UpdateFilterButton()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateFilterButton, cast(void*)0, cast(void*)0);
	}
	void OnTopMostView(bool* bPlayOpenAnimation = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bPlayOpenAnimation !is null)
			*cast(bool*)params.ptr = *bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTopMostView, params.ptr, cast(void*)0);
	}
	void OnViewClosed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewClosed, cast(void*)0, cast(void*)0);
	}
	void DisableSubComponents(bool bDisableComponents)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDisableComponents;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisableSubComponents, params.ptr, cast(void*)0);
	}
	void ValidateServerType()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ValidateServerType, cast(void*)0, cast(void*)0);
	}
	void Cleanup()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Cleanup, cast(void*)0, cast(void*)0);
	}
	int GetGameTypeSearchProviderIndex(ScriptString* GameClassName = null)
	{
		ubyte params[16];
		params[] = 0;
		if (GameClassName !is null)
			*cast(ScriptString*)params.ptr = *GameClassName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGameTypeSearchProviderIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	void OnGameTypeChanged(int* PlayerIndex = null)
	{
		ubyte params[4];
		params[] = 0;
		if (PlayerIndex !is null)
			*cast(int*)params.ptr = *PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnGameTypeChanged, params.ptr, cast(void*)0);
	}
	void ConditionalRefreshServerList(int PlayerIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConditionalRefreshServerList, params.ptr, cast(void*)0);
	}
	void UseLANMode()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UseLANMode, cast(void*)0, cast(void*)0);
	}
	void UpdateButtonStates()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateButtonStates, cast(void*)0, cast(void*)0);
	}
	void PromptForServerPassword()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PromptForServerPassword, cast(void*)0, cast(void*)0);
	}
	static ScriptString StripInvalidPasswordCharacters(ScriptString PasswordString, ScriptString* InvalidChars = null)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PasswordString;
		if (InvalidChars !is null)
			*cast(ScriptString*)&params[12] = *InvalidChars;
		StaticClass.ProcessEvent(Functions.StripInvalidPasswordCharacters, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[24];
	}
	void OnPasswordDialog_OK(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPasswordDialog_OK, params.ptr, cast(void*)0);
	}
	void ProcessJoin()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessJoin, cast(void*)0, cast(void*)0);
	}
	void UpdateServerCount()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateServerCount, cast(void*)0, cast(void*)0);
	}
	ScriptString BuildJoinURL(ScriptString ResolvedConnectionURL)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ResolvedConnectionURL;
		(cast(ScriptObject)this).ProcessEvent(Functions.BuildJoinURL, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	void RefreshServerList(int InPlayerIndex, int* MaxResults = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = InPlayerIndex;
		if (MaxResults !is null)
			*cast(int*)&params[4] = *MaxResults;
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshServerList, params.ptr, cast(void*)0);
	}
	void SubmitServerListQuery(int PlayerIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SubmitServerListQuery, params.ptr, cast(void*)0);
	}
	void OnFindOnlineGamesCompleteDelegate(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFindOnlineGamesCompleteDelegate, params.ptr, cast(void*)0);
	}
	void OnFindOnlineGamesComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFindOnlineGamesComplete, params.ptr, cast(void*)0);
	}
	int GetDesiredMatchType()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDesiredMatchType, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void OnRefreshButtonPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnRefreshButtonPress, params.ptr, cast(void*)0);
	}
	void OnFilterButtonPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFilterButtonPress, params.ptr, cast(void*)0);
	}
	void ServerFilterChangedGameType()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerFilterChangedGameType, cast(void*)0, cast(void*)0);
	}
	void UpdateListDataProvider()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateListDataProvider, cast(void*)0, cast(void*)0);
	}
	void OnServerHeaderPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnServerHeaderPress, params.ptr, cast(void*)0);
	}
	void OnMapHeaderPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnMapHeaderPress, params.ptr, cast(void*)0);
	}
	void OnPlayersHeaderPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPlayersHeaderPress, params.ptr, cast(void*)0);
	}
	void OnPingHeaderPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPingHeaderPress, params.ptr, cast(void*)0);
	}
	void OnServerListItemPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnServerListItemPress, params.ptr, cast(void*)0);
	}
	void SpectateServer(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpectateServer, params.ptr, cast(void*)0);
	}
	void JoinServerClikListener(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.JoinServerClikListener, params.ptr, cast(void*)0);
	}
	void JoinServer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.JoinServer, cast(void*)0, cast(void*)0);
	}
	void OnJoinGameComplete(ScriptName SessionName, bool bSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnJoinGameComplete, params.ptr, cast(void*)0);
	}
	bool AllowJoinServer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowJoinServer, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void CancelQuery(GFxUDKFrontEnd_JoinGame.EQueryCompletionAction* DesiredCancelAction = null)
	{
		ubyte params[1];
		params[] = 0;
		if (DesiredCancelAction !is null)
			*cast(GFxUDKFrontEnd_JoinGame.EQueryCompletionAction*)params.ptr = *DesiredCancelAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.CancelQuery, params.ptr, cast(void*)0);
	}
	void SetRefreshing(bool IsRefreshing)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = IsRefreshing;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRefreshing, params.ptr, cast(void*)0);
	}
	void OnCancelSearchComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCancelSearchComplete, params.ptr, cast(void*)0);
	}
	void NotifyGameTypeChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyGameTypeChanged, cast(void*)0, cast(void*)0);
	}
	bool WidgetInitialized(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(Functions.WidgetInitialized, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
}
