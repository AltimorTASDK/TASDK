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
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.GFxUDKFrontEnd_JoinGame")); }
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
			ScriptFunction OnViewLoaded() { return mOnViewLoaded ? mOnViewLoaded : (mOnViewLoaded = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.OnViewLoaded")); }
			ScriptFunction OnViewActivated() { return mOnViewActivated ? mOnViewActivated : (mOnViewActivated = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.OnViewActivated")); }
			ScriptFunction ForceLANOption() { return mForceLANOption ? mForceLANOption : (mForceLANOption = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.ForceLANOption")); }
			ScriptFunction UpdateFilterButton() { return mUpdateFilterButton ? mUpdateFilterButton : (mUpdateFilterButton = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.UpdateFilterButton")); }
			ScriptFunction OnTopMostView() { return mOnTopMostView ? mOnTopMostView : (mOnTopMostView = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.OnTopMostView")); }
			ScriptFunction OnViewClosed() { return mOnViewClosed ? mOnViewClosed : (mOnViewClosed = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.OnViewClosed")); }
			ScriptFunction DisableSubComponents() { return mDisableSubComponents ? mDisableSubComponents : (mDisableSubComponents = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.DisableSubComponents")); }
			ScriptFunction ValidateServerType() { return mValidateServerType ? mValidateServerType : (mValidateServerType = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.ValidateServerType")); }
			ScriptFunction Cleanup() { return mCleanup ? mCleanup : (mCleanup = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.Cleanup")); }
			ScriptFunction GetGameTypeSearchProviderIndex() { return mGetGameTypeSearchProviderIndex ? mGetGameTypeSearchProviderIndex : (mGetGameTypeSearchProviderIndex = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.GetGameTypeSearchProviderIndex")); }
			ScriptFunction OnGameTypeChanged() { return mOnGameTypeChanged ? mOnGameTypeChanged : (mOnGameTypeChanged = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.OnGameTypeChanged")); }
			ScriptFunction ConditionalRefreshServerList() { return mConditionalRefreshServerList ? mConditionalRefreshServerList : (mConditionalRefreshServerList = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.ConditionalRefreshServerList")); }
			ScriptFunction UseLANMode() { return mUseLANMode ? mUseLANMode : (mUseLANMode = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.UseLANMode")); }
			ScriptFunction UpdateButtonStates() { return mUpdateButtonStates ? mUpdateButtonStates : (mUpdateButtonStates = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.UpdateButtonStates")); }
			ScriptFunction PromptForServerPassword() { return mPromptForServerPassword ? mPromptForServerPassword : (mPromptForServerPassword = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.PromptForServerPassword")); }
			ScriptFunction StripInvalidPasswordCharacters() { return mStripInvalidPasswordCharacters ? mStripInvalidPasswordCharacters : (mStripInvalidPasswordCharacters = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.StripInvalidPasswordCharacters")); }
			ScriptFunction OnPasswordDialog_OK() { return mOnPasswordDialog_OK ? mOnPasswordDialog_OK : (mOnPasswordDialog_OK = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.OnPasswordDialog_OK")); }
			ScriptFunction ProcessJoin() { return mProcessJoin ? mProcessJoin : (mProcessJoin = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.ProcessJoin")); }
			ScriptFunction UpdateServerCount() { return mUpdateServerCount ? mUpdateServerCount : (mUpdateServerCount = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.UpdateServerCount")); }
			ScriptFunction BuildJoinURL() { return mBuildJoinURL ? mBuildJoinURL : (mBuildJoinURL = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.BuildJoinURL")); }
			ScriptFunction RefreshServerList() { return mRefreshServerList ? mRefreshServerList : (mRefreshServerList = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.RefreshServerList")); }
			ScriptFunction SubmitServerListQuery() { return mSubmitServerListQuery ? mSubmitServerListQuery : (mSubmitServerListQuery = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.SubmitServerListQuery")); }
			ScriptFunction OnFindOnlineGamesCompleteDelegate() { return mOnFindOnlineGamesCompleteDelegate ? mOnFindOnlineGamesCompleteDelegate : (mOnFindOnlineGamesCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.OnFindOnlineGamesCompleteDelegate")); }
			ScriptFunction OnFindOnlineGamesComplete() { return mOnFindOnlineGamesComplete ? mOnFindOnlineGamesComplete : (mOnFindOnlineGamesComplete = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.OnFindOnlineGamesComplete")); }
			ScriptFunction GetDesiredMatchType() { return mGetDesiredMatchType ? mGetDesiredMatchType : (mGetDesiredMatchType = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.GetDesiredMatchType")); }
			ScriptFunction OnRefreshButtonPress() { return mOnRefreshButtonPress ? mOnRefreshButtonPress : (mOnRefreshButtonPress = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.OnRefreshButtonPress")); }
			ScriptFunction OnFilterButtonPress() { return mOnFilterButtonPress ? mOnFilterButtonPress : (mOnFilterButtonPress = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.OnFilterButtonPress")); }
			ScriptFunction ServerFilterChangedGameType() { return mServerFilterChangedGameType ? mServerFilterChangedGameType : (mServerFilterChangedGameType = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.ServerFilterChangedGameType")); }
			ScriptFunction UpdateListDataProvider() { return mUpdateListDataProvider ? mUpdateListDataProvider : (mUpdateListDataProvider = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.UpdateListDataProvider")); }
			ScriptFunction OnServerHeaderPress() { return mOnServerHeaderPress ? mOnServerHeaderPress : (mOnServerHeaderPress = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.OnServerHeaderPress")); }
			ScriptFunction OnMapHeaderPress() { return mOnMapHeaderPress ? mOnMapHeaderPress : (mOnMapHeaderPress = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.OnMapHeaderPress")); }
			ScriptFunction OnPlayersHeaderPress() { return mOnPlayersHeaderPress ? mOnPlayersHeaderPress : (mOnPlayersHeaderPress = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.OnPlayersHeaderPress")); }
			ScriptFunction OnPingHeaderPress() { return mOnPingHeaderPress ? mOnPingHeaderPress : (mOnPingHeaderPress = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.OnPingHeaderPress")); }
			ScriptFunction OnServerListItemPress() { return mOnServerListItemPress ? mOnServerListItemPress : (mOnServerListItemPress = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.OnServerListItemPress")); }
			ScriptFunction SpectateServer() { return mSpectateServer ? mSpectateServer : (mSpectateServer = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.SpectateServer")); }
			ScriptFunction JoinServerClikListener() { return mJoinServerClikListener ? mJoinServerClikListener : (mJoinServerClikListener = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.JoinServerClikListener")); }
			ScriptFunction JoinServer() { return mJoinServer ? mJoinServer : (mJoinServer = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.JoinServer")); }
			ScriptFunction OnJoinGameComplete() { return mOnJoinGameComplete ? mOnJoinGameComplete : (mOnJoinGameComplete = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.OnJoinGameComplete")); }
			ScriptFunction AllowJoinServer() { return mAllowJoinServer ? mAllowJoinServer : (mAllowJoinServer = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.AllowJoinServer")); }
			ScriptFunction CancelQuery() { return mCancelQuery ? mCancelQuery : (mCancelQuery = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.CancelQuery")); }
			ScriptFunction SetRefreshing() { return mSetRefreshing ? mSetRefreshing : (mSetRefreshing = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.SetRefreshing")); }
			ScriptFunction OnCancelSearchComplete() { return mOnCancelSearchComplete ? mOnCancelSearchComplete : (mOnCancelSearchComplete = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.OnCancelSearchComplete")); }
			ScriptFunction NotifyGameTypeChanged() { return mNotifyGameTypeChanged ? mNotifyGameTypeChanged : (mNotifyGameTypeChanged = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.NotifyGameTypeChanged")); }
			ScriptFunction WidgetInitialized() { return mWidgetInitialized ? mWidgetInitialized : (mWidgetInitialized = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinGame.WidgetInitialized")); }
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
	void OnTopMostView(bool bPlayOpenAnimation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayOpenAnimation;
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
	int GetGameTypeSearchProviderIndex(ScriptString GameClassName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = GameClassName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGameTypeSearchProviderIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	void OnGameTypeChanged(int PlayerIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
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
	static ScriptString StripInvalidPasswordCharacters(ScriptString PasswordString, ScriptString InvalidChars)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PasswordString;
		*cast(ScriptString*)&params[12] = InvalidChars;
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
	void RefreshServerList(int InPlayerIndex, int MaxResults)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = InPlayerIndex;
		*cast(int*)&params[4] = MaxResults;
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
	void CancelQuery(GFxUDKFrontEnd_JoinGame.EQueryCompletionAction DesiredCancelAction)
	{
		ubyte params[1];
		params[] = 0;
		*cast(GFxUDKFrontEnd_JoinGame.EQueryCompletionAction*)params.ptr = DesiredCancelAction;
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
