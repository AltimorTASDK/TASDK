module UnrealScript.Engine.OnlineGameInterface;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineGameSearch;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlineGameInterface : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.OnlineGameInterface")()); }
	private static __gshared OnlineGameInterface mDefaultProperties;
	@property final static OnlineGameInterface DefaultProperties() { mixin(MGDPC!(OnlineGameInterface, "OnlineGameInterface Engine.Default__OnlineGameInterface")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetGameSettings;
			ScriptFunction mEndOnlineGame;
			ScriptFunction mUnregisterPlayer;
			ScriptFunction mMigrateOnlineGame;
			ScriptFunction mReadPlatformSpecificSessionInfoBySessionName;
			ScriptFunction mBindPlatformSpecificSessionToSearch;
			ScriptFunction mJoinMigratedOnlineGame;
			ScriptFunction mGetResolvedConnectString;
			ScriptFunction mRegisterForArbitration;
			ScriptFunction mAcceptGameInvite;
			ScriptFunction mDestroyOnlineGame;
			ScriptFunction mStartOnlineGame;
			ScriptFunction mJoinOnlineGame;
			ScriptFunction mRegisterPlayer;
			ScriptFunction mRecalculateSkillRating;
			ScriptFunction mCreateOnlineGame;
			ScriptFunction mOnCreateOnlineGameComplete;
			ScriptFunction mOnJoinMigratedOnlineGameComplete;
			ScriptFunction mOnMigrateOnlineGameComplete;
			ScriptFunction mOnRecalculateSkillRatingComplete;
			ScriptFunction mOnGameInviteAccepted;
			ScriptFunction mOnArbitrationRegistrationComplete;
			ScriptFunction mOnEndOnlineGameComplete;
			ScriptFunction mOnStartOnlineGameComplete;
			ScriptFunction mOnUnregisterPlayerComplete;
			ScriptFunction mOnRegisterPlayerComplete;
			ScriptFunction mOnJoinOnlineGameComplete;
			ScriptFunction mOnQosStatusChanged;
			ScriptFunction mOnCancelFindOnlineGamesComplete;
			ScriptFunction mOnFindOnlineGamesComplete;
			ScriptFunction mOnDestroyOnlineGameComplete;
			ScriptFunction mOnUpdateOnlineGameComplete;
			ScriptFunction mAddCreateOnlineGameCompleteDelegate;
			ScriptFunction mClearCreateOnlineGameCompleteDelegate;
			ScriptFunction mUpdateOnlineGame;
			ScriptFunction mAddUpdateOnlineGameCompleteDelegate;
			ScriptFunction mClearUpdateOnlineGameCompleteDelegate;
			ScriptFunction mAddDestroyOnlineGameCompleteDelegate;
			ScriptFunction mClearDestroyOnlineGameCompleteDelegate;
			ScriptFunction mFindOnlineGames;
			ScriptFunction mAddFindOnlineGamesCompleteDelegate;
			ScriptFunction mClearFindOnlineGamesCompleteDelegate;
			ScriptFunction mCancelFindOnlineGames;
			ScriptFunction mAddCancelFindOnlineGamesCompleteDelegate;
			ScriptFunction mClearCancelFindOnlineGamesCompleteDelegate;
			ScriptFunction mAddQosStatusChangedDelegate;
			ScriptFunction mClearQosStatusChangedDelegate;
			ScriptFunction mReadPlatformSpecificSessionInfo;
			ScriptFunction mGetGameSearch;
			ScriptFunction mFreeSearchResults;
			ScriptFunction mQueryNonAdvertisedData;
			ScriptFunction mAddJoinOnlineGameCompleteDelegate;
			ScriptFunction mClearJoinOnlineGameCompleteDelegate;
			ScriptFunction mAddRegisterPlayerCompleteDelegate;
			ScriptFunction mClearRegisterPlayerCompleteDelegate;
			ScriptFunction mAddUnregisterPlayerCompleteDelegate;
			ScriptFunction mClearUnregisterPlayerCompleteDelegate;
			ScriptFunction mAddStartOnlineGameCompleteDelegate;
			ScriptFunction mClearStartOnlineGameCompleteDelegate;
			ScriptFunction mAddEndOnlineGameCompleteDelegate;
			ScriptFunction mClearEndOnlineGameCompleteDelegate;
			ScriptFunction mAddArbitrationRegistrationCompleteDelegate;
			ScriptFunction mClearArbitrationRegistrationCompleteDelegate;
			ScriptFunction mGetArbitratedPlayers;
			ScriptFunction mAddGameInviteAcceptedDelegate;
			ScriptFunction mClearGameInviteAcceptedDelegate;
			ScriptFunction mAddRecalculateSkillRatingCompleteDelegate;
			ScriptFunction mClearRecalculateSkillRatingCompleteDelegate;
			ScriptFunction mAddMigrateOnlineGameCompleteDelegate;
			ScriptFunction mClearMigrateOnlineGameCompleteDelegate;
			ScriptFunction mAddJoinMigratedOnlineGameCompleteDelegate;
			ScriptFunction mClearJoinMigratedOnlineGameCompleteDelegate;
		}
		public @property static final
		{
			ScriptFunction GetGameSettings() { mixin(MGF!("mGetGameSettings", "Function Engine.OnlineGameInterface.GetGameSettings")()); }
			ScriptFunction EndOnlineGame() { mixin(MGF!("mEndOnlineGame", "Function Engine.OnlineGameInterface.EndOnlineGame")()); }
			ScriptFunction UnregisterPlayer() { mixin(MGF!("mUnregisterPlayer", "Function Engine.OnlineGameInterface.UnregisterPlayer")()); }
			ScriptFunction MigrateOnlineGame() { mixin(MGF!("mMigrateOnlineGame", "Function Engine.OnlineGameInterface.MigrateOnlineGame")()); }
			ScriptFunction ReadPlatformSpecificSessionInfoBySessionName() { mixin(MGF!("mReadPlatformSpecificSessionInfoBySessionName", "Function Engine.OnlineGameInterface.ReadPlatformSpecificSessionInfoBySessionName")()); }
			ScriptFunction BindPlatformSpecificSessionToSearch() { mixin(MGF!("mBindPlatformSpecificSessionToSearch", "Function Engine.OnlineGameInterface.BindPlatformSpecificSessionToSearch")()); }
			ScriptFunction JoinMigratedOnlineGame() { mixin(MGF!("mJoinMigratedOnlineGame", "Function Engine.OnlineGameInterface.JoinMigratedOnlineGame")()); }
			ScriptFunction GetResolvedConnectString() { mixin(MGF!("mGetResolvedConnectString", "Function Engine.OnlineGameInterface.GetResolvedConnectString")()); }
			ScriptFunction RegisterForArbitration() { mixin(MGF!("mRegisterForArbitration", "Function Engine.OnlineGameInterface.RegisterForArbitration")()); }
			ScriptFunction AcceptGameInvite() { mixin(MGF!("mAcceptGameInvite", "Function Engine.OnlineGameInterface.AcceptGameInvite")()); }
			ScriptFunction DestroyOnlineGame() { mixin(MGF!("mDestroyOnlineGame", "Function Engine.OnlineGameInterface.DestroyOnlineGame")()); }
			ScriptFunction StartOnlineGame() { mixin(MGF!("mStartOnlineGame", "Function Engine.OnlineGameInterface.StartOnlineGame")()); }
			ScriptFunction JoinOnlineGame() { mixin(MGF!("mJoinOnlineGame", "Function Engine.OnlineGameInterface.JoinOnlineGame")()); }
			ScriptFunction RegisterPlayer() { mixin(MGF!("mRegisterPlayer", "Function Engine.OnlineGameInterface.RegisterPlayer")()); }
			ScriptFunction RecalculateSkillRating() { mixin(MGF!("mRecalculateSkillRating", "Function Engine.OnlineGameInterface.RecalculateSkillRating")()); }
			ScriptFunction CreateOnlineGame() { mixin(MGF!("mCreateOnlineGame", "Function Engine.OnlineGameInterface.CreateOnlineGame")()); }
			ScriptFunction OnCreateOnlineGameComplete() { mixin(MGF!("mOnCreateOnlineGameComplete", "Function Engine.OnlineGameInterface.OnCreateOnlineGameComplete")()); }
			ScriptFunction OnJoinMigratedOnlineGameComplete() { mixin(MGF!("mOnJoinMigratedOnlineGameComplete", "Function Engine.OnlineGameInterface.OnJoinMigratedOnlineGameComplete")()); }
			ScriptFunction OnMigrateOnlineGameComplete() { mixin(MGF!("mOnMigrateOnlineGameComplete", "Function Engine.OnlineGameInterface.OnMigrateOnlineGameComplete")()); }
			ScriptFunction OnRecalculateSkillRatingComplete() { mixin(MGF!("mOnRecalculateSkillRatingComplete", "Function Engine.OnlineGameInterface.OnRecalculateSkillRatingComplete")()); }
			ScriptFunction OnGameInviteAccepted() { mixin(MGF!("mOnGameInviteAccepted", "Function Engine.OnlineGameInterface.OnGameInviteAccepted")()); }
			ScriptFunction OnArbitrationRegistrationComplete() { mixin(MGF!("mOnArbitrationRegistrationComplete", "Function Engine.OnlineGameInterface.OnArbitrationRegistrationComplete")()); }
			ScriptFunction OnEndOnlineGameComplete() { mixin(MGF!("mOnEndOnlineGameComplete", "Function Engine.OnlineGameInterface.OnEndOnlineGameComplete")()); }
			ScriptFunction OnStartOnlineGameComplete() { mixin(MGF!("mOnStartOnlineGameComplete", "Function Engine.OnlineGameInterface.OnStartOnlineGameComplete")()); }
			ScriptFunction OnUnregisterPlayerComplete() { mixin(MGF!("mOnUnregisterPlayerComplete", "Function Engine.OnlineGameInterface.OnUnregisterPlayerComplete")()); }
			ScriptFunction OnRegisterPlayerComplete() { mixin(MGF!("mOnRegisterPlayerComplete", "Function Engine.OnlineGameInterface.OnRegisterPlayerComplete")()); }
			ScriptFunction OnJoinOnlineGameComplete() { mixin(MGF!("mOnJoinOnlineGameComplete", "Function Engine.OnlineGameInterface.OnJoinOnlineGameComplete")()); }
			ScriptFunction OnQosStatusChanged() { mixin(MGF!("mOnQosStatusChanged", "Function Engine.OnlineGameInterface.OnQosStatusChanged")()); }
			ScriptFunction OnCancelFindOnlineGamesComplete() { mixin(MGF!("mOnCancelFindOnlineGamesComplete", "Function Engine.OnlineGameInterface.OnCancelFindOnlineGamesComplete")()); }
			ScriptFunction OnFindOnlineGamesComplete() { mixin(MGF!("mOnFindOnlineGamesComplete", "Function Engine.OnlineGameInterface.OnFindOnlineGamesComplete")()); }
			ScriptFunction OnDestroyOnlineGameComplete() { mixin(MGF!("mOnDestroyOnlineGameComplete", "Function Engine.OnlineGameInterface.OnDestroyOnlineGameComplete")()); }
			ScriptFunction OnUpdateOnlineGameComplete() { mixin(MGF!("mOnUpdateOnlineGameComplete", "Function Engine.OnlineGameInterface.OnUpdateOnlineGameComplete")()); }
			ScriptFunction AddCreateOnlineGameCompleteDelegate() { mixin(MGF!("mAddCreateOnlineGameCompleteDelegate", "Function Engine.OnlineGameInterface.AddCreateOnlineGameCompleteDelegate")()); }
			ScriptFunction ClearCreateOnlineGameCompleteDelegate() { mixin(MGF!("mClearCreateOnlineGameCompleteDelegate", "Function Engine.OnlineGameInterface.ClearCreateOnlineGameCompleteDelegate")()); }
			ScriptFunction UpdateOnlineGame() { mixin(MGF!("mUpdateOnlineGame", "Function Engine.OnlineGameInterface.UpdateOnlineGame")()); }
			ScriptFunction AddUpdateOnlineGameCompleteDelegate() { mixin(MGF!("mAddUpdateOnlineGameCompleteDelegate", "Function Engine.OnlineGameInterface.AddUpdateOnlineGameCompleteDelegate")()); }
			ScriptFunction ClearUpdateOnlineGameCompleteDelegate() { mixin(MGF!("mClearUpdateOnlineGameCompleteDelegate", "Function Engine.OnlineGameInterface.ClearUpdateOnlineGameCompleteDelegate")()); }
			ScriptFunction AddDestroyOnlineGameCompleteDelegate() { mixin(MGF!("mAddDestroyOnlineGameCompleteDelegate", "Function Engine.OnlineGameInterface.AddDestroyOnlineGameCompleteDelegate")()); }
			ScriptFunction ClearDestroyOnlineGameCompleteDelegate() { mixin(MGF!("mClearDestroyOnlineGameCompleteDelegate", "Function Engine.OnlineGameInterface.ClearDestroyOnlineGameCompleteDelegate")()); }
			ScriptFunction FindOnlineGames() { mixin(MGF!("mFindOnlineGames", "Function Engine.OnlineGameInterface.FindOnlineGames")()); }
			ScriptFunction AddFindOnlineGamesCompleteDelegate() { mixin(MGF!("mAddFindOnlineGamesCompleteDelegate", "Function Engine.OnlineGameInterface.AddFindOnlineGamesCompleteDelegate")()); }
			ScriptFunction ClearFindOnlineGamesCompleteDelegate() { mixin(MGF!("mClearFindOnlineGamesCompleteDelegate", "Function Engine.OnlineGameInterface.ClearFindOnlineGamesCompleteDelegate")()); }
			ScriptFunction CancelFindOnlineGames() { mixin(MGF!("mCancelFindOnlineGames", "Function Engine.OnlineGameInterface.CancelFindOnlineGames")()); }
			ScriptFunction AddCancelFindOnlineGamesCompleteDelegate() { mixin(MGF!("mAddCancelFindOnlineGamesCompleteDelegate", "Function Engine.OnlineGameInterface.AddCancelFindOnlineGamesCompleteDelegate")()); }
			ScriptFunction ClearCancelFindOnlineGamesCompleteDelegate() { mixin(MGF!("mClearCancelFindOnlineGamesCompleteDelegate", "Function Engine.OnlineGameInterface.ClearCancelFindOnlineGamesCompleteDelegate")()); }
			ScriptFunction AddQosStatusChangedDelegate() { mixin(MGF!("mAddQosStatusChangedDelegate", "Function Engine.OnlineGameInterface.AddQosStatusChangedDelegate")()); }
			ScriptFunction ClearQosStatusChangedDelegate() { mixin(MGF!("mClearQosStatusChangedDelegate", "Function Engine.OnlineGameInterface.ClearQosStatusChangedDelegate")()); }
			ScriptFunction ReadPlatformSpecificSessionInfo() { mixin(MGF!("mReadPlatformSpecificSessionInfo", "Function Engine.OnlineGameInterface.ReadPlatformSpecificSessionInfo")()); }
			ScriptFunction GetGameSearch() { mixin(MGF!("mGetGameSearch", "Function Engine.OnlineGameInterface.GetGameSearch")()); }
			ScriptFunction FreeSearchResults() { mixin(MGF!("mFreeSearchResults", "Function Engine.OnlineGameInterface.FreeSearchResults")()); }
			ScriptFunction QueryNonAdvertisedData() { mixin(MGF!("mQueryNonAdvertisedData", "Function Engine.OnlineGameInterface.QueryNonAdvertisedData")()); }
			ScriptFunction AddJoinOnlineGameCompleteDelegate() { mixin(MGF!("mAddJoinOnlineGameCompleteDelegate", "Function Engine.OnlineGameInterface.AddJoinOnlineGameCompleteDelegate")()); }
			ScriptFunction ClearJoinOnlineGameCompleteDelegate() { mixin(MGF!("mClearJoinOnlineGameCompleteDelegate", "Function Engine.OnlineGameInterface.ClearJoinOnlineGameCompleteDelegate")()); }
			ScriptFunction AddRegisterPlayerCompleteDelegate() { mixin(MGF!("mAddRegisterPlayerCompleteDelegate", "Function Engine.OnlineGameInterface.AddRegisterPlayerCompleteDelegate")()); }
			ScriptFunction ClearRegisterPlayerCompleteDelegate() { mixin(MGF!("mClearRegisterPlayerCompleteDelegate", "Function Engine.OnlineGameInterface.ClearRegisterPlayerCompleteDelegate")()); }
			ScriptFunction AddUnregisterPlayerCompleteDelegate() { mixin(MGF!("mAddUnregisterPlayerCompleteDelegate", "Function Engine.OnlineGameInterface.AddUnregisterPlayerCompleteDelegate")()); }
			ScriptFunction ClearUnregisterPlayerCompleteDelegate() { mixin(MGF!("mClearUnregisterPlayerCompleteDelegate", "Function Engine.OnlineGameInterface.ClearUnregisterPlayerCompleteDelegate")()); }
			ScriptFunction AddStartOnlineGameCompleteDelegate() { mixin(MGF!("mAddStartOnlineGameCompleteDelegate", "Function Engine.OnlineGameInterface.AddStartOnlineGameCompleteDelegate")()); }
			ScriptFunction ClearStartOnlineGameCompleteDelegate() { mixin(MGF!("mClearStartOnlineGameCompleteDelegate", "Function Engine.OnlineGameInterface.ClearStartOnlineGameCompleteDelegate")()); }
			ScriptFunction AddEndOnlineGameCompleteDelegate() { mixin(MGF!("mAddEndOnlineGameCompleteDelegate", "Function Engine.OnlineGameInterface.AddEndOnlineGameCompleteDelegate")()); }
			ScriptFunction ClearEndOnlineGameCompleteDelegate() { mixin(MGF!("mClearEndOnlineGameCompleteDelegate", "Function Engine.OnlineGameInterface.ClearEndOnlineGameCompleteDelegate")()); }
			ScriptFunction AddArbitrationRegistrationCompleteDelegate() { mixin(MGF!("mAddArbitrationRegistrationCompleteDelegate", "Function Engine.OnlineGameInterface.AddArbitrationRegistrationCompleteDelegate")()); }
			ScriptFunction ClearArbitrationRegistrationCompleteDelegate() { mixin(MGF!("mClearArbitrationRegistrationCompleteDelegate", "Function Engine.OnlineGameInterface.ClearArbitrationRegistrationCompleteDelegate")()); }
			ScriptFunction GetArbitratedPlayers() { mixin(MGF!("mGetArbitratedPlayers", "Function Engine.OnlineGameInterface.GetArbitratedPlayers")()); }
			ScriptFunction AddGameInviteAcceptedDelegate() { mixin(MGF!("mAddGameInviteAcceptedDelegate", "Function Engine.OnlineGameInterface.AddGameInviteAcceptedDelegate")()); }
			ScriptFunction ClearGameInviteAcceptedDelegate() { mixin(MGF!("mClearGameInviteAcceptedDelegate", "Function Engine.OnlineGameInterface.ClearGameInviteAcceptedDelegate")()); }
			ScriptFunction AddRecalculateSkillRatingCompleteDelegate() { mixin(MGF!("mAddRecalculateSkillRatingCompleteDelegate", "Function Engine.OnlineGameInterface.AddRecalculateSkillRatingCompleteDelegate")()); }
			ScriptFunction ClearRecalculateSkillRatingCompleteDelegate() { mixin(MGF!("mClearRecalculateSkillRatingCompleteDelegate", "Function Engine.OnlineGameInterface.ClearRecalculateSkillRatingCompleteDelegate")()); }
			ScriptFunction AddMigrateOnlineGameCompleteDelegate() { mixin(MGF!("mAddMigrateOnlineGameCompleteDelegate", "Function Engine.OnlineGameInterface.AddMigrateOnlineGameCompleteDelegate")()); }
			ScriptFunction ClearMigrateOnlineGameCompleteDelegate() { mixin(MGF!("mClearMigrateOnlineGameCompleteDelegate", "Function Engine.OnlineGameInterface.ClearMigrateOnlineGameCompleteDelegate")()); }
			ScriptFunction AddJoinMigratedOnlineGameCompleteDelegate() { mixin(MGF!("mAddJoinMigratedOnlineGameCompleteDelegate", "Function Engine.OnlineGameInterface.AddJoinMigratedOnlineGameCompleteDelegate")()); }
			ScriptFunction ClearJoinMigratedOnlineGameCompleteDelegate() { mixin(MGF!("mClearJoinMigratedOnlineGameCompleteDelegate", "Function Engine.OnlineGameInterface.ClearJoinMigratedOnlineGameCompleteDelegate")()); }
		}
	}
	@property final auto ref
	{
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnJoinMigratedOnlineGameComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnMigrateOnlineGameComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnRecalculateSkillRatingComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnGameInviteAccepted__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnArbitrationRegistrationComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnEndOnlineGameComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnStartOnlineGameComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnUnregisterPlayerComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnRegisterPlayerComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnJoinOnlineGameComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnQosStatusChanged__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnCancelFindOnlineGamesComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnFindOnlineGamesComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnDestroyOnlineGameComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnUpdateOnlineGameComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnCreateOnlineGameComplete__Delegate'!
	}
final:
	OnlineGameSettings GetGameSettings(ScriptName SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGameSettings, params.ptr, cast(void*)0);
		return *cast(OnlineGameSettings*)&params[8];
	}
	bool EndOnlineGame(ScriptName SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndOnlineGame, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool UnregisterPlayer(ScriptName SessionName, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnregisterPlayer, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool MigrateOnlineGame(ubyte HostingPlayerNum, ScriptName SessionName)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = HostingPlayerNum;
		*cast(ScriptName*)&params[4] = SessionName;
		(cast(ScriptObject)this).ProcessEvent(Functions.MigrateOnlineGame, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool ReadPlatformSpecificSessionInfoBySessionName(ScriptName SessionName, ref ubyte PlatformSpecificInfo)
	{
		ubyte params[92];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		params[8] = PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadPlatformSpecificSessionInfoBySessionName, params.ptr, cast(void*)0);
		*PlatformSpecificInfo = params[8];
		return *cast(bool*)&params[88];
	}
	bool BindPlatformSpecificSessionToSearch(ubyte SearchingPlayerNum, OnlineGameSearch SearchSettings, ubyte PlatformSpecificInfo)
	{
		ubyte params[92];
		params[] = 0;
		params[0] = SearchingPlayerNum;
		*cast(OnlineGameSearch*)&params[4] = SearchSettings;
		params[8] = PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.BindPlatformSpecificSessionToSearch, params.ptr, cast(void*)0);
		return *cast(bool*)&params[88];
	}
	bool JoinMigratedOnlineGame(ubyte PlayerNum, ScriptName SessionName, ref const OnlineGameSearch.OnlineGameSearchResult DesiredGame)
	{
		ubyte params[24];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(ScriptName*)&params[4] = SessionName;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)&params[12] = DesiredGame;
		(cast(ScriptObject)this).ProcessEvent(Functions.JoinMigratedOnlineGame, params.ptr, cast(void*)0);
		*DesiredGame = *cast(OnlineGameSearch.OnlineGameSearchResult*)&params[12];
		return *cast(bool*)&params[20];
	}
	bool GetResolvedConnectString(ScriptName SessionName, ref ScriptString ConnectInfo)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptString*)&params[8] = ConnectInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetResolvedConnectString, params.ptr, cast(void*)0);
		*ConnectInfo = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[20];
	}
	bool RegisterForArbitration(ScriptName SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterForArbitration, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool AcceptGameInvite(ubyte LocalUserNum, ScriptName SessionName)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptName*)&params[4] = SessionName;
		(cast(ScriptObject)this).ProcessEvent(Functions.AcceptGameInvite, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool DestroyOnlineGame(ScriptName SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(Functions.DestroyOnlineGame, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool StartOnlineGame(ScriptName SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartOnlineGame, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool JoinOnlineGame(ubyte PlayerNum, ScriptName SessionName, ref const OnlineGameSearch.OnlineGameSearchResult DesiredGame)
	{
		ubyte params[24];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(ScriptName*)&params[4] = SessionName;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)&params[12] = DesiredGame;
		(cast(ScriptObject)this).ProcessEvent(Functions.JoinOnlineGame, params.ptr, cast(void*)0);
		*DesiredGame = *cast(OnlineGameSearch.OnlineGameSearchResult*)&params[12];
		return *cast(bool*)&params[20];
	}
	bool RegisterPlayer(ScriptName SessionName, OnlineSubsystem.UniqueNetId PlayerID, bool bWasInvited)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = PlayerID;
		*cast(bool*)&params[16] = bWasInvited;
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterPlayer, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	bool RecalculateSkillRating(ScriptName SessionName, ref const ScriptArray!(OnlineSubsystem.UniqueNetId) Players)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8] = Players;
		(cast(ScriptObject)this).ProcessEvent(Functions.RecalculateSkillRating, params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8];
		return *cast(bool*)&params[20];
	}
	bool CreateOnlineGame(ubyte HostingPlayerNum, ScriptName SessionName, OnlineGameSettings NewGameSettings)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = HostingPlayerNum;
		*cast(ScriptName*)&params[4] = SessionName;
		*cast(OnlineGameSettings*)&params[12] = NewGameSettings;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateOnlineGame, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void OnCreateOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCreateOnlineGameComplete, params.ptr, cast(void*)0);
	}
	void OnJoinMigratedOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnJoinMigratedOnlineGameComplete, params.ptr, cast(void*)0);
	}
	void OnMigrateOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnMigrateOnlineGameComplete, params.ptr, cast(void*)0);
	}
	void OnRecalculateSkillRatingComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnRecalculateSkillRatingComplete, params.ptr, cast(void*)0);
	}
	void OnGameInviteAccepted(ref const OnlineGameSearch.OnlineGameSearchResult InviteResult)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr = InviteResult;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnGameInviteAccepted, params.ptr, cast(void*)0);
		*InviteResult = *cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr;
	}
	void OnArbitrationRegistrationComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnArbitrationRegistrationComplete, params.ptr, cast(void*)0);
	}
	void OnEndOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnEndOnlineGameComplete, params.ptr, cast(void*)0);
	}
	void OnStartOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnStartOnlineGameComplete, params.ptr, cast(void*)0);
	}
	void OnUnregisterPlayerComplete(ScriptName SessionName, OnlineSubsystem.UniqueNetId PlayerID, bool bWasSuccessful)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = PlayerID;
		*cast(bool*)&params[16] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUnregisterPlayerComplete, params.ptr, cast(void*)0);
	}
	void OnRegisterPlayerComplete(ScriptName SessionName, OnlineSubsystem.UniqueNetId PlayerID, bool bWasSuccessful)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = PlayerID;
		*cast(bool*)&params[16] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnRegisterPlayerComplete, params.ptr, cast(void*)0);
	}
	void OnJoinOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnJoinOnlineGameComplete, params.ptr, cast(void*)0);
	}
	void OnQosStatusChanged(int NumComplete, int NumTotal)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = NumComplete;
		*cast(int*)&params[4] = NumTotal;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnQosStatusChanged, params.ptr, cast(void*)0);
	}
	void OnCancelFindOnlineGamesComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCancelFindOnlineGamesComplete, params.ptr, cast(void*)0);
	}
	void OnFindOnlineGamesComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFindOnlineGamesComplete, params.ptr, cast(void*)0);
	}
	void OnDestroyOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnDestroyOnlineGameComplete, params.ptr, cast(void*)0);
	}
	void OnUpdateOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUpdateOnlineGameComplete, params.ptr, cast(void*)0);
	}
	void AddCreateOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* CreateOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = CreateOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddCreateOnlineGameCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearCreateOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* CreateOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = CreateOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearCreateOnlineGameCompleteDelegate, params.ptr, cast(void*)0);
	}
	bool UpdateOnlineGame(ScriptName SessionName, OnlineGameSettings UpdatedGameSettings, bool bShouldRefreshOnlineData)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineGameSettings*)&params[8] = UpdatedGameSettings;
		*cast(bool*)&params[12] = bShouldRefreshOnlineData;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateOnlineGame, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void AddUpdateOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* UpdateOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = UpdateOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddUpdateOnlineGameCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearUpdateOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* UpdateOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = UpdateOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearUpdateOnlineGameCompleteDelegate, params.ptr, cast(void*)0);
	}
	void AddDestroyOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* DestroyOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = DestroyOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddDestroyOnlineGameCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearDestroyOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* DestroyOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = DestroyOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearDestroyOnlineGameCompleteDelegate, params.ptr, cast(void*)0);
	}
	bool FindOnlineGames(ubyte SearchingPlayerNum, OnlineGameSearch SearchSettings)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = SearchingPlayerNum;
		*cast(OnlineGameSearch*)&params[4] = SearchSettings;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindOnlineGames, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void AddFindOnlineGamesCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* FindOnlineGamesCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = FindOnlineGamesCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddFindOnlineGamesCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearFindOnlineGamesCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* FindOnlineGamesCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = FindOnlineGamesCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearFindOnlineGamesCompleteDelegate, params.ptr, cast(void*)0);
	}
	bool CancelFindOnlineGames()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CancelFindOnlineGames, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void AddCancelFindOnlineGamesCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* CancelFindOnlineGamesCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = CancelFindOnlineGamesCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddCancelFindOnlineGamesCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearCancelFindOnlineGamesCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* CancelFindOnlineGamesCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = CancelFindOnlineGamesCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearCancelFindOnlineGamesCompleteDelegate, params.ptr, cast(void*)0);
	}
	void AddQosStatusChangedDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* QosStatusChangedDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = QosStatusChangedDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddQosStatusChangedDelegate, params.ptr, cast(void*)0);
	}
	void ClearQosStatusChangedDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* QosStatusChangedDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = QosStatusChangedDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearQosStatusChangedDelegate, params.ptr, cast(void*)0);
	}
	bool ReadPlatformSpecificSessionInfo(ref const OnlineGameSearch.OnlineGameSearchResult DesiredGame, ref ubyte PlatformSpecificInfo)
	{
		ubyte params[92];
		params[] = 0;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr = DesiredGame;
		params[8] = PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadPlatformSpecificSessionInfo, params.ptr, cast(void*)0);
		*DesiredGame = *cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr;
		*PlatformSpecificInfo = params[8];
		return *cast(bool*)&params[88];
	}
	OnlineGameSearch GetGameSearch()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGameSearch, params.ptr, cast(void*)0);
		return *cast(OnlineGameSearch*)params.ptr;
	}
	bool FreeSearchResults(OnlineGameSearch Search)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineGameSearch*)params.ptr = Search;
		(cast(ScriptObject)this).ProcessEvent(Functions.FreeSearchResults, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool QueryNonAdvertisedData(int StartAt, int NumberToQuery)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = StartAt;
		*cast(int*)&params[4] = NumberToQuery;
		(cast(ScriptObject)this).ProcessEvent(Functions.QueryNonAdvertisedData, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void AddJoinOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* JoinOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = JoinOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddJoinOnlineGameCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearJoinOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* JoinOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = JoinOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearJoinOnlineGameCompleteDelegate, params.ptr, cast(void*)0);
	}
	void AddRegisterPlayerCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* RegisterPlayerCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = RegisterPlayerCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddRegisterPlayerCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearRegisterPlayerCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* RegisterPlayerCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = RegisterPlayerCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearRegisterPlayerCompleteDelegate, params.ptr, cast(void*)0);
	}
	void AddUnregisterPlayerCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* UnregisterPlayerCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = UnregisterPlayerCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddUnregisterPlayerCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearUnregisterPlayerCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* UnregisterPlayerCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = UnregisterPlayerCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearUnregisterPlayerCompleteDelegate, params.ptr, cast(void*)0);
	}
	void AddStartOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* StartOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = StartOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddStartOnlineGameCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearStartOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* StartOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = StartOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearStartOnlineGameCompleteDelegate, params.ptr, cast(void*)0);
	}
	void AddEndOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* EndOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = EndOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddEndOnlineGameCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearEndOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* EndOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = EndOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearEndOnlineGameCompleteDelegate, params.ptr, cast(void*)0);
	}
	void AddArbitrationRegistrationCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ArbitrationRegistrationCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ArbitrationRegistrationCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddArbitrationRegistrationCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearArbitrationRegistrationCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ArbitrationRegistrationCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ArbitrationRegistrationCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearArbitrationRegistrationCompleteDelegate, params.ptr, cast(void*)0);
	}
	ScriptArray!(OnlineSubsystem.OnlineArbitrationRegistrant) GetArbitratedPlayers(ScriptName SessionName)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetArbitratedPlayers, params.ptr, cast(void*)0);
		return *cast(ScriptArray!(OnlineSubsystem.OnlineArbitrationRegistrant)*)&params[8];
	}
	void AddGameInviteAcceptedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* GameInviteAcceptedDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = GameInviteAcceptedDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddGameInviteAcceptedDelegate, params.ptr, cast(void*)0);
	}
	void ClearGameInviteAcceptedDelegate(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* GameInviteAcceptedDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = GameInviteAcceptedDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearGameInviteAcceptedDelegate, params.ptr, cast(void*)0);
	}
	void AddRecalculateSkillRatingCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* RecalculateSkillRatingCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = RecalculateSkillRatingCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddRecalculateSkillRatingCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearRecalculateSkillRatingCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* RecalculateSkillRatingGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = RecalculateSkillRatingGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearRecalculateSkillRatingCompleteDelegate, params.ptr, cast(void*)0);
	}
	void AddMigrateOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* MigrateOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = MigrateOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddMigrateOnlineGameCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearMigrateOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* MigrateOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = MigrateOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearMigrateOnlineGameCompleteDelegate, params.ptr, cast(void*)0);
	}
	void AddJoinMigratedOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* JoinMigratedOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = JoinMigratedOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddJoinMigratedOnlineGameCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearJoinMigratedOnlineGameCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* JoinMigratedOnlineGameCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = JoinMigratedOnlineGameCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearJoinMigratedOnlineGameCompleteDelegate, params.ptr, cast(void*)0);
	}
}
