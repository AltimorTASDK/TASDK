module UnrealScript.IpDrv.OnlineGameInterfaceImpl;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.OnlineGameSearch;
import UnrealScript.IpDrv.OnlineSubsystemCommonImpl;

extern(C++) interface OnlineGameInterfaceImpl : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class IpDrv.OnlineGameInterfaceImpl")()); }
	private static __gshared OnlineGameInterfaceImpl mDefaultProperties;
	@property final static OnlineGameInterfaceImpl DefaultProperties() { mixin(MGDPC!(OnlineGameInterfaceImpl, "OnlineGameInterfaceImpl IpDrv.Default__OnlineGameInterfaceImpl")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnCreateOnlineGameComplete;
			ScriptFunction mOnUpdateOnlineGameComplete;
			ScriptFunction mOnDestroyOnlineGameComplete;
			ScriptFunction mOnJoinOnlineGameComplete;
			ScriptFunction mOnMigrateOnlineGameComplete;
			ScriptFunction mOnJoinMigratedOnlineGameComplete;
			ScriptFunction mOnRecalculateSkillRatingComplete;
			ScriptFunction mOnStartOnlineGameComplete;
			ScriptFunction mOnEndOnlineGameComplete;
			ScriptFunction mOnFindOnlineGamesComplete;
			ScriptFunction mOnCancelFindOnlineGamesComplete;
			ScriptFunction mOnQosStatusChanged;
			ScriptFunction mOnGameInviteAccepted;
			ScriptFunction mOnArbitrationRegistrationComplete;
			ScriptFunction mOnUnregisterPlayerComplete;
			ScriptFunction mOnRegisterPlayerComplete;
			ScriptFunction mGetGameSettings;
			ScriptFunction mGetGameSearch;
			ScriptFunction mCreateOnlineGame;
			ScriptFunction mAddCreateOnlineGameCompleteDelegate;
			ScriptFunction mClearCreateOnlineGameCompleteDelegate;
			ScriptFunction mUpdateOnlineGame;
			ScriptFunction mAddUpdateOnlineGameCompleteDelegate;
			ScriptFunction mClearUpdateOnlineGameCompleteDelegate;
			ScriptFunction mDestroyOnlineGame;
			ScriptFunction mAddDestroyOnlineGameCompleteDelegate;
			ScriptFunction mClearDestroyOnlineGameCompleteDelegate;
			ScriptFunction mFindOnlineGames;
			ScriptFunction mAddFindOnlineGamesCompleteDelegate;
			ScriptFunction mClearFindOnlineGamesCompleteDelegate;
			ScriptFunction mCancelFindOnlineGames;
			ScriptFunction mAddCancelFindOnlineGamesCompleteDelegate;
			ScriptFunction mClearCancelFindOnlineGamesCompleteDelegate;
			ScriptFunction mFreeSearchResults;
			ScriptFunction mJoinOnlineGame;
			ScriptFunction mAddJoinOnlineGameCompleteDelegate;
			ScriptFunction mClearJoinOnlineGameCompleteDelegate;
			ScriptFunction mGetResolvedConnectString;
			ScriptFunction mRegisterPlayer;
			ScriptFunction mAddRegisterPlayerCompleteDelegate;
			ScriptFunction mClearRegisterPlayerCompleteDelegate;
			ScriptFunction mUnregisterPlayer;
			ScriptFunction mAddUnregisterPlayerCompleteDelegate;
			ScriptFunction mClearUnregisterPlayerCompleteDelegate;
			ScriptFunction mStartOnlineGame;
			ScriptFunction mAddStartOnlineGameCompleteDelegate;
			ScriptFunction mClearStartOnlineGameCompleteDelegate;
			ScriptFunction mEndOnlineGame;
			ScriptFunction mAddEndOnlineGameCompleteDelegate;
			ScriptFunction mClearEndOnlineGameCompleteDelegate;
			ScriptFunction mRegisterForArbitration;
			ScriptFunction mAddArbitrationRegistrationCompleteDelegate;
			ScriptFunction mClearArbitrationRegistrationCompleteDelegate;
			ScriptFunction mGetArbitratedPlayers;
			ScriptFunction mAddGameInviteAcceptedDelegate;
			ScriptFunction mClearGameInviteAcceptedDelegate;
			ScriptFunction mAcceptGameInvite;
			ScriptFunction mRecalculateSkillRating;
			ScriptFunction mAddRecalculateSkillRatingCompleteDelegate;
			ScriptFunction mClearRecalculateSkillRatingCompleteDelegate;
			ScriptFunction mMigrateOnlineGame;
			ScriptFunction mAddMigrateOnlineGameCompleteDelegate;
			ScriptFunction mClearMigrateOnlineGameCompleteDelegate;
			ScriptFunction mJoinMigratedOnlineGame;
			ScriptFunction mAddJoinMigratedOnlineGameCompleteDelegate;
			ScriptFunction mClearJoinMigratedOnlineGameCompleteDelegate;
			ScriptFunction mQueryNonAdvertisedData;
			ScriptFunction mReadPlatformSpecificSessionInfo;
			ScriptFunction mReadPlatformSpecificSessionInfoBySessionName;
			ScriptFunction mBindPlatformSpecificSessionToSearch;
			ScriptFunction mAddQosStatusChangedDelegate;
			ScriptFunction mClearQosStatusChangedDelegate;
		}
		public @property static final
		{
			ScriptFunction OnCreateOnlineGameComplete() { mixin(MGF!("mOnCreateOnlineGameComplete", "Function IpDrv.OnlineGameInterfaceImpl.OnCreateOnlineGameComplete")()); }
			ScriptFunction OnUpdateOnlineGameComplete() { mixin(MGF!("mOnUpdateOnlineGameComplete", "Function IpDrv.OnlineGameInterfaceImpl.OnUpdateOnlineGameComplete")()); }
			ScriptFunction OnDestroyOnlineGameComplete() { mixin(MGF!("mOnDestroyOnlineGameComplete", "Function IpDrv.OnlineGameInterfaceImpl.OnDestroyOnlineGameComplete")()); }
			ScriptFunction OnJoinOnlineGameComplete() { mixin(MGF!("mOnJoinOnlineGameComplete", "Function IpDrv.OnlineGameInterfaceImpl.OnJoinOnlineGameComplete")()); }
			ScriptFunction OnMigrateOnlineGameComplete() { mixin(MGF!("mOnMigrateOnlineGameComplete", "Function IpDrv.OnlineGameInterfaceImpl.OnMigrateOnlineGameComplete")()); }
			ScriptFunction OnJoinMigratedOnlineGameComplete() { mixin(MGF!("mOnJoinMigratedOnlineGameComplete", "Function IpDrv.OnlineGameInterfaceImpl.OnJoinMigratedOnlineGameComplete")()); }
			ScriptFunction OnRecalculateSkillRatingComplete() { mixin(MGF!("mOnRecalculateSkillRatingComplete", "Function IpDrv.OnlineGameInterfaceImpl.OnRecalculateSkillRatingComplete")()); }
			ScriptFunction OnStartOnlineGameComplete() { mixin(MGF!("mOnStartOnlineGameComplete", "Function IpDrv.OnlineGameInterfaceImpl.OnStartOnlineGameComplete")()); }
			ScriptFunction OnEndOnlineGameComplete() { mixin(MGF!("mOnEndOnlineGameComplete", "Function IpDrv.OnlineGameInterfaceImpl.OnEndOnlineGameComplete")()); }
			ScriptFunction OnFindOnlineGamesComplete() { mixin(MGF!("mOnFindOnlineGamesComplete", "Function IpDrv.OnlineGameInterfaceImpl.OnFindOnlineGamesComplete")()); }
			ScriptFunction OnCancelFindOnlineGamesComplete() { mixin(MGF!("mOnCancelFindOnlineGamesComplete", "Function IpDrv.OnlineGameInterfaceImpl.OnCancelFindOnlineGamesComplete")()); }
			ScriptFunction OnQosStatusChanged() { mixin(MGF!("mOnQosStatusChanged", "Function IpDrv.OnlineGameInterfaceImpl.OnQosStatusChanged")()); }
			ScriptFunction OnGameInviteAccepted() { mixin(MGF!("mOnGameInviteAccepted", "Function IpDrv.OnlineGameInterfaceImpl.OnGameInviteAccepted")()); }
			ScriptFunction OnArbitrationRegistrationComplete() { mixin(MGF!("mOnArbitrationRegistrationComplete", "Function IpDrv.OnlineGameInterfaceImpl.OnArbitrationRegistrationComplete")()); }
			ScriptFunction OnUnregisterPlayerComplete() { mixin(MGF!("mOnUnregisterPlayerComplete", "Function IpDrv.OnlineGameInterfaceImpl.OnUnregisterPlayerComplete")()); }
			ScriptFunction OnRegisterPlayerComplete() { mixin(MGF!("mOnRegisterPlayerComplete", "Function IpDrv.OnlineGameInterfaceImpl.OnRegisterPlayerComplete")()); }
			ScriptFunction GetGameSettings() { mixin(MGF!("mGetGameSettings", "Function IpDrv.OnlineGameInterfaceImpl.GetGameSettings")()); }
			ScriptFunction GetGameSearch() { mixin(MGF!("mGetGameSearch", "Function IpDrv.OnlineGameInterfaceImpl.GetGameSearch")()); }
			ScriptFunction CreateOnlineGame() { mixin(MGF!("mCreateOnlineGame", "Function IpDrv.OnlineGameInterfaceImpl.CreateOnlineGame")()); }
			ScriptFunction AddCreateOnlineGameCompleteDelegate() { mixin(MGF!("mAddCreateOnlineGameCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.AddCreateOnlineGameCompleteDelegate")()); }
			ScriptFunction ClearCreateOnlineGameCompleteDelegate() { mixin(MGF!("mClearCreateOnlineGameCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.ClearCreateOnlineGameCompleteDelegate")()); }
			ScriptFunction UpdateOnlineGame() { mixin(MGF!("mUpdateOnlineGame", "Function IpDrv.OnlineGameInterfaceImpl.UpdateOnlineGame")()); }
			ScriptFunction AddUpdateOnlineGameCompleteDelegate() { mixin(MGF!("mAddUpdateOnlineGameCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.AddUpdateOnlineGameCompleteDelegate")()); }
			ScriptFunction ClearUpdateOnlineGameCompleteDelegate() { mixin(MGF!("mClearUpdateOnlineGameCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.ClearUpdateOnlineGameCompleteDelegate")()); }
			ScriptFunction DestroyOnlineGame() { mixin(MGF!("mDestroyOnlineGame", "Function IpDrv.OnlineGameInterfaceImpl.DestroyOnlineGame")()); }
			ScriptFunction AddDestroyOnlineGameCompleteDelegate() { mixin(MGF!("mAddDestroyOnlineGameCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.AddDestroyOnlineGameCompleteDelegate")()); }
			ScriptFunction ClearDestroyOnlineGameCompleteDelegate() { mixin(MGF!("mClearDestroyOnlineGameCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.ClearDestroyOnlineGameCompleteDelegate")()); }
			ScriptFunction FindOnlineGames() { mixin(MGF!("mFindOnlineGames", "Function IpDrv.OnlineGameInterfaceImpl.FindOnlineGames")()); }
			ScriptFunction AddFindOnlineGamesCompleteDelegate() { mixin(MGF!("mAddFindOnlineGamesCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.AddFindOnlineGamesCompleteDelegate")()); }
			ScriptFunction ClearFindOnlineGamesCompleteDelegate() { mixin(MGF!("mClearFindOnlineGamesCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.ClearFindOnlineGamesCompleteDelegate")()); }
			ScriptFunction CancelFindOnlineGames() { mixin(MGF!("mCancelFindOnlineGames", "Function IpDrv.OnlineGameInterfaceImpl.CancelFindOnlineGames")()); }
			ScriptFunction AddCancelFindOnlineGamesCompleteDelegate() { mixin(MGF!("mAddCancelFindOnlineGamesCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.AddCancelFindOnlineGamesCompleteDelegate")()); }
			ScriptFunction ClearCancelFindOnlineGamesCompleteDelegate() { mixin(MGF!("mClearCancelFindOnlineGamesCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.ClearCancelFindOnlineGamesCompleteDelegate")()); }
			ScriptFunction FreeSearchResults() { mixin(MGF!("mFreeSearchResults", "Function IpDrv.OnlineGameInterfaceImpl.FreeSearchResults")()); }
			ScriptFunction JoinOnlineGame() { mixin(MGF!("mJoinOnlineGame", "Function IpDrv.OnlineGameInterfaceImpl.JoinOnlineGame")()); }
			ScriptFunction AddJoinOnlineGameCompleteDelegate() { mixin(MGF!("mAddJoinOnlineGameCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.AddJoinOnlineGameCompleteDelegate")()); }
			ScriptFunction ClearJoinOnlineGameCompleteDelegate() { mixin(MGF!("mClearJoinOnlineGameCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.ClearJoinOnlineGameCompleteDelegate")()); }
			ScriptFunction GetResolvedConnectString() { mixin(MGF!("mGetResolvedConnectString", "Function IpDrv.OnlineGameInterfaceImpl.GetResolvedConnectString")()); }
			ScriptFunction RegisterPlayer() { mixin(MGF!("mRegisterPlayer", "Function IpDrv.OnlineGameInterfaceImpl.RegisterPlayer")()); }
			ScriptFunction AddRegisterPlayerCompleteDelegate() { mixin(MGF!("mAddRegisterPlayerCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.AddRegisterPlayerCompleteDelegate")()); }
			ScriptFunction ClearRegisterPlayerCompleteDelegate() { mixin(MGF!("mClearRegisterPlayerCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.ClearRegisterPlayerCompleteDelegate")()); }
			ScriptFunction UnregisterPlayer() { mixin(MGF!("mUnregisterPlayer", "Function IpDrv.OnlineGameInterfaceImpl.UnregisterPlayer")()); }
			ScriptFunction AddUnregisterPlayerCompleteDelegate() { mixin(MGF!("mAddUnregisterPlayerCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.AddUnregisterPlayerCompleteDelegate")()); }
			ScriptFunction ClearUnregisterPlayerCompleteDelegate() { mixin(MGF!("mClearUnregisterPlayerCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.ClearUnregisterPlayerCompleteDelegate")()); }
			ScriptFunction StartOnlineGame() { mixin(MGF!("mStartOnlineGame", "Function IpDrv.OnlineGameInterfaceImpl.StartOnlineGame")()); }
			ScriptFunction AddStartOnlineGameCompleteDelegate() { mixin(MGF!("mAddStartOnlineGameCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.AddStartOnlineGameCompleteDelegate")()); }
			ScriptFunction ClearStartOnlineGameCompleteDelegate() { mixin(MGF!("mClearStartOnlineGameCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.ClearStartOnlineGameCompleteDelegate")()); }
			ScriptFunction EndOnlineGame() { mixin(MGF!("mEndOnlineGame", "Function IpDrv.OnlineGameInterfaceImpl.EndOnlineGame")()); }
			ScriptFunction AddEndOnlineGameCompleteDelegate() { mixin(MGF!("mAddEndOnlineGameCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.AddEndOnlineGameCompleteDelegate")()); }
			ScriptFunction ClearEndOnlineGameCompleteDelegate() { mixin(MGF!("mClearEndOnlineGameCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.ClearEndOnlineGameCompleteDelegate")()); }
			ScriptFunction RegisterForArbitration() { mixin(MGF!("mRegisterForArbitration", "Function IpDrv.OnlineGameInterfaceImpl.RegisterForArbitration")()); }
			ScriptFunction AddArbitrationRegistrationCompleteDelegate() { mixin(MGF!("mAddArbitrationRegistrationCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.AddArbitrationRegistrationCompleteDelegate")()); }
			ScriptFunction ClearArbitrationRegistrationCompleteDelegate() { mixin(MGF!("mClearArbitrationRegistrationCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.ClearArbitrationRegistrationCompleteDelegate")()); }
			ScriptFunction GetArbitratedPlayers() { mixin(MGF!("mGetArbitratedPlayers", "Function IpDrv.OnlineGameInterfaceImpl.GetArbitratedPlayers")()); }
			ScriptFunction AddGameInviteAcceptedDelegate() { mixin(MGF!("mAddGameInviteAcceptedDelegate", "Function IpDrv.OnlineGameInterfaceImpl.AddGameInviteAcceptedDelegate")()); }
			ScriptFunction ClearGameInviteAcceptedDelegate() { mixin(MGF!("mClearGameInviteAcceptedDelegate", "Function IpDrv.OnlineGameInterfaceImpl.ClearGameInviteAcceptedDelegate")()); }
			ScriptFunction AcceptGameInvite() { mixin(MGF!("mAcceptGameInvite", "Function IpDrv.OnlineGameInterfaceImpl.AcceptGameInvite")()); }
			ScriptFunction RecalculateSkillRating() { mixin(MGF!("mRecalculateSkillRating", "Function IpDrv.OnlineGameInterfaceImpl.RecalculateSkillRating")()); }
			ScriptFunction AddRecalculateSkillRatingCompleteDelegate() { mixin(MGF!("mAddRecalculateSkillRatingCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.AddRecalculateSkillRatingCompleteDelegate")()); }
			ScriptFunction ClearRecalculateSkillRatingCompleteDelegate() { mixin(MGF!("mClearRecalculateSkillRatingCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.ClearRecalculateSkillRatingCompleteDelegate")()); }
			ScriptFunction MigrateOnlineGame() { mixin(MGF!("mMigrateOnlineGame", "Function IpDrv.OnlineGameInterfaceImpl.MigrateOnlineGame")()); }
			ScriptFunction AddMigrateOnlineGameCompleteDelegate() { mixin(MGF!("mAddMigrateOnlineGameCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.AddMigrateOnlineGameCompleteDelegate")()); }
			ScriptFunction ClearMigrateOnlineGameCompleteDelegate() { mixin(MGF!("mClearMigrateOnlineGameCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.ClearMigrateOnlineGameCompleteDelegate")()); }
			ScriptFunction JoinMigratedOnlineGame() { mixin(MGF!("mJoinMigratedOnlineGame", "Function IpDrv.OnlineGameInterfaceImpl.JoinMigratedOnlineGame")()); }
			ScriptFunction AddJoinMigratedOnlineGameCompleteDelegate() { mixin(MGF!("mAddJoinMigratedOnlineGameCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.AddJoinMigratedOnlineGameCompleteDelegate")()); }
			ScriptFunction ClearJoinMigratedOnlineGameCompleteDelegate() { mixin(MGF!("mClearJoinMigratedOnlineGameCompleteDelegate", "Function IpDrv.OnlineGameInterfaceImpl.ClearJoinMigratedOnlineGameCompleteDelegate")()); }
			ScriptFunction QueryNonAdvertisedData() { mixin(MGF!("mQueryNonAdvertisedData", "Function IpDrv.OnlineGameInterfaceImpl.QueryNonAdvertisedData")()); }
			ScriptFunction ReadPlatformSpecificSessionInfo() { mixin(MGF!("mReadPlatformSpecificSessionInfo", "Function IpDrv.OnlineGameInterfaceImpl.ReadPlatformSpecificSessionInfo")()); }
			ScriptFunction ReadPlatformSpecificSessionInfoBySessionName() { mixin(MGF!("mReadPlatformSpecificSessionInfoBySessionName", "Function IpDrv.OnlineGameInterfaceImpl.ReadPlatformSpecificSessionInfoBySessionName")()); }
			ScriptFunction BindPlatformSpecificSessionToSearch() { mixin(MGF!("mBindPlatformSpecificSessionToSearch", "Function IpDrv.OnlineGameInterfaceImpl.BindPlatformSpecificSessionToSearch")()); }
			ScriptFunction AddQosStatusChangedDelegate() { mixin(MGF!("mAddQosStatusChangedDelegate", "Function IpDrv.OnlineGameInterfaceImpl.AddQosStatusChangedDelegate")()); }
			ScriptFunction ClearQosStatusChangedDelegate() { mixin(MGF!("mClearQosStatusChangedDelegate", "Function IpDrv.OnlineGameInterfaceImpl.ClearQosStatusChangedDelegate")()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) CreateOnlineGameCompleteDelegates() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*), 84)()); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) UpdateOnlineGameCompleteDelegates() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*), 96)()); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) DestroyOnlineGameCompleteDelegates() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*), 108)()); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) JoinOnlineGameCompleteDelegates() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*), 120)()); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) MigrateOnlineGameCompleteDelegates() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*), 132)()); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) JoinMigratedOnlineGameCompleteDelegates() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*), 144)()); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) RecalculateSkillRatingCompleteDelegates() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*), 156)()); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) StartOnlineGameCompleteDelegates() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*), 168)()); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) EndOnlineGameCompleteDelegates() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*), 180)()); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) FindOnlineGamesCompleteDelegates() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*), 192)()); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) CancelFindOnlineGamesCompleteDelegates() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*), 204)()); }
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnQosStatusChanged__Delegate'!
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
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnCancelFindOnlineGamesComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnDestroyOnlineGameComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnUpdateOnlineGameComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnCreateOnlineGameComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnFindOnlineGamesComplete__Delegate'!
		UObject.Pointer SessionInfo() { mixin(MGPC!(UObject.Pointer, 240)()); }
		UObject.Pointer LanBeacon() { mixin(MGPC!(UObject.Pointer, 236)()); }
		float LanQueryTimeout() { mixin(MGPC!(float, 232)()); }
		float LanQueryTimeLeft() { mixin(MGPC!(float, 228)()); }
		int LanPacketPlatformMask() { mixin(MGPC!(int, 224)()); }
		int LanGameUniqueId() { mixin(MGPC!(int, 220)()); }
		int LanAnnouncePort() { mixin(MGPC!(int, 216)()); }
		ubyte LanNonce() { mixin(MGPC!(ubyte, 74)()); }
		OnlineSubsystem.ELanBeaconState LanBeaconState() { mixin(MGPC!(OnlineSubsystem.ELanBeaconState, 73)()); }
		OnlineSubsystem.EOnlineGameState CurrentGameState() { mixin(MGPC!(OnlineSubsystem.EOnlineGameState, 72)()); }
		OnlineGameSearch GameSearch() { mixin(MGPC!(OnlineGameSearch, 68)()); }
		OnlineGameSettings GameSettings() { mixin(MGPC!(OnlineGameSettings, 64)()); }
		OnlineSubsystemCommonImpl OwningSubsystem() { mixin(MGPC!(OnlineSubsystemCommonImpl, 60)()); }
	}
final:
	void OnCreateOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCreateOnlineGameComplete, params.ptr, cast(void*)0);
	}
	void OnUpdateOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUpdateOnlineGameComplete, params.ptr, cast(void*)0);
	}
	void OnDestroyOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnDestroyOnlineGameComplete, params.ptr, cast(void*)0);
	}
	void OnJoinOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnJoinOnlineGameComplete, params.ptr, cast(void*)0);
	}
	void OnMigrateOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnMigrateOnlineGameComplete, params.ptr, cast(void*)0);
	}
	void OnJoinMigratedOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnJoinMigratedOnlineGameComplete, params.ptr, cast(void*)0);
	}
	void OnRecalculateSkillRatingComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnRecalculateSkillRatingComplete, params.ptr, cast(void*)0);
	}
	void OnStartOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnStartOnlineGameComplete, params.ptr, cast(void*)0);
	}
	void OnEndOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnEndOnlineGameComplete, params.ptr, cast(void*)0);
	}
	void OnFindOnlineGamesComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFindOnlineGamesComplete, params.ptr, cast(void*)0);
	}
	void OnCancelFindOnlineGamesComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCancelFindOnlineGamesComplete, params.ptr, cast(void*)0);
	}
	void OnQosStatusChanged(int NumComplete, int NumTotal)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = NumComplete;
		*cast(int*)&params[4] = NumTotal;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnQosStatusChanged, params.ptr, cast(void*)0);
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
	OnlineGameSettings GetGameSettings(ScriptName SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGameSettings, params.ptr, cast(void*)0);
		return *cast(OnlineGameSettings*)&params[8];
	}
	OnlineGameSearch GetGameSearch()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGameSearch, params.ptr, cast(void*)0);
		return *cast(OnlineGameSearch*)params.ptr;
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
	bool DestroyOnlineGame(ScriptName SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(Functions.DestroyOnlineGame, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
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
	bool FreeSearchResults(OnlineGameSearch Search)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineGameSearch*)params.ptr = Search;
		(cast(ScriptObject)this).ProcessEvent(Functions.FreeSearchResults, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
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
	bool UnregisterPlayer(ScriptName SessionName, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnregisterPlayer, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
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
	bool StartOnlineGame(ScriptName SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartOnlineGame, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
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
	bool EndOnlineGame(ScriptName SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndOnlineGame, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
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
	bool RegisterForArbitration(ScriptName SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterForArbitration, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
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
	bool AcceptGameInvite(ubyte LocalUserNum, ScriptName SessionName)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptName*)&params[4] = SessionName;
		(cast(ScriptObject)this).ProcessEvent(Functions.AcceptGameInvite, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
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
	bool MigrateOnlineGame(ubyte HostingPlayerNum, ScriptName SessionName)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = HostingPlayerNum;
		*cast(ScriptName*)&params[4] = SessionName;
		(cast(ScriptObject)this).ProcessEvent(Functions.MigrateOnlineGame, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
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
	bool QueryNonAdvertisedData(int StartAt, int NumberToQuery)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = StartAt;
		*cast(int*)&params[4] = NumberToQuery;
		(cast(ScriptObject)this).ProcessEvent(Functions.QueryNonAdvertisedData, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
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
}
