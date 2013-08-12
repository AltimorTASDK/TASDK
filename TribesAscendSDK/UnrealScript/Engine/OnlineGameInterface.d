module UnrealScript.Engine.OnlineGameInterface;

import ScriptClasses;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineGameSearch;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlineGameInterface : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.OnlineGameInterface")); }
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
			ScriptFunction GetGameSettings() { return mGetGameSettings ? mGetGameSettings : (mGetGameSettings = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.GetGameSettings")); }
			ScriptFunction EndOnlineGame() { return mEndOnlineGame ? mEndOnlineGame : (mEndOnlineGame = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.EndOnlineGame")); }
			ScriptFunction UnregisterPlayer() { return mUnregisterPlayer ? mUnregisterPlayer : (mUnregisterPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.UnregisterPlayer")); }
			ScriptFunction MigrateOnlineGame() { return mMigrateOnlineGame ? mMigrateOnlineGame : (mMigrateOnlineGame = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.MigrateOnlineGame")); }
			ScriptFunction ReadPlatformSpecificSessionInfoBySessionName() { return mReadPlatformSpecificSessionInfoBySessionName ? mReadPlatformSpecificSessionInfoBySessionName : (mReadPlatformSpecificSessionInfoBySessionName = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.ReadPlatformSpecificSessionInfoBySessionName")); }
			ScriptFunction BindPlatformSpecificSessionToSearch() { return mBindPlatformSpecificSessionToSearch ? mBindPlatformSpecificSessionToSearch : (mBindPlatformSpecificSessionToSearch = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.BindPlatformSpecificSessionToSearch")); }
			ScriptFunction JoinMigratedOnlineGame() { return mJoinMigratedOnlineGame ? mJoinMigratedOnlineGame : (mJoinMigratedOnlineGame = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.JoinMigratedOnlineGame")); }
			ScriptFunction GetResolvedConnectString() { return mGetResolvedConnectString ? mGetResolvedConnectString : (mGetResolvedConnectString = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.GetResolvedConnectString")); }
			ScriptFunction RegisterForArbitration() { return mRegisterForArbitration ? mRegisterForArbitration : (mRegisterForArbitration = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.RegisterForArbitration")); }
			ScriptFunction AcceptGameInvite() { return mAcceptGameInvite ? mAcceptGameInvite : (mAcceptGameInvite = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.AcceptGameInvite")); }
			ScriptFunction DestroyOnlineGame() { return mDestroyOnlineGame ? mDestroyOnlineGame : (mDestroyOnlineGame = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.DestroyOnlineGame")); }
			ScriptFunction StartOnlineGame() { return mStartOnlineGame ? mStartOnlineGame : (mStartOnlineGame = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.StartOnlineGame")); }
			ScriptFunction JoinOnlineGame() { return mJoinOnlineGame ? mJoinOnlineGame : (mJoinOnlineGame = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.JoinOnlineGame")); }
			ScriptFunction RegisterPlayer() { return mRegisterPlayer ? mRegisterPlayer : (mRegisterPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.RegisterPlayer")); }
			ScriptFunction RecalculateSkillRating() { return mRecalculateSkillRating ? mRecalculateSkillRating : (mRecalculateSkillRating = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.RecalculateSkillRating")); }
			ScriptFunction CreateOnlineGame() { return mCreateOnlineGame ? mCreateOnlineGame : (mCreateOnlineGame = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.CreateOnlineGame")); }
			ScriptFunction OnCreateOnlineGameComplete() { return mOnCreateOnlineGameComplete ? mOnCreateOnlineGameComplete : (mOnCreateOnlineGameComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.OnCreateOnlineGameComplete")); }
			ScriptFunction OnJoinMigratedOnlineGameComplete() { return mOnJoinMigratedOnlineGameComplete ? mOnJoinMigratedOnlineGameComplete : (mOnJoinMigratedOnlineGameComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.OnJoinMigratedOnlineGameComplete")); }
			ScriptFunction OnMigrateOnlineGameComplete() { return mOnMigrateOnlineGameComplete ? mOnMigrateOnlineGameComplete : (mOnMigrateOnlineGameComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.OnMigrateOnlineGameComplete")); }
			ScriptFunction OnRecalculateSkillRatingComplete() { return mOnRecalculateSkillRatingComplete ? mOnRecalculateSkillRatingComplete : (mOnRecalculateSkillRatingComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.OnRecalculateSkillRatingComplete")); }
			ScriptFunction OnGameInviteAccepted() { return mOnGameInviteAccepted ? mOnGameInviteAccepted : (mOnGameInviteAccepted = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.OnGameInviteAccepted")); }
			ScriptFunction OnArbitrationRegistrationComplete() { return mOnArbitrationRegistrationComplete ? mOnArbitrationRegistrationComplete : (mOnArbitrationRegistrationComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.OnArbitrationRegistrationComplete")); }
			ScriptFunction OnEndOnlineGameComplete() { return mOnEndOnlineGameComplete ? mOnEndOnlineGameComplete : (mOnEndOnlineGameComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.OnEndOnlineGameComplete")); }
			ScriptFunction OnStartOnlineGameComplete() { return mOnStartOnlineGameComplete ? mOnStartOnlineGameComplete : (mOnStartOnlineGameComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.OnStartOnlineGameComplete")); }
			ScriptFunction OnUnregisterPlayerComplete() { return mOnUnregisterPlayerComplete ? mOnUnregisterPlayerComplete : (mOnUnregisterPlayerComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.OnUnregisterPlayerComplete")); }
			ScriptFunction OnRegisterPlayerComplete() { return mOnRegisterPlayerComplete ? mOnRegisterPlayerComplete : (mOnRegisterPlayerComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.OnRegisterPlayerComplete")); }
			ScriptFunction OnJoinOnlineGameComplete() { return mOnJoinOnlineGameComplete ? mOnJoinOnlineGameComplete : (mOnJoinOnlineGameComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.OnJoinOnlineGameComplete")); }
			ScriptFunction OnQosStatusChanged() { return mOnQosStatusChanged ? mOnQosStatusChanged : (mOnQosStatusChanged = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.OnQosStatusChanged")); }
			ScriptFunction OnCancelFindOnlineGamesComplete() { return mOnCancelFindOnlineGamesComplete ? mOnCancelFindOnlineGamesComplete : (mOnCancelFindOnlineGamesComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.OnCancelFindOnlineGamesComplete")); }
			ScriptFunction OnFindOnlineGamesComplete() { return mOnFindOnlineGamesComplete ? mOnFindOnlineGamesComplete : (mOnFindOnlineGamesComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.OnFindOnlineGamesComplete")); }
			ScriptFunction OnDestroyOnlineGameComplete() { return mOnDestroyOnlineGameComplete ? mOnDestroyOnlineGameComplete : (mOnDestroyOnlineGameComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.OnDestroyOnlineGameComplete")); }
			ScriptFunction OnUpdateOnlineGameComplete() { return mOnUpdateOnlineGameComplete ? mOnUpdateOnlineGameComplete : (mOnUpdateOnlineGameComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.OnUpdateOnlineGameComplete")); }
			ScriptFunction AddCreateOnlineGameCompleteDelegate() { return mAddCreateOnlineGameCompleteDelegate ? mAddCreateOnlineGameCompleteDelegate : (mAddCreateOnlineGameCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.AddCreateOnlineGameCompleteDelegate")); }
			ScriptFunction ClearCreateOnlineGameCompleteDelegate() { return mClearCreateOnlineGameCompleteDelegate ? mClearCreateOnlineGameCompleteDelegate : (mClearCreateOnlineGameCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.ClearCreateOnlineGameCompleteDelegate")); }
			ScriptFunction UpdateOnlineGame() { return mUpdateOnlineGame ? mUpdateOnlineGame : (mUpdateOnlineGame = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.UpdateOnlineGame")); }
			ScriptFunction AddUpdateOnlineGameCompleteDelegate() { return mAddUpdateOnlineGameCompleteDelegate ? mAddUpdateOnlineGameCompleteDelegate : (mAddUpdateOnlineGameCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.AddUpdateOnlineGameCompleteDelegate")); }
			ScriptFunction ClearUpdateOnlineGameCompleteDelegate() { return mClearUpdateOnlineGameCompleteDelegate ? mClearUpdateOnlineGameCompleteDelegate : (mClearUpdateOnlineGameCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.ClearUpdateOnlineGameCompleteDelegate")); }
			ScriptFunction AddDestroyOnlineGameCompleteDelegate() { return mAddDestroyOnlineGameCompleteDelegate ? mAddDestroyOnlineGameCompleteDelegate : (mAddDestroyOnlineGameCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.AddDestroyOnlineGameCompleteDelegate")); }
			ScriptFunction ClearDestroyOnlineGameCompleteDelegate() { return mClearDestroyOnlineGameCompleteDelegate ? mClearDestroyOnlineGameCompleteDelegate : (mClearDestroyOnlineGameCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.ClearDestroyOnlineGameCompleteDelegate")); }
			ScriptFunction FindOnlineGames() { return mFindOnlineGames ? mFindOnlineGames : (mFindOnlineGames = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.FindOnlineGames")); }
			ScriptFunction AddFindOnlineGamesCompleteDelegate() { return mAddFindOnlineGamesCompleteDelegate ? mAddFindOnlineGamesCompleteDelegate : (mAddFindOnlineGamesCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.AddFindOnlineGamesCompleteDelegate")); }
			ScriptFunction ClearFindOnlineGamesCompleteDelegate() { return mClearFindOnlineGamesCompleteDelegate ? mClearFindOnlineGamesCompleteDelegate : (mClearFindOnlineGamesCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.ClearFindOnlineGamesCompleteDelegate")); }
			ScriptFunction CancelFindOnlineGames() { return mCancelFindOnlineGames ? mCancelFindOnlineGames : (mCancelFindOnlineGames = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.CancelFindOnlineGames")); }
			ScriptFunction AddCancelFindOnlineGamesCompleteDelegate() { return mAddCancelFindOnlineGamesCompleteDelegate ? mAddCancelFindOnlineGamesCompleteDelegate : (mAddCancelFindOnlineGamesCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.AddCancelFindOnlineGamesCompleteDelegate")); }
			ScriptFunction ClearCancelFindOnlineGamesCompleteDelegate() { return mClearCancelFindOnlineGamesCompleteDelegate ? mClearCancelFindOnlineGamesCompleteDelegate : (mClearCancelFindOnlineGamesCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.ClearCancelFindOnlineGamesCompleteDelegate")); }
			ScriptFunction AddQosStatusChangedDelegate() { return mAddQosStatusChangedDelegate ? mAddQosStatusChangedDelegate : (mAddQosStatusChangedDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.AddQosStatusChangedDelegate")); }
			ScriptFunction ClearQosStatusChangedDelegate() { return mClearQosStatusChangedDelegate ? mClearQosStatusChangedDelegate : (mClearQosStatusChangedDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.ClearQosStatusChangedDelegate")); }
			ScriptFunction ReadPlatformSpecificSessionInfo() { return mReadPlatformSpecificSessionInfo ? mReadPlatformSpecificSessionInfo : (mReadPlatformSpecificSessionInfo = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.ReadPlatformSpecificSessionInfo")); }
			ScriptFunction GetGameSearch() { return mGetGameSearch ? mGetGameSearch : (mGetGameSearch = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.GetGameSearch")); }
			ScriptFunction FreeSearchResults() { return mFreeSearchResults ? mFreeSearchResults : (mFreeSearchResults = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.FreeSearchResults")); }
			ScriptFunction QueryNonAdvertisedData() { return mQueryNonAdvertisedData ? mQueryNonAdvertisedData : (mQueryNonAdvertisedData = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.QueryNonAdvertisedData")); }
			ScriptFunction AddJoinOnlineGameCompleteDelegate() { return mAddJoinOnlineGameCompleteDelegate ? mAddJoinOnlineGameCompleteDelegate : (mAddJoinOnlineGameCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.AddJoinOnlineGameCompleteDelegate")); }
			ScriptFunction ClearJoinOnlineGameCompleteDelegate() { return mClearJoinOnlineGameCompleteDelegate ? mClearJoinOnlineGameCompleteDelegate : (mClearJoinOnlineGameCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.ClearJoinOnlineGameCompleteDelegate")); }
			ScriptFunction AddRegisterPlayerCompleteDelegate() { return mAddRegisterPlayerCompleteDelegate ? mAddRegisterPlayerCompleteDelegate : (mAddRegisterPlayerCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.AddRegisterPlayerCompleteDelegate")); }
			ScriptFunction ClearRegisterPlayerCompleteDelegate() { return mClearRegisterPlayerCompleteDelegate ? mClearRegisterPlayerCompleteDelegate : (mClearRegisterPlayerCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.ClearRegisterPlayerCompleteDelegate")); }
			ScriptFunction AddUnregisterPlayerCompleteDelegate() { return mAddUnregisterPlayerCompleteDelegate ? mAddUnregisterPlayerCompleteDelegate : (mAddUnregisterPlayerCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.AddUnregisterPlayerCompleteDelegate")); }
			ScriptFunction ClearUnregisterPlayerCompleteDelegate() { return mClearUnregisterPlayerCompleteDelegate ? mClearUnregisterPlayerCompleteDelegate : (mClearUnregisterPlayerCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.ClearUnregisterPlayerCompleteDelegate")); }
			ScriptFunction AddStartOnlineGameCompleteDelegate() { return mAddStartOnlineGameCompleteDelegate ? mAddStartOnlineGameCompleteDelegate : (mAddStartOnlineGameCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.AddStartOnlineGameCompleteDelegate")); }
			ScriptFunction ClearStartOnlineGameCompleteDelegate() { return mClearStartOnlineGameCompleteDelegate ? mClearStartOnlineGameCompleteDelegate : (mClearStartOnlineGameCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.ClearStartOnlineGameCompleteDelegate")); }
			ScriptFunction AddEndOnlineGameCompleteDelegate() { return mAddEndOnlineGameCompleteDelegate ? mAddEndOnlineGameCompleteDelegate : (mAddEndOnlineGameCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.AddEndOnlineGameCompleteDelegate")); }
			ScriptFunction ClearEndOnlineGameCompleteDelegate() { return mClearEndOnlineGameCompleteDelegate ? mClearEndOnlineGameCompleteDelegate : (mClearEndOnlineGameCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.ClearEndOnlineGameCompleteDelegate")); }
			ScriptFunction AddArbitrationRegistrationCompleteDelegate() { return mAddArbitrationRegistrationCompleteDelegate ? mAddArbitrationRegistrationCompleteDelegate : (mAddArbitrationRegistrationCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.AddArbitrationRegistrationCompleteDelegate")); }
			ScriptFunction ClearArbitrationRegistrationCompleteDelegate() { return mClearArbitrationRegistrationCompleteDelegate ? mClearArbitrationRegistrationCompleteDelegate : (mClearArbitrationRegistrationCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.ClearArbitrationRegistrationCompleteDelegate")); }
			ScriptFunction GetArbitratedPlayers() { return mGetArbitratedPlayers ? mGetArbitratedPlayers : (mGetArbitratedPlayers = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.GetArbitratedPlayers")); }
			ScriptFunction AddGameInviteAcceptedDelegate() { return mAddGameInviteAcceptedDelegate ? mAddGameInviteAcceptedDelegate : (mAddGameInviteAcceptedDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.AddGameInviteAcceptedDelegate")); }
			ScriptFunction ClearGameInviteAcceptedDelegate() { return mClearGameInviteAcceptedDelegate ? mClearGameInviteAcceptedDelegate : (mClearGameInviteAcceptedDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.ClearGameInviteAcceptedDelegate")); }
			ScriptFunction AddRecalculateSkillRatingCompleteDelegate() { return mAddRecalculateSkillRatingCompleteDelegate ? mAddRecalculateSkillRatingCompleteDelegate : (mAddRecalculateSkillRatingCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.AddRecalculateSkillRatingCompleteDelegate")); }
			ScriptFunction ClearRecalculateSkillRatingCompleteDelegate() { return mClearRecalculateSkillRatingCompleteDelegate ? mClearRecalculateSkillRatingCompleteDelegate : (mClearRecalculateSkillRatingCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.ClearRecalculateSkillRatingCompleteDelegate")); }
			ScriptFunction AddMigrateOnlineGameCompleteDelegate() { return mAddMigrateOnlineGameCompleteDelegate ? mAddMigrateOnlineGameCompleteDelegate : (mAddMigrateOnlineGameCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.AddMigrateOnlineGameCompleteDelegate")); }
			ScriptFunction ClearMigrateOnlineGameCompleteDelegate() { return mClearMigrateOnlineGameCompleteDelegate ? mClearMigrateOnlineGameCompleteDelegate : (mClearMigrateOnlineGameCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.ClearMigrateOnlineGameCompleteDelegate")); }
			ScriptFunction AddJoinMigratedOnlineGameCompleteDelegate() { return mAddJoinMigratedOnlineGameCompleteDelegate ? mAddJoinMigratedOnlineGameCompleteDelegate : (mAddJoinMigratedOnlineGameCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.AddJoinMigratedOnlineGameCompleteDelegate")); }
			ScriptFunction ClearJoinMigratedOnlineGameCompleteDelegate() { return mClearJoinMigratedOnlineGameCompleteDelegate ? mClearJoinMigratedOnlineGameCompleteDelegate : (mClearJoinMigratedOnlineGameCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameInterface.ClearJoinMigratedOnlineGameCompleteDelegate")); }
		}
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
	bool ReadPlatformSpecificSessionInfoBySessionName(ScriptName SessionName, ubyte* PlatformSpecificInfo)
	{
		ubyte params[92];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		params[8] = *PlatformSpecificInfo;
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
	bool JoinMigratedOnlineGame(ubyte PlayerNum, ScriptName SessionName, OnlineGameSearch.OnlineGameSearchResult* DesiredGame)
	{
		ubyte params[24];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(ScriptName*)&params[4] = SessionName;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)&params[12] = *DesiredGame;
		(cast(ScriptObject)this).ProcessEvent(Functions.JoinMigratedOnlineGame, params.ptr, cast(void*)0);
		*DesiredGame = *cast(OnlineGameSearch.OnlineGameSearchResult*)&params[12];
		return *cast(bool*)&params[20];
	}
	bool GetResolvedConnectString(ScriptName SessionName, ScriptString* ConnectInfo)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptString*)&params[8] = *ConnectInfo;
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
	bool JoinOnlineGame(ubyte PlayerNum, ScriptName SessionName, OnlineGameSearch.OnlineGameSearchResult* DesiredGame)
	{
		ubyte params[24];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(ScriptName*)&params[4] = SessionName;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)&params[12] = *DesiredGame;
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
	bool RecalculateSkillRating(ScriptName SessionName, ScriptArray!(OnlineSubsystem.UniqueNetId)* Players)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8] = *Players;
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
	void OnGameInviteAccepted(OnlineGameSearch.OnlineGameSearchResult* InviteResult)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr = *InviteResult;
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
	bool ReadPlatformSpecificSessionInfo(OnlineGameSearch.OnlineGameSearchResult* DesiredGame, ubyte* PlatformSpecificInfo)
	{
		ubyte params[92];
		params[] = 0;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr = *DesiredGame;
		params[8] = *PlatformSpecificInfo;
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
