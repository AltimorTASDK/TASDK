module UnrealScript.Engine.GameInfo;

import ScriptClasses;
import UnrealScript.Engine.GameReplicationInfo;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.PlayerStart;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.AutoTestManager;
import UnrealScript.Engine.Mutator;
import UnrealScript.Engine.CoverReplicator;
import UnrealScript.Engine.PickupFactory;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Vehicle;
import UnrealScript.Engine.AccessControl;
import UnrealScript.Engine.Info;
import UnrealScript.Engine.BroadcastHandler;
import UnrealScript.Engine.HUD;

extern(C++) interface GameInfo : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.GameInfo")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCheckRelevance;
			ScriptFunction mParseOption;
			ScriptFunction mAtCapacity;
			ScriptFunction mForceClearUnpauseDelegates;
			ScriptFunction mIsAutomatedPerfTesting;
			ScriptFunction mSetPause;
			ScriptFunction mChangeTeam;
			ScriptFunction mCanSpectate;
			ScriptFunction mPlayerCanRestartGame;
			ScriptFunction mPlayerCanRestart;
			ScriptFunction mIsDoingASentinelRun;
			ScriptFunction mGetCoverReplicator;
			ScriptFunction mPickupQuery;
			ScriptFunction mGetSupportedGameTypes;
			ScriptFunction mGetMapCommonPackageName;
			ScriptFunction mPreBeginPlay;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mDisplayDebug;
			ScriptFunction mReset;
			ScriptFunction mShouldReset;
			ScriptFunction mResetLevel;
			ScriptFunction mTimer;
			ScriptFunction mDoNavFearCostFallOff;
			ScriptFunction mNotifyNavigationChanged;
			ScriptFunction mGameEnding;
			ScriptFunction mKickIdler;
			ScriptFunction mForceKickPlayer;
			ScriptFunction mInitGameReplicationInfo;
			ScriptFunction mGetNetworkNumber;
			ScriptFunction mGetNumPlayers;
			ScriptFunction mCanUnpause;
			ScriptFunction mClearPause;
			ScriptFunction mDebugPause;
			ScriptFunction mSetGameSpeed;
			ScriptFunction mGrabOption;
			ScriptFunction mGetKeyValue;
			ScriptFunction mHasOption;
			ScriptFunction mGetIntOption;
			ScriptFunction mGetDefaultGameClassPath;
			ScriptFunction mSetGameType;
			ScriptFunction mInitGame;
			ScriptFunction mNotifyPendingConnectionLost;
			ScriptFunction mAddMutator;
			ScriptFunction mRemoveMutator;
			ScriptFunction mProcessServerTravel;
			ScriptFunction mProcessClientTravel;
			ScriptFunction mRequiresPassword;
			ScriptFunction mPreLogin;
			ScriptFunction mGetNextPlayerID;
			ScriptFunction mSpawnPlayerController;
			ScriptFunction mLogin;
			ScriptFunction mStartMatch;
			ScriptFunction mStartOnlineGame;
			ScriptFunction mOnStartOnlineGameComplete;
			ScriptFunction mStartHumans;
			ScriptFunction mStartBots;
			ScriptFunction mRestartPlayer;
			ScriptFunction mSpawnDefaultPawnFor;
			ScriptFunction mGetDefaultPlayerClass;
			ScriptFunction mReplicateStreamingStatus;
			ScriptFunction mGenericPlayerInitialization;
			ScriptFunction mBestNextHostSort;
			ScriptFunction mUpdateBestNextHosts;
			ScriptFunction mPostLogin;
			ScriptFunction mUpdateNetSpeeds;
			ScriptFunction mCalculatedNetSpeed;
			ScriptFunction mPreExit;
			ScriptFunction mLogout;
			ScriptFunction mUnregisterPlayer;
			ScriptFunction mAcceptInventory;
			ScriptFunction mAddDefaultInventory;
			ScriptFunction mMutate;
			ScriptFunction mSetPlayerDefaults;
			ScriptFunction mNotifyKilled;
			ScriptFunction mKilled;
			ScriptFunction mPreventDeath;
			ScriptFunction mBroadcastDeathMessage;
			ScriptFunction mKick;
			ScriptFunction mKickBan;
			ScriptFunction mReduceDamage;
			ScriptFunction mShouldRespawn;
			ScriptFunction mDiscardInventory;
			ScriptFunction mChangeName;
			ScriptFunction mPickTeam;
			ScriptFunction mSendPlayer;
			ScriptFunction mGetNextMap;
			ScriptFunction mGetTravelType;
			ScriptFunction mRestartGame;
			ScriptFunction mBroadcast;
			ScriptFunction mBroadcastTeam;
			ScriptFunction mBroadcastLocalized;
			ScriptFunction mBroadcastLocalizedTeam;
			ScriptFunction mCheckModifiedEndGame;
			ScriptFunction mCheckEndGame;
			ScriptFunction mWriteOnlineStats;
			ScriptFunction mWriteOnlinePlayerScores;
			ScriptFunction mForceRoundStart;
			ScriptFunction mEndGame;
			ScriptFunction mPerformEndGameHandling;
			ScriptFunction mEndOnlineGame;
			ScriptFunction mGameEventsPoll;
			ScriptFunction mEndLogging;
			ScriptFunction mShouldSpawnAtStartSpot;
			ScriptFunction mFindPlayerStart;
			ScriptFunction mChoosePlayerStart;
			ScriptFunction mRatePlayerStart;
			ScriptFunction mAddObjectiveScore;
			ScriptFunction mScoreObjective;
			ScriptFunction mCheckScore;
			ScriptFunction mScoreKill;
			ScriptFunction mModifyScoreKill;
			ScriptFunction mDriverEnteredVehicle;
			ScriptFunction mCanLeaveVehicle;
			ScriptFunction mDriverLeftVehicle;
			ScriptFunction mAllowMutator;
			ScriptFunction mAllowCheats;
			ScriptFunction mAllowPausing;
			ScriptFunction mPreCommitMapChange;
			ScriptFunction mPostCommitMapChange;
			ScriptFunction mAddInactivePRI;
			ScriptFunction mFindInactivePRI;
			ScriptFunction mSetPRI;
			ScriptFunction mOverridePRI;
			ScriptFunction mGetSeamlessTravelActorList;
			ScriptFunction mSwapPlayerControllers;
			ScriptFunction mPostSeamlessTravel;
			ScriptFunction mUpdateGameSettings;
			ScriptFunction mHandleSeamlessTravelPlayer;
			ScriptFunction mSetSeamlessTravelViewTarget;
			ScriptFunction mUpdateGameSettingsCounts;
			ScriptFunction mProcessClientRegistrationCompletion;
			ScriptFunction mStartArbitrationRegistration;
			ScriptFunction mStartArbitratedMatch;
			ScriptFunction mRegisterServerForArbitration;
			ScriptFunction mArbitrationRegistrationComplete;
			ScriptFunction mMatchIsInProgress;
			ScriptFunction mNotifyArbitratedMatchEnd;
			ScriptFunction mUpdateGameplayMuteList;
			ScriptFunction mRecalculateSkillRating;
			ScriptFunction mMatineeCancelled;
			ScriptFunction mProcessServerLogin;
			ScriptFunction mClearAutoLoginDelegates;
			ScriptFunction mOnLoginFailed;
			ScriptFunction mOnLoginChange;
			ScriptFunction mRegisterServer;
			ScriptFunction mOnServerCreateComplete;
			ScriptFunction mTellClientsToReturnToPartyHost;
			ScriptFunction mTellClientsToTravelToSession;
			ScriptFunction mDoTravelTheWorld;
			ScriptFunction mIsCheckingForFragmentation;
			ScriptFunction mIsCheckingForMemLeaks;
			ScriptFunction mShouldAutoContinueToNextRound;
			ScriptFunction mCheckForSentinelRun;
			ScriptFunction mBeginBVT;
			ScriptFunction mEnableStandbyCheatDetection;
			ScriptFunction mStandbyCheatDetected;
			ScriptFunction mOnEngineHasLoaded;
		}
		public @property static final
		{
			ScriptFunction CheckRelevance() { return mCheckRelevance ? mCheckRelevance : (mCheckRelevance = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.CheckRelevance")); }
			ScriptFunction ParseOption() { return mParseOption ? mParseOption : (mParseOption = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.ParseOption")); }
			ScriptFunction AtCapacity() { return mAtCapacity ? mAtCapacity : (mAtCapacity = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.AtCapacity")); }
			ScriptFunction ForceClearUnpauseDelegates() { return mForceClearUnpauseDelegates ? mForceClearUnpauseDelegates : (mForceClearUnpauseDelegates = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.ForceClearUnpauseDelegates")); }
			ScriptFunction IsAutomatedPerfTesting() { return mIsAutomatedPerfTesting ? mIsAutomatedPerfTesting : (mIsAutomatedPerfTesting = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.IsAutomatedPerfTesting")); }
			ScriptFunction SetPause() { return mSetPause ? mSetPause : (mSetPause = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.SetPause")); }
			ScriptFunction ChangeTeam() { return mChangeTeam ? mChangeTeam : (mChangeTeam = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.ChangeTeam")); }
			ScriptFunction CanSpectate() { return mCanSpectate ? mCanSpectate : (mCanSpectate = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.CanSpectate")); }
			ScriptFunction PlayerCanRestartGame() { return mPlayerCanRestartGame ? mPlayerCanRestartGame : (mPlayerCanRestartGame = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.PlayerCanRestartGame")); }
			ScriptFunction PlayerCanRestart() { return mPlayerCanRestart ? mPlayerCanRestart : (mPlayerCanRestart = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.PlayerCanRestart")); }
			ScriptFunction IsDoingASentinelRun() { return mIsDoingASentinelRun ? mIsDoingASentinelRun : (mIsDoingASentinelRun = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.IsDoingASentinelRun")); }
			ScriptFunction GetCoverReplicator() { return mGetCoverReplicator ? mGetCoverReplicator : (mGetCoverReplicator = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.GetCoverReplicator")); }
			ScriptFunction PickupQuery() { return mPickupQuery ? mPickupQuery : (mPickupQuery = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.PickupQuery")); }
			ScriptFunction GetSupportedGameTypes() { return mGetSupportedGameTypes ? mGetSupportedGameTypes : (mGetSupportedGameTypes = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.GetSupportedGameTypes")); }
			ScriptFunction GetMapCommonPackageName() { return mGetMapCommonPackageName ? mGetMapCommonPackageName : (mGetMapCommonPackageName = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.GetMapCommonPackageName")); }
			ScriptFunction PreBeginPlay() { return mPreBeginPlay ? mPreBeginPlay : (mPreBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.PreBeginPlay")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.PostBeginPlay")); }
			ScriptFunction DisplayDebug() { return mDisplayDebug ? mDisplayDebug : (mDisplayDebug = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.DisplayDebug")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.Reset")); }
			ScriptFunction ShouldReset() { return mShouldReset ? mShouldReset : (mShouldReset = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.ShouldReset")); }
			ScriptFunction ResetLevel() { return mResetLevel ? mResetLevel : (mResetLevel = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.ResetLevel")); }
			ScriptFunction Timer() { return mTimer ? mTimer : (mTimer = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.Timer")); }
			ScriptFunction DoNavFearCostFallOff() { return mDoNavFearCostFallOff ? mDoNavFearCostFallOff : (mDoNavFearCostFallOff = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.DoNavFearCostFallOff")); }
			ScriptFunction NotifyNavigationChanged() { return mNotifyNavigationChanged ? mNotifyNavigationChanged : (mNotifyNavigationChanged = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.NotifyNavigationChanged")); }
			ScriptFunction GameEnding() { return mGameEnding ? mGameEnding : (mGameEnding = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.GameEnding")); }
			ScriptFunction KickIdler() { return mKickIdler ? mKickIdler : (mKickIdler = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.KickIdler")); }
			ScriptFunction ForceKickPlayer() { return mForceKickPlayer ? mForceKickPlayer : (mForceKickPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.ForceKickPlayer")); }
			ScriptFunction InitGameReplicationInfo() { return mInitGameReplicationInfo ? mInitGameReplicationInfo : (mInitGameReplicationInfo = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.InitGameReplicationInfo")); }
			ScriptFunction GetNetworkNumber() { return mGetNetworkNumber ? mGetNetworkNumber : (mGetNetworkNumber = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.GetNetworkNumber")); }
			ScriptFunction GetNumPlayers() { return mGetNumPlayers ? mGetNumPlayers : (mGetNumPlayers = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.GetNumPlayers")); }
			ScriptFunction CanUnpause() { return mCanUnpause ? mCanUnpause : (mCanUnpause = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.CanUnpause")); }
			ScriptFunction ClearPause() { return mClearPause ? mClearPause : (mClearPause = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.ClearPause")); }
			ScriptFunction DebugPause() { return mDebugPause ? mDebugPause : (mDebugPause = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.DebugPause")); }
			ScriptFunction SetGameSpeed() { return mSetGameSpeed ? mSetGameSpeed : (mSetGameSpeed = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.SetGameSpeed")); }
			ScriptFunction GrabOption() { return mGrabOption ? mGrabOption : (mGrabOption = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.GrabOption")); }
			ScriptFunction GetKeyValue() { return mGetKeyValue ? mGetKeyValue : (mGetKeyValue = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.GetKeyValue")); }
			ScriptFunction HasOption() { return mHasOption ? mHasOption : (mHasOption = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.HasOption")); }
			ScriptFunction GetIntOption() { return mGetIntOption ? mGetIntOption : (mGetIntOption = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.GetIntOption")); }
			ScriptFunction GetDefaultGameClassPath() { return mGetDefaultGameClassPath ? mGetDefaultGameClassPath : (mGetDefaultGameClassPath = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.GetDefaultGameClassPath")); }
			ScriptFunction SetGameType() { return mSetGameType ? mSetGameType : (mSetGameType = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.SetGameType")); }
			ScriptFunction InitGame() { return mInitGame ? mInitGame : (mInitGame = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.InitGame")); }
			ScriptFunction NotifyPendingConnectionLost() { return mNotifyPendingConnectionLost ? mNotifyPendingConnectionLost : (mNotifyPendingConnectionLost = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.NotifyPendingConnectionLost")); }
			ScriptFunction AddMutator() { return mAddMutator ? mAddMutator : (mAddMutator = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.AddMutator")); }
			ScriptFunction RemoveMutator() { return mRemoveMutator ? mRemoveMutator : (mRemoveMutator = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.RemoveMutator")); }
			ScriptFunction ProcessServerTravel() { return mProcessServerTravel ? mProcessServerTravel : (mProcessServerTravel = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.ProcessServerTravel")); }
			ScriptFunction ProcessClientTravel() { return mProcessClientTravel ? mProcessClientTravel : (mProcessClientTravel = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.ProcessClientTravel")); }
			ScriptFunction RequiresPassword() { return mRequiresPassword ? mRequiresPassword : (mRequiresPassword = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.RequiresPassword")); }
			ScriptFunction PreLogin() { return mPreLogin ? mPreLogin : (mPreLogin = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.PreLogin")); }
			ScriptFunction GetNextPlayerID() { return mGetNextPlayerID ? mGetNextPlayerID : (mGetNextPlayerID = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.GetNextPlayerID")); }
			ScriptFunction SpawnPlayerController() { return mSpawnPlayerController ? mSpawnPlayerController : (mSpawnPlayerController = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.SpawnPlayerController")); }
			ScriptFunction Login() { return mLogin ? mLogin : (mLogin = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.Login")); }
			ScriptFunction StartMatch() { return mStartMatch ? mStartMatch : (mStartMatch = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.StartMatch")); }
			ScriptFunction StartOnlineGame() { return mStartOnlineGame ? mStartOnlineGame : (mStartOnlineGame = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.StartOnlineGame")); }
			ScriptFunction OnStartOnlineGameComplete() { return mOnStartOnlineGameComplete ? mOnStartOnlineGameComplete : (mOnStartOnlineGameComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.OnStartOnlineGameComplete")); }
			ScriptFunction StartHumans() { return mStartHumans ? mStartHumans : (mStartHumans = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.StartHumans")); }
			ScriptFunction StartBots() { return mStartBots ? mStartBots : (mStartBots = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.StartBots")); }
			ScriptFunction RestartPlayer() { return mRestartPlayer ? mRestartPlayer : (mRestartPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.RestartPlayer")); }
			ScriptFunction SpawnDefaultPawnFor() { return mSpawnDefaultPawnFor ? mSpawnDefaultPawnFor : (mSpawnDefaultPawnFor = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.SpawnDefaultPawnFor")); }
			ScriptFunction GetDefaultPlayerClass() { return mGetDefaultPlayerClass ? mGetDefaultPlayerClass : (mGetDefaultPlayerClass = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.GetDefaultPlayerClass")); }
			ScriptFunction ReplicateStreamingStatus() { return mReplicateStreamingStatus ? mReplicateStreamingStatus : (mReplicateStreamingStatus = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.ReplicateStreamingStatus")); }
			ScriptFunction GenericPlayerInitialization() { return mGenericPlayerInitialization ? mGenericPlayerInitialization : (mGenericPlayerInitialization = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.GenericPlayerInitialization")); }
			ScriptFunction BestNextHostSort() { return mBestNextHostSort ? mBestNextHostSort : (mBestNextHostSort = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.BestNextHostSort")); }
			ScriptFunction UpdateBestNextHosts() { return mUpdateBestNextHosts ? mUpdateBestNextHosts : (mUpdateBestNextHosts = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.UpdateBestNextHosts")); }
			ScriptFunction PostLogin() { return mPostLogin ? mPostLogin : (mPostLogin = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.PostLogin")); }
			ScriptFunction UpdateNetSpeeds() { return mUpdateNetSpeeds ? mUpdateNetSpeeds : (mUpdateNetSpeeds = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.UpdateNetSpeeds")); }
			ScriptFunction CalculatedNetSpeed() { return mCalculatedNetSpeed ? mCalculatedNetSpeed : (mCalculatedNetSpeed = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.CalculatedNetSpeed")); }
			ScriptFunction PreExit() { return mPreExit ? mPreExit : (mPreExit = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.PreExit")); }
			ScriptFunction Logout() { return mLogout ? mLogout : (mLogout = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.Logout")); }
			ScriptFunction UnregisterPlayer() { return mUnregisterPlayer ? mUnregisterPlayer : (mUnregisterPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.UnregisterPlayer")); }
			ScriptFunction AcceptInventory() { return mAcceptInventory ? mAcceptInventory : (mAcceptInventory = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.AcceptInventory")); }
			ScriptFunction AddDefaultInventory() { return mAddDefaultInventory ? mAddDefaultInventory : (mAddDefaultInventory = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.AddDefaultInventory")); }
			ScriptFunction Mutate() { return mMutate ? mMutate : (mMutate = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.Mutate")); }
			ScriptFunction SetPlayerDefaults() { return mSetPlayerDefaults ? mSetPlayerDefaults : (mSetPlayerDefaults = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.SetPlayerDefaults")); }
			ScriptFunction NotifyKilled() { return mNotifyKilled ? mNotifyKilled : (mNotifyKilled = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.NotifyKilled")); }
			ScriptFunction Killed() { return mKilled ? mKilled : (mKilled = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.Killed")); }
			ScriptFunction PreventDeath() { return mPreventDeath ? mPreventDeath : (mPreventDeath = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.PreventDeath")); }
			ScriptFunction BroadcastDeathMessage() { return mBroadcastDeathMessage ? mBroadcastDeathMessage : (mBroadcastDeathMessage = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.BroadcastDeathMessage")); }
			ScriptFunction Kick() { return mKick ? mKick : (mKick = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.Kick")); }
			ScriptFunction KickBan() { return mKickBan ? mKickBan : (mKickBan = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.KickBan")); }
			ScriptFunction ReduceDamage() { return mReduceDamage ? mReduceDamage : (mReduceDamage = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.ReduceDamage")); }
			ScriptFunction ShouldRespawn() { return mShouldRespawn ? mShouldRespawn : (mShouldRespawn = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.ShouldRespawn")); }
			ScriptFunction DiscardInventory() { return mDiscardInventory ? mDiscardInventory : (mDiscardInventory = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.DiscardInventory")); }
			ScriptFunction ChangeName() { return mChangeName ? mChangeName : (mChangeName = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.ChangeName")); }
			ScriptFunction PickTeam() { return mPickTeam ? mPickTeam : (mPickTeam = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.PickTeam")); }
			ScriptFunction SendPlayer() { return mSendPlayer ? mSendPlayer : (mSendPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.SendPlayer")); }
			ScriptFunction GetNextMap() { return mGetNextMap ? mGetNextMap : (mGetNextMap = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.GetNextMap")); }
			ScriptFunction GetTravelType() { return mGetTravelType ? mGetTravelType : (mGetTravelType = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.GetTravelType")); }
			ScriptFunction RestartGame() { return mRestartGame ? mRestartGame : (mRestartGame = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.RestartGame")); }
			ScriptFunction Broadcast() { return mBroadcast ? mBroadcast : (mBroadcast = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.Broadcast")); }
			ScriptFunction BroadcastTeam() { return mBroadcastTeam ? mBroadcastTeam : (mBroadcastTeam = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.BroadcastTeam")); }
			ScriptFunction BroadcastLocalized() { return mBroadcastLocalized ? mBroadcastLocalized : (mBroadcastLocalized = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.BroadcastLocalized")); }
			ScriptFunction BroadcastLocalizedTeam() { return mBroadcastLocalizedTeam ? mBroadcastLocalizedTeam : (mBroadcastLocalizedTeam = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.BroadcastLocalizedTeam")); }
			ScriptFunction CheckModifiedEndGame() { return mCheckModifiedEndGame ? mCheckModifiedEndGame : (mCheckModifiedEndGame = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.CheckModifiedEndGame")); }
			ScriptFunction CheckEndGame() { return mCheckEndGame ? mCheckEndGame : (mCheckEndGame = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.CheckEndGame")); }
			ScriptFunction WriteOnlineStats() { return mWriteOnlineStats ? mWriteOnlineStats : (mWriteOnlineStats = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.WriteOnlineStats")); }
			ScriptFunction WriteOnlinePlayerScores() { return mWriteOnlinePlayerScores ? mWriteOnlinePlayerScores : (mWriteOnlinePlayerScores = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.WriteOnlinePlayerScores")); }
			ScriptFunction ForceRoundStart() { return mForceRoundStart ? mForceRoundStart : (mForceRoundStart = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.ForceRoundStart")); }
			ScriptFunction EndGame() { return mEndGame ? mEndGame : (mEndGame = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.EndGame")); }
			ScriptFunction PerformEndGameHandling() { return mPerformEndGameHandling ? mPerformEndGameHandling : (mPerformEndGameHandling = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.PerformEndGameHandling")); }
			ScriptFunction EndOnlineGame() { return mEndOnlineGame ? mEndOnlineGame : (mEndOnlineGame = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.EndOnlineGame")); }
			ScriptFunction GameEventsPoll() { return mGameEventsPoll ? mGameEventsPoll : (mGameEventsPoll = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.GameEventsPoll")); }
			ScriptFunction EndLogging() { return mEndLogging ? mEndLogging : (mEndLogging = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.EndLogging")); }
			ScriptFunction ShouldSpawnAtStartSpot() { return mShouldSpawnAtStartSpot ? mShouldSpawnAtStartSpot : (mShouldSpawnAtStartSpot = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.ShouldSpawnAtStartSpot")); }
			ScriptFunction FindPlayerStart() { return mFindPlayerStart ? mFindPlayerStart : (mFindPlayerStart = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.FindPlayerStart")); }
			ScriptFunction ChoosePlayerStart() { return mChoosePlayerStart ? mChoosePlayerStart : (mChoosePlayerStart = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.ChoosePlayerStart")); }
			ScriptFunction RatePlayerStart() { return mRatePlayerStart ? mRatePlayerStart : (mRatePlayerStart = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.RatePlayerStart")); }
			ScriptFunction AddObjectiveScore() { return mAddObjectiveScore ? mAddObjectiveScore : (mAddObjectiveScore = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.AddObjectiveScore")); }
			ScriptFunction ScoreObjective() { return mScoreObjective ? mScoreObjective : (mScoreObjective = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.ScoreObjective")); }
			ScriptFunction CheckScore() { return mCheckScore ? mCheckScore : (mCheckScore = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.CheckScore")); }
			ScriptFunction ScoreKill() { return mScoreKill ? mScoreKill : (mScoreKill = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.ScoreKill")); }
			ScriptFunction ModifyScoreKill() { return mModifyScoreKill ? mModifyScoreKill : (mModifyScoreKill = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.ModifyScoreKill")); }
			ScriptFunction DriverEnteredVehicle() { return mDriverEnteredVehicle ? mDriverEnteredVehicle : (mDriverEnteredVehicle = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.DriverEnteredVehicle")); }
			ScriptFunction CanLeaveVehicle() { return mCanLeaveVehicle ? mCanLeaveVehicle : (mCanLeaveVehicle = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.CanLeaveVehicle")); }
			ScriptFunction DriverLeftVehicle() { return mDriverLeftVehicle ? mDriverLeftVehicle : (mDriverLeftVehicle = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.DriverLeftVehicle")); }
			ScriptFunction AllowMutator() { return mAllowMutator ? mAllowMutator : (mAllowMutator = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.AllowMutator")); }
			ScriptFunction AllowCheats() { return mAllowCheats ? mAllowCheats : (mAllowCheats = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.AllowCheats")); }
			ScriptFunction AllowPausing() { return mAllowPausing ? mAllowPausing : (mAllowPausing = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.AllowPausing")); }
			ScriptFunction PreCommitMapChange() { return mPreCommitMapChange ? mPreCommitMapChange : (mPreCommitMapChange = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.PreCommitMapChange")); }
			ScriptFunction PostCommitMapChange() { return mPostCommitMapChange ? mPostCommitMapChange : (mPostCommitMapChange = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.PostCommitMapChange")); }
			ScriptFunction AddInactivePRI() { return mAddInactivePRI ? mAddInactivePRI : (mAddInactivePRI = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.AddInactivePRI")); }
			ScriptFunction FindInactivePRI() { return mFindInactivePRI ? mFindInactivePRI : (mFindInactivePRI = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.FindInactivePRI")); }
			ScriptFunction SetPRI() { return mSetPRI ? mSetPRI : (mSetPRI = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.SetPRI")); }
			ScriptFunction OverridePRI() { return mOverridePRI ? mOverridePRI : (mOverridePRI = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.OverridePRI")); }
			ScriptFunction GetSeamlessTravelActorList() { return mGetSeamlessTravelActorList ? mGetSeamlessTravelActorList : (mGetSeamlessTravelActorList = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.GetSeamlessTravelActorList")); }
			ScriptFunction SwapPlayerControllers() { return mSwapPlayerControllers ? mSwapPlayerControllers : (mSwapPlayerControllers = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.SwapPlayerControllers")); }
			ScriptFunction PostSeamlessTravel() { return mPostSeamlessTravel ? mPostSeamlessTravel : (mPostSeamlessTravel = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.PostSeamlessTravel")); }
			ScriptFunction UpdateGameSettings() { return mUpdateGameSettings ? mUpdateGameSettings : (mUpdateGameSettings = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.UpdateGameSettings")); }
			ScriptFunction HandleSeamlessTravelPlayer() { return mHandleSeamlessTravelPlayer ? mHandleSeamlessTravelPlayer : (mHandleSeamlessTravelPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.HandleSeamlessTravelPlayer")); }
			ScriptFunction SetSeamlessTravelViewTarget() { return mSetSeamlessTravelViewTarget ? mSetSeamlessTravelViewTarget : (mSetSeamlessTravelViewTarget = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.SetSeamlessTravelViewTarget")); }
			ScriptFunction UpdateGameSettingsCounts() { return mUpdateGameSettingsCounts ? mUpdateGameSettingsCounts : (mUpdateGameSettingsCounts = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.UpdateGameSettingsCounts")); }
			ScriptFunction ProcessClientRegistrationCompletion() { return mProcessClientRegistrationCompletion ? mProcessClientRegistrationCompletion : (mProcessClientRegistrationCompletion = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.ProcessClientRegistrationCompletion")); }
			ScriptFunction StartArbitrationRegistration() { return mStartArbitrationRegistration ? mStartArbitrationRegistration : (mStartArbitrationRegistration = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.StartArbitrationRegistration")); }
			ScriptFunction StartArbitratedMatch() { return mStartArbitratedMatch ? mStartArbitratedMatch : (mStartArbitratedMatch = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.StartArbitratedMatch")); }
			ScriptFunction RegisterServerForArbitration() { return mRegisterServerForArbitration ? mRegisterServerForArbitration : (mRegisterServerForArbitration = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.RegisterServerForArbitration")); }
			ScriptFunction ArbitrationRegistrationComplete() { return mArbitrationRegistrationComplete ? mArbitrationRegistrationComplete : (mArbitrationRegistrationComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.ArbitrationRegistrationComplete")); }
			ScriptFunction MatchIsInProgress() { return mMatchIsInProgress ? mMatchIsInProgress : (mMatchIsInProgress = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.MatchIsInProgress")); }
			ScriptFunction NotifyArbitratedMatchEnd() { return mNotifyArbitratedMatchEnd ? mNotifyArbitratedMatchEnd : (mNotifyArbitratedMatchEnd = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.NotifyArbitratedMatchEnd")); }
			ScriptFunction UpdateGameplayMuteList() { return mUpdateGameplayMuteList ? mUpdateGameplayMuteList : (mUpdateGameplayMuteList = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.UpdateGameplayMuteList")); }
			ScriptFunction RecalculateSkillRating() { return mRecalculateSkillRating ? mRecalculateSkillRating : (mRecalculateSkillRating = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.RecalculateSkillRating")); }
			ScriptFunction MatineeCancelled() { return mMatineeCancelled ? mMatineeCancelled : (mMatineeCancelled = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.MatineeCancelled")); }
			ScriptFunction ProcessServerLogin() { return mProcessServerLogin ? mProcessServerLogin : (mProcessServerLogin = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.ProcessServerLogin")); }
			ScriptFunction ClearAutoLoginDelegates() { return mClearAutoLoginDelegates ? mClearAutoLoginDelegates : (mClearAutoLoginDelegates = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.ClearAutoLoginDelegates")); }
			ScriptFunction OnLoginFailed() { return mOnLoginFailed ? mOnLoginFailed : (mOnLoginFailed = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.OnLoginFailed")); }
			ScriptFunction OnLoginChange() { return mOnLoginChange ? mOnLoginChange : (mOnLoginChange = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.OnLoginChange")); }
			ScriptFunction RegisterServer() { return mRegisterServer ? mRegisterServer : (mRegisterServer = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.RegisterServer")); }
			ScriptFunction OnServerCreateComplete() { return mOnServerCreateComplete ? mOnServerCreateComplete : (mOnServerCreateComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.OnServerCreateComplete")); }
			ScriptFunction TellClientsToReturnToPartyHost() { return mTellClientsToReturnToPartyHost ? mTellClientsToReturnToPartyHost : (mTellClientsToReturnToPartyHost = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.TellClientsToReturnToPartyHost")); }
			ScriptFunction TellClientsToTravelToSession() { return mTellClientsToTravelToSession ? mTellClientsToTravelToSession : (mTellClientsToTravelToSession = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.TellClientsToTravelToSession")); }
			ScriptFunction DoTravelTheWorld() { return mDoTravelTheWorld ? mDoTravelTheWorld : (mDoTravelTheWorld = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.DoTravelTheWorld")); }
			ScriptFunction IsCheckingForFragmentation() { return mIsCheckingForFragmentation ? mIsCheckingForFragmentation : (mIsCheckingForFragmentation = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.IsCheckingForFragmentation")); }
			ScriptFunction IsCheckingForMemLeaks() { return mIsCheckingForMemLeaks ? mIsCheckingForMemLeaks : (mIsCheckingForMemLeaks = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.IsCheckingForMemLeaks")); }
			ScriptFunction ShouldAutoContinueToNextRound() { return mShouldAutoContinueToNextRound ? mShouldAutoContinueToNextRound : (mShouldAutoContinueToNextRound = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.ShouldAutoContinueToNextRound")); }
			ScriptFunction CheckForSentinelRun() { return mCheckForSentinelRun ? mCheckForSentinelRun : (mCheckForSentinelRun = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.CheckForSentinelRun")); }
			ScriptFunction BeginBVT() { return mBeginBVT ? mBeginBVT : (mBeginBVT = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.BeginBVT")); }
			ScriptFunction EnableStandbyCheatDetection() { return mEnableStandbyCheatDetection ? mEnableStandbyCheatDetection : (mEnableStandbyCheatDetection = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.EnableStandbyCheatDetection")); }
			ScriptFunction StandbyCheatDetected() { return mStandbyCheatDetected ? mStandbyCheatDetected : (mStandbyCheatDetected = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.StandbyCheatDetected")); }
			ScriptFunction OnEngineHasLoaded() { return mOnEngineHasLoaded ? mOnEngineHasLoaded : (mOnEngineHasLoaded = ScriptObject.Find!(ScriptFunction)("Function Engine.GameInfo.OnEngineHasLoaded")); }
		}
	}
	enum EStandbyType : ubyte
	{
		STDBY_Rx = 0,
		STDBY_Tx = 1,
		STDBY_BadPing = 2,
		STDBY_MAX = 3,
	}
	struct GameClassShortName
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.GameInfo.GameClassShortName")); }
		@property final auto ref
		{
			ScriptString GameClassName() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
			ScriptString ShortName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		}
	}
	struct GameTypePrefix
	{
		private ubyte __buffer__[52];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.GameInfo.GameTypePrefix")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(ScriptString) AdditionalGameTypes() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)&this + 28); }
				ScriptArray!(ScriptString) ForcedObjects() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)&this + 40); }
				ScriptString GameType() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
				ScriptString Prefix() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
			}
			bool bUsesCommonPackage() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
			bool bUsesCommonPackage(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			int NumPlayers() { return *cast(int*)(cast(size_t)cast(void*)this + 584); }
			ScriptClass GameMessageClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 644); }
			ScriptClass PlayerReplicationInfoClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 680); }
			ScriptString DefaultPlayerName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 600); }
			float MaxTimeMargin() { return *cast(float*)(cast(size_t)cast(void*)this + 696); }
			int ArbitratedLeaderboardId() { return *cast(int*)(cast(size_t)cast(void*)this + 752); }
			float GameDifficulty() { return *cast(float*)(cast(size_t)cast(void*)this + 544); }
			int TimeLimit() { return *cast(int*)(cast(size_t)cast(void*)this + 636); }
			ScriptString CauseEventCommand() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 480); }
			int AdjustedNetSpeed() { return *cast(int*)(cast(size_t)cast(void*)this + 776); }
			int MaxDynamicBandwidth() { return *cast(int*)(cast(size_t)cast(void*)this + 792); }
			float GameSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
			// WARNING: Property 'GameReplicationInfo' has the same name as a defined type!
			ScriptClass GameReplicationInfoClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 684); }
			CoverReplicator CoverReplicatorBase() { return *cast(CoverReplicator*)(cast(size_t)cast(void*)this + 756); }
			ScriptString GameName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 612); }
			// WARNING: Property 'BroadcastHandler' has the same name as a defined type!
			// WARNING: Property 'AccessControl' has the same name as a defined type!
			int NumTravellingPlayers() { return *cast(int*)(cast(size_t)cast(void*)this + 592); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) Pausers() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)*)(cast(size_t)cast(void*)this + 720); }
			int MaxPlayers() { return *cast(int*)(cast(size_t)cast(void*)this + 576); }
			int MaxPlayersAllowed() { return *cast(int*)(cast(size_t)cast(void*)this + 580); }
			int MaxSpectators() { return *cast(int*)(cast(size_t)cast(void*)this + 564); }
			int MaxSpectatorsAllowed() { return *cast(int*)(cast(size_t)cast(void*)this + 568); }
			ScriptClass BroadcastHandlerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 660); }
			ScriptClass AccessControlClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 652); }
			AutoTestManager MyAutoTestManager() { return *cast(AutoTestManager*)(cast(size_t)cast(void*)this + 672); }
			ScriptClass AutoTestManagerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 668); }
			ScriptString BugLocString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 492); }
			ScriptString BugRotString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 504); }
			Mutator BaseMutator() { return *cast(Mutator*)(cast(size_t)cast(void*)this + 648); }
			OnlineSubsystem OnlineSub() { return *cast(OnlineSubsystem*)(cast(size_t)cast(void*)this + 732); }
			ScriptString ServerOptions() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 764); }
			int NumSpectators() { return *cast(int*)(cast(size_t)cast(void*)this + 572); }
			ScriptClass PlayerControllerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 676); }
			ScriptClass DefaultPawnClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 556); }
			ScriptClass HUDType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 560); }
			float LastNetSpeedUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 780); }
			int TotalNetBandwidth() { return *cast(int*)(cast(size_t)cast(void*)this + 784); }
			int MinDynamicBandwidth() { return *cast(int*)(cast(size_t)cast(void*)this + 788); }
			ScriptArray!(PlayerController) ArbitrationPCs() { return *cast(ScriptArray!(PlayerController)*)(cast(size_t)cast(void*)this + 528); }
			ScriptClass DeathMessageClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 640); }
			ScriptClass OnlineStatsWriteClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 744); }
			int LeaderboardId() { return *cast(int*)(cast(size_t)cast(void*)this + 748); }
			ScriptArray!(PlayerController) PendingArbitrationPCs() { return *cast(ScriptArray!(PlayerController)*)(cast(size_t)cast(void*)this + 516); }
			int MaxLives() { return *cast(int*)(cast(size_t)cast(void*)this + 632); }
			ScriptArray!(PlayerReplicationInfo) InactivePRIArray() { return *cast(ScriptArray!(PlayerReplicationInfo)*)(cast(size_t)cast(void*)this + 708); }
			int NumBots() { return *cast(int*)(cast(size_t)cast(void*)this + 588); }
			float ArbitrationHandshakeTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 540); }
			ScriptClass OnlineGameSettingsClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 760); }
			int GoreLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 548); }
			int CurrentID() { return *cast(int*)(cast(size_t)cast(void*)this + 596); }
			float FearCostFallOff() { return *cast(float*)(cast(size_t)cast(void*)this + 624); }
			int GoalScore() { return *cast(int*)(cast(size_t)cast(void*)this + 628); }
			float MaxIdleTime() { return *cast(float*)(cast(size_t)cast(void*)this + 692); }
			float TimeMarginSlack() { return *cast(float*)(cast(size_t)cast(void*)this + 700); }
			float MinTimeMargin() { return *cast(float*)(cast(size_t)cast(void*)this + 704); }
			float StandbyRxCheatTime() { return *cast(float*)(cast(size_t)cast(void*)this + 796); }
			float StandbyTxCheatTime() { return *cast(float*)(cast(size_t)cast(void*)this + 800); }
			int BadPingThreshold() { return *cast(int*)(cast(size_t)cast(void*)this + 804); }
			float PercentMissingForRxStandby() { return *cast(float*)(cast(size_t)cast(void*)this + 808); }
			float PercentMissingForTxStandby() { return *cast(float*)(cast(size_t)cast(void*)this + 812); }
			float PercentForBadPing() { return *cast(float*)(cast(size_t)cast(void*)this + 816); }
			float JoinInProgressStandbyWaitTime() { return *cast(float*)(cast(size_t)cast(void*)this + 820); }
			ScriptArray!(GameInfo.GameClassShortName) GameInfoClassAliases() { return *cast(ScriptArray!(GameInfo.GameClassShortName)*)(cast(size_t)cast(void*)this + 824); }
			ScriptString DefaultGameType() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 836); }
			ScriptArray!(GameInfo.GameTypePrefix) DefaultMapPrefixes() { return *cast(ScriptArray!(GameInfo.GameTypePrefix)*)(cast(size_t)cast(void*)this + 848); }
			ScriptArray!(GameInfo.GameTypePrefix) CustomMapPrefixes() { return *cast(ScriptArray!(GameInfo.GameTypePrefix)*)(cast(size_t)cast(void*)this + 860); }
		}
		bool bRequiresPushToTalk() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x400000) != 0; }
		bool bRequiresPushToTalk(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x400000; } return val; }
		bool bTeamGame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x4) != 0; }
		bool bTeamGame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x4; } return val; }
		bool bWaitingToStartMatch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x40) != 0; }
		bool bWaitingToStartMatch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x40; } return val; }
		bool bHasNetworkError() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x200000) != 0; }
		bool bHasNetworkError(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x200000; } return val; }
		bool bRestartLevel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1) != 0; }
		bool bRestartLevel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1; } return val; }
		bool bGameEnded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x8) != 0; }
		bool bGameEnded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x8; } return val; }
		bool bOverTime() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x10) != 0; }
		bool bOverTime(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x10; } return val; }
		bool bDoFearCostFallOff() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x80000) != 0; }
		bool bDoFearCostFallOff(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x80000; } return val; }
		bool bFixedPlayerStart() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x40000) != 0; }
		bool bFixedPlayerStart(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x40000; } return val; }
		bool bUsingArbitration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x2000) != 0; }
		bool bUsingArbitration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x2000; } return val; }
		bool bLevelChange() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x800) != 0; }
		bool bLevelChange(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x800; } return val; }
		bool bUseSeamlessTravel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x100000) != 0; }
		bool bUseSeamlessTravel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x100000; } return val; }
		bool bHasArbitratedHandshakeBegun() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x4000) != 0; }
		bool bHasArbitratedHandshakeBegun(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x4000; } return val; }
		bool bDelayedStart() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x20) != 0; }
		bool bDelayedStart(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x20; } return val; }
		bool bHasEndGameHandshakeBegun() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x20000) != 0; }
		bool bHasEndGameHandshakeBegun(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x20000; } return val; }
		bool bIsEndGameHandshakeComplete() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x10000) != 0; }
		bool bIsEndGameHandshakeComplete(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x10000; } return val; }
		bool bGameRestarted() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x400) != 0; }
		bool bGameRestarted(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x400; } return val; }
		bool bChangeLevels() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x80) != 0; }
		bool bChangeLevels(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x80; } return val; }
		bool bAlreadyChanged() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x100) != 0; }
		bool bAlreadyChanged(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x100; } return val; }
		bool bPauseable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x2) != 0; }
		bool bPauseable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x2; } return val; }
		bool bAdminCanPause() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x200) != 0; }
		bool bAdminCanPause(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x200; } return val; }
		bool bNeedsEndGameHandshake() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x8000) != 0; }
		bool bNeedsEndGameHandshake(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x8000; } return val; }
		bool bKickLiveIdlers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1000) != 0; }
		bool bKickLiveIdlers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1000; } return val; }
		bool bIsStandbyCheckingEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x800000) != 0; }
		bool bIsStandbyCheckingEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x800000; } return val; }
		bool bIsStandbyCheckingOn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1000000) != 0; }
		bool bIsStandbyCheckingOn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1000000; } return val; }
		bool bHasStandbyCheatTriggered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x2000000) != 0; }
		bool bHasStandbyCheatTriggered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x2000000; } return val; }
	}
final:
	bool CheckRelevance(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckRelevance, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	static ScriptString ParseOption(ScriptString Options, ScriptString InKey)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = InKey;
		StaticClass.ProcessEvent(Functions.ParseOption, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[24];
	}
	bool AtCapacity(bool bSpectator)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bSpectator;
		(cast(ScriptObject)this).ProcessEvent(Functions.AtCapacity, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ForceClearUnpauseDelegates(Actor PauseActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = PauseActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceClearUnpauseDelegates, params.ptr, cast(void*)0);
	}
	bool IsAutomatedPerfTesting()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsAutomatedPerfTesting, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool SetPause(PlayerController PC, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* CanUnpauseDelegate)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = CanUnpauseDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPause, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool ChangeTeam(Controller Other, int N, bool bNewTeam)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		*cast(int*)&params[4] = N;
		*cast(bool*)&params[8] = bNewTeam;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangeTeam, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool CanSpectate(PlayerController Viewer, PlayerReplicationInfo ViewTarget)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = Viewer;
		*cast(PlayerReplicationInfo*)&params[4] = ViewTarget;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanSpectate, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool PlayerCanRestartGame(PlayerController aPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = aPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayerCanRestartGame, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool PlayerCanRestart(PlayerController aPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = aPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayerCanRestart, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool IsDoingASentinelRun()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsDoingASentinelRun, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	CoverReplicator GetCoverReplicator()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCoverReplicator, params.ptr, cast(void*)0);
		return *cast(CoverReplicator*)params.ptr;
	}
	bool PickupQuery(Pawn Other, ScriptClass ItemClass, Actor Pickup)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(ScriptClass*)&params[4] = ItemClass;
		*cast(Actor*)&params[8] = Pickup;
		(cast(ScriptObject)this).ProcessEvent(Functions.PickupQuery, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool GetSupportedGameTypes(ScriptString* InFilename, GameInfo.GameTypePrefix* OutGameType, bool bCheckExt)
	{
		ubyte params[72];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *InFilename;
		*cast(GameInfo.GameTypePrefix*)&params[12] = *OutGameType;
		*cast(bool*)&params[64] = bCheckExt;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSupportedGameTypes, params.ptr, cast(void*)0);
		*InFilename = *cast(ScriptString*)params.ptr;
		*OutGameType = *cast(GameInfo.GameTypePrefix*)&params[12];
		return *cast(bool*)&params[68];
	}
	bool GetMapCommonPackageName(ScriptString* InFilename, ScriptString* OutCommonPackageName)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *InFilename;
		*cast(ScriptString*)&params[12] = *OutCommonPackageName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMapCommonPackageName, params.ptr, cast(void*)0);
		*InFilename = *cast(ScriptString*)params.ptr;
		*OutCommonPackageName = *cast(ScriptString*)&params[12];
		return *cast(bool*)&params[24];
	}
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	bool ShouldReset(Actor ActorToReset)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = ActorToReset;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldReset, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ResetLevel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetLevel, cast(void*)0, cast(void*)0);
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Timer, cast(void*)0, cast(void*)0);
	}
	void DoNavFearCostFallOff()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoNavFearCostFallOff, cast(void*)0, cast(void*)0);
	}
	void NotifyNavigationChanged(NavigationPoint N)
	{
		ubyte params[4];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = N;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyNavigationChanged, params.ptr, cast(void*)0);
	}
	void GameEnding()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.GameEnding, cast(void*)0, cast(void*)0);
	}
	void KickIdler(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.KickIdler, params.ptr, cast(void*)0);
	}
	void ForceKickPlayer(PlayerController PC, ScriptString KickReason)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(ScriptString*)&params[4] = KickReason;
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceKickPlayer, params.ptr, cast(void*)0);
	}
	void InitGameReplicationInfo()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitGameReplicationInfo, cast(void*)0, cast(void*)0);
	}
	ScriptString GetNetworkNumber()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNetworkNumber, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	int GetNumPlayers()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNumPlayers, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool CanUnpause()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanUnpause, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ClearPause()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearPause, cast(void*)0, cast(void*)0);
	}
	void DebugPause()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DebugPause, cast(void*)0, cast(void*)0);
	}
	void SetGameSpeed(float T)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = T;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetGameSpeed, params.ptr, cast(void*)0);
	}
	static bool GrabOption(ScriptString* Options, ScriptString* Result)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *Options;
		*cast(ScriptString*)&params[12] = *Result;
		StaticClass.ProcessEvent(Functions.GrabOption, params.ptr, cast(void*)0);
		*Options = *cast(ScriptString*)params.ptr;
		*Result = *cast(ScriptString*)&params[12];
		return *cast(bool*)&params[24];
	}
	static void GetKeyValue(ScriptString Pair, ScriptString* Key, ScriptString* Value)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Pair;
		*cast(ScriptString*)&params[12] = *Key;
		*cast(ScriptString*)&params[24] = *Value;
		StaticClass.ProcessEvent(Functions.GetKeyValue, params.ptr, cast(void*)0);
		*Key = *cast(ScriptString*)&params[12];
		*Value = *cast(ScriptString*)&params[24];
	}
	static bool HasOption(ScriptString Options, ScriptString InKey)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = InKey;
		StaticClass.ProcessEvent(Functions.HasOption, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	static int GetIntOption(ScriptString Options, ScriptString ParseString, int CurrentValue)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = ParseString;
		*cast(int*)&params[24] = CurrentValue;
		StaticClass.ProcessEvent(Functions.GetIntOption, params.ptr, cast(void*)0);
		return *cast(int*)&params[28];
	}
	static ScriptString GetDefaultGameClassPath(ScriptString MapName, ScriptString Options, ScriptString Portal)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MapName;
		*cast(ScriptString*)&params[12] = Options;
		*cast(ScriptString*)&params[24] = Portal;
		StaticClass.ProcessEvent(Functions.GetDefaultGameClassPath, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[36];
	}
	static ScriptClass SetGameType(ScriptString MapName, ScriptString Options, ScriptString Portal)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MapName;
		*cast(ScriptString*)&params[12] = Options;
		*cast(ScriptString*)&params[24] = Portal;
		StaticClass.ProcessEvent(Functions.SetGameType, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[36];
	}
	void InitGame(ScriptString Options, ScriptString* ErrorMessage)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = *ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitGame, params.ptr, cast(void*)0);
		*ErrorMessage = *cast(ScriptString*)&params[12];
	}
	void NotifyPendingConnectionLost()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyPendingConnectionLost, cast(void*)0, cast(void*)0);
	}
	void AddMutator(ScriptString mutname, bool bUserAdded)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = mutname;
		*cast(bool*)&params[12] = bUserAdded;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddMutator, params.ptr, cast(void*)0);
	}
	void RemoveMutator(Mutator MutatorToRemove)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Mutator*)params.ptr = MutatorToRemove;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveMutator, params.ptr, cast(void*)0);
	}
	void ProcessServerTravel(ScriptString pURL, bool bAbsolute)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		*cast(bool*)&params[12] = bAbsolute;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessServerTravel, params.ptr, cast(void*)0);
	}
	PlayerController ProcessClientTravel(ScriptString* pURL, UObject.Guid NextMapGuid, bool bSeamless, bool bAbsolute)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *pURL;
		*cast(UObject.Guid*)&params[12] = NextMapGuid;
		*cast(bool*)&params[28] = bSeamless;
		*cast(bool*)&params[32] = bAbsolute;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessClientTravel, params.ptr, cast(void*)0);
		*pURL = *cast(ScriptString*)params.ptr;
		return *cast(PlayerController*)&params[36];
	}
	bool RequiresPassword()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequiresPassword, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PreLogin(ScriptString Options, ScriptString Address, ScriptString* ErrorMessage)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = Address;
		*cast(ScriptString*)&params[24] = *ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(Functions.PreLogin, params.ptr, cast(void*)0);
		*ErrorMessage = *cast(ScriptString*)&params[24];
	}
	int GetNextPlayerID()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNextPlayerID, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	PlayerController SpawnPlayerController(Vector SpawnLocation, Rotator SpawnRotation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = SpawnLocation;
		*cast(Rotator*)&params[12] = SpawnRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnPlayerController, params.ptr, cast(void*)0);
		return *cast(PlayerController*)&params[24];
	}
	PlayerController Login(ScriptString Portal, ScriptString Options, OnlineSubsystem.UniqueNetId UniqueId, ScriptString* ErrorMessage)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Portal;
		*cast(ScriptString*)&params[12] = Options;
		*cast(OnlineSubsystem.UniqueNetId*)&params[24] = UniqueId;
		*cast(ScriptString*)&params[32] = *ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(Functions.Login, params.ptr, cast(void*)0);
		*ErrorMessage = *cast(ScriptString*)&params[32];
		return *cast(PlayerController*)&params[44];
	}
	void StartMatch()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartMatch, cast(void*)0, cast(void*)0);
	}
	void StartOnlineGame()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartOnlineGame, cast(void*)0, cast(void*)0);
	}
	void OnStartOnlineGameComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnStartOnlineGameComplete, params.ptr, cast(void*)0);
	}
	void StartHumans()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartHumans, cast(void*)0, cast(void*)0);
	}
	void StartBots()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartBots, cast(void*)0, cast(void*)0);
	}
	void RestartPlayer(Controller NewPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = NewPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.RestartPlayer, params.ptr, cast(void*)0);
	}
	Pawn SpawnDefaultPawnFor(Controller NewPlayer, NavigationPoint StartSpot)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = NewPlayer;
		*cast(NavigationPoint*)&params[4] = StartSpot;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnDefaultPawnFor, params.ptr, cast(void*)0);
		return *cast(Pawn*)&params[8];
	}
	ScriptClass GetDefaultPlayerClass(Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDefaultPlayerClass, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[4];
	}
	void ReplicateStreamingStatus(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicateStreamingStatus, params.ptr, cast(void*)0);
	}
	void GenericPlayerInitialization(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.GenericPlayerInitialization, params.ptr, cast(void*)0);
	}
	int BestNextHostSort(PlayerController A, PlayerController B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = A;
		*cast(PlayerController*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.BestNextHostSort, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void UpdateBestNextHosts()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateBestNextHosts, cast(void*)0, cast(void*)0);
	}
	void PostLogin(PlayerController NewPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = NewPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostLogin, params.ptr, cast(void*)0);
	}
	void UpdateNetSpeeds()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateNetSpeeds, cast(void*)0, cast(void*)0);
	}
	int CalculatedNetSpeed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalculatedNetSpeed, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void PreExit()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreExit, cast(void*)0, cast(void*)0);
	}
	void Logout(Controller Exiting)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Exiting;
		(cast(ScriptObject)this).ProcessEvent(Functions.Logout, params.ptr, cast(void*)0);
	}
	void UnregisterPlayer(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnregisterPlayer, params.ptr, cast(void*)0);
	}
	void AcceptInventory(Pawn PlayerPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = PlayerPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.AcceptInventory, params.ptr, cast(void*)0);
	}
	void AddDefaultInventory(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddDefaultInventory, params.ptr, cast(void*)0);
	}
	void Mutate(ScriptString MutateString, PlayerController Sender)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MutateString;
		*cast(PlayerController*)&params[12] = Sender;
		(cast(ScriptObject)this).ProcessEvent(Functions.Mutate, params.ptr, cast(void*)0);
	}
	void SetPlayerDefaults(Pawn PlayerPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = PlayerPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPlayerDefaults, params.ptr, cast(void*)0);
	}
	void NotifyKilled(Controller Killer, Controller Killed, Pawn KilledPawn, ScriptClass pDamageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Killed;
		*cast(Pawn*)&params[8] = KilledPawn;
		*cast(ScriptClass*)&params[12] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyKilled, params.ptr, cast(void*)0);
	}
	void Killed(Controller Killer, Controller KilledPlayer, Pawn KilledPawn, ScriptClass pDamageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = KilledPlayer;
		*cast(Pawn*)&params[8] = KilledPawn;
		*cast(ScriptClass*)&params[12] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.Killed, params.ptr, cast(void*)0);
	}
	bool PreventDeath(Pawn KilledPawn, Controller Killer, ScriptClass pDamageType, Vector HitLocation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Pawn*)params.ptr = KilledPawn;
		*cast(Controller*)&params[4] = Killer;
		*cast(ScriptClass*)&params[8] = pDamageType;
		*cast(Vector*)&params[12] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.PreventDeath, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void BroadcastDeathMessage(Controller Killer, Controller Other, ScriptClass pDamageType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Other;
		*cast(ScriptClass*)&params[8] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.BroadcastDeathMessage, params.ptr, cast(void*)0);
	}
	void Kick(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(Functions.Kick, params.ptr, cast(void*)0);
	}
	void KickBan(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(Functions.KickBan, params.ptr, cast(void*)0);
	}
	void ReduceDamage(int* Damage, Pawn injured, Controller InstigatedBy, Vector HitLocation, Vector* Momentum, ScriptClass pDamageType, Actor DamageCauser)
	{
		ubyte params[44];
		params[] = 0;
		*cast(int*)params.ptr = *Damage;
		*cast(Pawn*)&params[4] = injured;
		*cast(Controller*)&params[8] = InstigatedBy;
		*cast(Vector*)&params[12] = HitLocation;
		*cast(Vector*)&params[24] = *Momentum;
		*cast(ScriptClass*)&params[36] = pDamageType;
		*cast(Actor*)&params[40] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReduceDamage, params.ptr, cast(void*)0);
		*Damage = *cast(int*)params.ptr;
		*Momentum = *cast(Vector*)&params[24];
	}
	bool ShouldRespawn(PickupFactory Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PickupFactory*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldRespawn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void DiscardInventory(Pawn Other, Controller Killer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(Controller*)&params[4] = Killer;
		(cast(ScriptObject)this).ProcessEvent(Functions.DiscardInventory, params.ptr, cast(void*)0);
	}
	void ChangeName(Controller Other, ScriptString S, bool bNameChange)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		*cast(ScriptString*)&params[4] = S;
		*cast(bool*)&params[16] = bNameChange;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangeName, params.ptr, cast(void*)0);
	}
	ubyte PickTeam(ubyte Current, Controller C)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = Current;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.PickTeam, params.ptr, cast(void*)0);
		return params[8];
	}
	void SendPlayer(PlayerController aPlayer, ScriptString pURL)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = aPlayer;
		*cast(ScriptString*)&params[4] = pURL;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendPlayer, params.ptr, cast(void*)0);
	}
	ScriptString GetNextMap()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNextMap, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool GetTravelType()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTravelType, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void RestartGame()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RestartGame, cast(void*)0, cast(void*)0);
	}
	void Broadcast(Actor Sender, ScriptString msg, ScriptName Type)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Actor*)params.ptr = Sender;
		*cast(ScriptString*)&params[4] = msg;
		*cast(ScriptName*)&params[16] = Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.Broadcast, params.ptr, cast(void*)0);
	}
	void BroadcastTeam(Controller Sender, ScriptString msg, ScriptName Type)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(ScriptString*)&params[4] = msg;
		*cast(ScriptName*)&params[16] = Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.BroadcastTeam, params.ptr, cast(void*)0);
	}
	void BroadcastLocalized(Actor Sender, ScriptClass Message, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Actor*)params.ptr = Sender;
		*cast(ScriptClass*)&params[4] = Message;
		*cast(int*)&params[8] = Switch;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[16] = RelatedPRI_2;
		*cast(UObject*)&params[20] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.BroadcastLocalized, params.ptr, cast(void*)0);
	}
	void BroadcastLocalizedTeam(int TeamIndex, Actor Sender, ScriptClass Message, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		*cast(Actor*)&params[4] = Sender;
		*cast(ScriptClass*)&params[8] = Message;
		*cast(int*)&params[12] = Switch;
		*cast(PlayerReplicationInfo*)&params[16] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[20] = RelatedPRI_2;
		*cast(UObject*)&params[24] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.BroadcastLocalizedTeam, params.ptr, cast(void*)0);
	}
	bool CheckModifiedEndGame(PlayerReplicationInfo Winner, ScriptString Reason)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckModifiedEndGame, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool CheckEndGame(PlayerReplicationInfo Winner, ScriptString Reason)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckEndGame, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void WriteOnlineStats()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.WriteOnlineStats, cast(void*)0, cast(void*)0);
	}
	void WriteOnlinePlayerScores()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.WriteOnlinePlayerScores, cast(void*)0, cast(void*)0);
	}
	void ForceRoundStart()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceRoundStart, cast(void*)0, cast(void*)0);
	}
	void EndGame(PlayerReplicationInfo Winner, ScriptString Reason)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndGame, params.ptr, cast(void*)0);
	}
	void PerformEndGameHandling()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PerformEndGameHandling, cast(void*)0, cast(void*)0);
	}
	void EndOnlineGame()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EndOnlineGame, cast(void*)0, cast(void*)0);
	}
	void GameEventsPoll()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.GameEventsPoll, cast(void*)0, cast(void*)0);
	}
	void EndLogging(ScriptString Reason)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndLogging, params.ptr, cast(void*)0);
	}
	bool ShouldSpawnAtStartSpot(Controller pPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = pPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldSpawnAtStartSpot, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	NavigationPoint FindPlayerStart(Controller pPlayer, ubyte InTeam, ScriptString IncomingName)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = pPlayer;
		params[4] = InTeam;
		*cast(ScriptString*)&params[8] = IncomingName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindPlayerStart, params.ptr, cast(void*)0);
		return *cast(NavigationPoint*)&params[20];
	}
	PlayerStart ChoosePlayerStart(Controller pPlayer, ubyte InTeam)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = pPlayer;
		params[4] = InTeam;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChoosePlayerStart, params.ptr, cast(void*)0);
		return *cast(PlayerStart*)&params[8];
	}
	float RatePlayerStart(PlayerStart P, ubyte Team, Controller pPlayer)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerStart*)params.ptr = P;
		params[4] = Team;
		*cast(Controller*)&params[8] = pPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.RatePlayerStart, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	void AddObjectiveScore(PlayerReplicationInfo Scorer, int Score)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		*cast(int*)&params[4] = Score;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddObjectiveScore, params.ptr, cast(void*)0);
	}
	void ScoreObjective(PlayerReplicationInfo Scorer, int Score)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		*cast(int*)&params[4] = Score;
		(cast(ScriptObject)this).ProcessEvent(Functions.ScoreObjective, params.ptr, cast(void*)0);
	}
	bool CheckScore(PlayerReplicationInfo Scorer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckScore, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ScoreKill(Controller Killer, Controller Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.ScoreKill, params.ptr, cast(void*)0);
	}
	void ModifyScoreKill(Controller Killer, Controller Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyScoreKill, params.ptr, cast(void*)0);
	}
	void DriverEnteredVehicle(Vehicle V, Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		*cast(Pawn*)&params[4] = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.DriverEnteredVehicle, params.ptr, cast(void*)0);
	}
	bool CanLeaveVehicle(Vehicle V, Pawn P)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		*cast(Pawn*)&params[4] = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanLeaveVehicle, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void DriverLeftVehicle(Vehicle V, Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		*cast(Pawn*)&params[4] = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.DriverLeftVehicle, params.ptr, cast(void*)0);
	}
	static bool AllowMutator(ScriptString MutatorClassName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MutatorClassName;
		StaticClass.ProcessEvent(Functions.AllowMutator, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool AllowCheats(PlayerController P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowCheats, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool AllowPausing(PlayerController PC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowPausing, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PreCommitMapChange(ScriptString PreviousMapName, ScriptString NextMapName)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PreviousMapName;
		*cast(ScriptString*)&params[12] = NextMapName;
		(cast(ScriptObject)this).ProcessEvent(Functions.PreCommitMapChange, params.ptr, cast(void*)0);
	}
	void PostCommitMapChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostCommitMapChange, cast(void*)0, cast(void*)0);
	}
	void AddInactivePRI(PlayerReplicationInfo PRI, PlayerController PC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		*cast(PlayerController*)&params[4] = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddInactivePRI, params.ptr, cast(void*)0);
	}
	bool FindInactivePRI(PlayerController PC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindInactivePRI, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SetPRI(PlayerController PC, PlayerReplicationInfo NewPRI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(PlayerReplicationInfo*)&params[4] = NewPRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPRI, params.ptr, cast(void*)0);
	}
	void OverridePRI(PlayerController PC, PlayerReplicationInfo OldPRI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(PlayerReplicationInfo*)&params[4] = OldPRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.OverridePRI, params.ptr, cast(void*)0);
	}
	void GetSeamlessTravelActorList(bool bToEntry, ScriptArray!(Actor)* ActorList)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bToEntry;
		*cast(ScriptArray!(Actor)*)&params[4] = *ActorList;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSeamlessTravelActorList, params.ptr, cast(void*)0);
		*ActorList = *cast(ScriptArray!(Actor)*)&params[4];
	}
	void SwapPlayerControllers(PlayerController OldPC, PlayerController NewPC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = OldPC;
		*cast(PlayerController*)&params[4] = NewPC;
		(cast(ScriptObject)this).ProcessEvent(Functions.SwapPlayerControllers, params.ptr, cast(void*)0);
	}
	void PostSeamlessTravel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostSeamlessTravel, cast(void*)0, cast(void*)0);
	}
	void UpdateGameSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateGameSettings, cast(void*)0, cast(void*)0);
	}
	void HandleSeamlessTravelPlayer(Controller* C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = *C;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandleSeamlessTravelPlayer, params.ptr, cast(void*)0);
		*C = *cast(Controller*)params.ptr;
	}
	void SetSeamlessTravelViewTarget(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSeamlessTravelViewTarget, params.ptr, cast(void*)0);
	}
	void UpdateGameSettingsCounts()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateGameSettingsCounts, cast(void*)0, cast(void*)0);
	}
	void ProcessClientRegistrationCompletion(PlayerController PC, bool bWasSuccessful)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(bool*)&params[4] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessClientRegistrationCompletion, params.ptr, cast(void*)0);
	}
	void StartArbitrationRegistration()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartArbitrationRegistration, cast(void*)0, cast(void*)0);
	}
	void StartArbitratedMatch()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartArbitratedMatch, cast(void*)0, cast(void*)0);
	}
	void RegisterServerForArbitration()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterServerForArbitration, cast(void*)0, cast(void*)0);
	}
	void ArbitrationRegistrationComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.ArbitrationRegistrationComplete, params.ptr, cast(void*)0);
	}
	bool MatchIsInProgress()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.MatchIsInProgress, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void NotifyArbitratedMatchEnd()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyArbitratedMatchEnd, cast(void*)0, cast(void*)0);
	}
	void UpdateGameplayMuteList(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateGameplayMuteList, params.ptr, cast(void*)0);
	}
	void RecalculateSkillRating()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RecalculateSkillRating, cast(void*)0, cast(void*)0);
	}
	void MatineeCancelled()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.MatineeCancelled, cast(void*)0, cast(void*)0);
	}
	bool ProcessServerLogin()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessServerLogin, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ClearAutoLoginDelegates()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearAutoLoginDelegates, cast(void*)0, cast(void*)0);
	}
	void OnLoginFailed(ubyte LocalUserNum, OnlineSubsystem.EOnlineServerConnectionStatus ErrorCode)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.EOnlineServerConnectionStatus*)&params[1] = ErrorCode;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLoginFailed, params.ptr, cast(void*)0);
	}
	void OnLoginChange(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLoginChange, params.ptr, cast(void*)0);
	}
	void RegisterServer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterServer, cast(void*)0, cast(void*)0);
	}
	void OnServerCreateComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnServerCreateComplete, params.ptr, cast(void*)0);
	}
	void TellClientsToReturnToPartyHost()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TellClientsToReturnToPartyHost, cast(void*)0, cast(void*)0);
	}
	void TellClientsToTravelToSession(ScriptName SessionName, ScriptClass SearchClass, ubyte PlatformSpecificInfo)
	{
		ubyte params[92];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptClass*)&params[8] = SearchClass;
		params[12] = PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.TellClientsToTravelToSession, params.ptr, cast(void*)0);
	}
	void DoTravelTheWorld()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoTravelTheWorld, cast(void*)0, cast(void*)0);
	}
	bool IsCheckingForFragmentation()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsCheckingForFragmentation, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsCheckingForMemLeaks()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsCheckingForMemLeaks, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ShouldAutoContinueToNextRound()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldAutoContinueToNextRound, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CheckForSentinelRun()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckForSentinelRun, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void BeginBVT(ScriptString TagDesc)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TagDesc;
		(cast(ScriptObject)this).ProcessEvent(Functions.BeginBVT, params.ptr, cast(void*)0);
	}
	void EnableStandbyCheatDetection(bool bIsEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableStandbyCheatDetection, params.ptr, cast(void*)0);
	}
	void StandbyCheatDetected(GameInfo.EStandbyType StandbyType)
	{
		ubyte params[1];
		params[] = 0;
		*cast(GameInfo.EStandbyType*)params.ptr = StandbyType;
		(cast(ScriptObject)this).ProcessEvent(Functions.StandbyCheatDetected, params.ptr, cast(void*)0);
	}
	void OnEngineHasLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnEngineHasLoaded, cast(void*)0, cast(void*)0);
	}
}
