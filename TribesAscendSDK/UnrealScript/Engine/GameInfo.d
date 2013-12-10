module UnrealScript.Engine.GameInfo;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.GameInfo")); }
	private static __gshared GameInfo mDefaultProperties;
	@property final static GameInfo DefaultProperties() { mixin(MGDPC("GameInfo", "GameInfo Engine.Default__GameInfo")); }
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
			ScriptFunction CheckRelevance() { mixin(MGF("mCheckRelevance", "Function Engine.GameInfo.CheckRelevance")); }
			ScriptFunction ParseOption() { mixin(MGF("mParseOption", "Function Engine.GameInfo.ParseOption")); }
			ScriptFunction AtCapacity() { mixin(MGF("mAtCapacity", "Function Engine.GameInfo.AtCapacity")); }
			ScriptFunction ForceClearUnpauseDelegates() { mixin(MGF("mForceClearUnpauseDelegates", "Function Engine.GameInfo.ForceClearUnpauseDelegates")); }
			ScriptFunction IsAutomatedPerfTesting() { mixin(MGF("mIsAutomatedPerfTesting", "Function Engine.GameInfo.IsAutomatedPerfTesting")); }
			ScriptFunction SetPause() { mixin(MGF("mSetPause", "Function Engine.GameInfo.SetPause")); }
			ScriptFunction ChangeTeam() { mixin(MGF("mChangeTeam", "Function Engine.GameInfo.ChangeTeam")); }
			ScriptFunction CanSpectate() { mixin(MGF("mCanSpectate", "Function Engine.GameInfo.CanSpectate")); }
			ScriptFunction PlayerCanRestartGame() { mixin(MGF("mPlayerCanRestartGame", "Function Engine.GameInfo.PlayerCanRestartGame")); }
			ScriptFunction PlayerCanRestart() { mixin(MGF("mPlayerCanRestart", "Function Engine.GameInfo.PlayerCanRestart")); }
			ScriptFunction IsDoingASentinelRun() { mixin(MGF("mIsDoingASentinelRun", "Function Engine.GameInfo.IsDoingASentinelRun")); }
			ScriptFunction GetCoverReplicator() { mixin(MGF("mGetCoverReplicator", "Function Engine.GameInfo.GetCoverReplicator")); }
			ScriptFunction PickupQuery() { mixin(MGF("mPickupQuery", "Function Engine.GameInfo.PickupQuery")); }
			ScriptFunction GetSupportedGameTypes() { mixin(MGF("mGetSupportedGameTypes", "Function Engine.GameInfo.GetSupportedGameTypes")); }
			ScriptFunction GetMapCommonPackageName() { mixin(MGF("mGetMapCommonPackageName", "Function Engine.GameInfo.GetMapCommonPackageName")); }
			ScriptFunction PreBeginPlay() { mixin(MGF("mPreBeginPlay", "Function Engine.GameInfo.PreBeginPlay")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function Engine.GameInfo.PostBeginPlay")); }
			ScriptFunction DisplayDebug() { mixin(MGF("mDisplayDebug", "Function Engine.GameInfo.DisplayDebug")); }
			ScriptFunction Reset() { mixin(MGF("mReset", "Function Engine.GameInfo.Reset")); }
			ScriptFunction ShouldReset() { mixin(MGF("mShouldReset", "Function Engine.GameInfo.ShouldReset")); }
			ScriptFunction ResetLevel() { mixin(MGF("mResetLevel", "Function Engine.GameInfo.ResetLevel")); }
			ScriptFunction Timer() { mixin(MGF("mTimer", "Function Engine.GameInfo.Timer")); }
			ScriptFunction DoNavFearCostFallOff() { mixin(MGF("mDoNavFearCostFallOff", "Function Engine.GameInfo.DoNavFearCostFallOff")); }
			ScriptFunction NotifyNavigationChanged() { mixin(MGF("mNotifyNavigationChanged", "Function Engine.GameInfo.NotifyNavigationChanged")); }
			ScriptFunction GameEnding() { mixin(MGF("mGameEnding", "Function Engine.GameInfo.GameEnding")); }
			ScriptFunction KickIdler() { mixin(MGF("mKickIdler", "Function Engine.GameInfo.KickIdler")); }
			ScriptFunction ForceKickPlayer() { mixin(MGF("mForceKickPlayer", "Function Engine.GameInfo.ForceKickPlayer")); }
			ScriptFunction InitGameReplicationInfo() { mixin(MGF("mInitGameReplicationInfo", "Function Engine.GameInfo.InitGameReplicationInfo")); }
			ScriptFunction GetNetworkNumber() { mixin(MGF("mGetNetworkNumber", "Function Engine.GameInfo.GetNetworkNumber")); }
			ScriptFunction GetNumPlayers() { mixin(MGF("mGetNumPlayers", "Function Engine.GameInfo.GetNumPlayers")); }
			ScriptFunction CanUnpause() { mixin(MGF("mCanUnpause", "Function Engine.GameInfo.CanUnpause")); }
			ScriptFunction ClearPause() { mixin(MGF("mClearPause", "Function Engine.GameInfo.ClearPause")); }
			ScriptFunction DebugPause() { mixin(MGF("mDebugPause", "Function Engine.GameInfo.DebugPause")); }
			ScriptFunction SetGameSpeed() { mixin(MGF("mSetGameSpeed", "Function Engine.GameInfo.SetGameSpeed")); }
			ScriptFunction GrabOption() { mixin(MGF("mGrabOption", "Function Engine.GameInfo.GrabOption")); }
			ScriptFunction GetKeyValue() { mixin(MGF("mGetKeyValue", "Function Engine.GameInfo.GetKeyValue")); }
			ScriptFunction HasOption() { mixin(MGF("mHasOption", "Function Engine.GameInfo.HasOption")); }
			ScriptFunction GetIntOption() { mixin(MGF("mGetIntOption", "Function Engine.GameInfo.GetIntOption")); }
			ScriptFunction GetDefaultGameClassPath() { mixin(MGF("mGetDefaultGameClassPath", "Function Engine.GameInfo.GetDefaultGameClassPath")); }
			ScriptFunction SetGameType() { mixin(MGF("mSetGameType", "Function Engine.GameInfo.SetGameType")); }
			ScriptFunction InitGame() { mixin(MGF("mInitGame", "Function Engine.GameInfo.InitGame")); }
			ScriptFunction NotifyPendingConnectionLost() { mixin(MGF("mNotifyPendingConnectionLost", "Function Engine.GameInfo.NotifyPendingConnectionLost")); }
			ScriptFunction AddMutator() { mixin(MGF("mAddMutator", "Function Engine.GameInfo.AddMutator")); }
			ScriptFunction RemoveMutator() { mixin(MGF("mRemoveMutator", "Function Engine.GameInfo.RemoveMutator")); }
			ScriptFunction ProcessServerTravel() { mixin(MGF("mProcessServerTravel", "Function Engine.GameInfo.ProcessServerTravel")); }
			ScriptFunction ProcessClientTravel() { mixin(MGF("mProcessClientTravel", "Function Engine.GameInfo.ProcessClientTravel")); }
			ScriptFunction RequiresPassword() { mixin(MGF("mRequiresPassword", "Function Engine.GameInfo.RequiresPassword")); }
			ScriptFunction PreLogin() { mixin(MGF("mPreLogin", "Function Engine.GameInfo.PreLogin")); }
			ScriptFunction GetNextPlayerID() { mixin(MGF("mGetNextPlayerID", "Function Engine.GameInfo.GetNextPlayerID")); }
			ScriptFunction SpawnPlayerController() { mixin(MGF("mSpawnPlayerController", "Function Engine.GameInfo.SpawnPlayerController")); }
			ScriptFunction Login() { mixin(MGF("mLogin", "Function Engine.GameInfo.Login")); }
			ScriptFunction StartMatch() { mixin(MGF("mStartMatch", "Function Engine.GameInfo.StartMatch")); }
			ScriptFunction StartOnlineGame() { mixin(MGF("mStartOnlineGame", "Function Engine.GameInfo.StartOnlineGame")); }
			ScriptFunction OnStartOnlineGameComplete() { mixin(MGF("mOnStartOnlineGameComplete", "Function Engine.GameInfo.OnStartOnlineGameComplete")); }
			ScriptFunction StartHumans() { mixin(MGF("mStartHumans", "Function Engine.GameInfo.StartHumans")); }
			ScriptFunction StartBots() { mixin(MGF("mStartBots", "Function Engine.GameInfo.StartBots")); }
			ScriptFunction RestartPlayer() { mixin(MGF("mRestartPlayer", "Function Engine.GameInfo.RestartPlayer")); }
			ScriptFunction SpawnDefaultPawnFor() { mixin(MGF("mSpawnDefaultPawnFor", "Function Engine.GameInfo.SpawnDefaultPawnFor")); }
			ScriptFunction GetDefaultPlayerClass() { mixin(MGF("mGetDefaultPlayerClass", "Function Engine.GameInfo.GetDefaultPlayerClass")); }
			ScriptFunction ReplicateStreamingStatus() { mixin(MGF("mReplicateStreamingStatus", "Function Engine.GameInfo.ReplicateStreamingStatus")); }
			ScriptFunction GenericPlayerInitialization() { mixin(MGF("mGenericPlayerInitialization", "Function Engine.GameInfo.GenericPlayerInitialization")); }
			ScriptFunction BestNextHostSort() { mixin(MGF("mBestNextHostSort", "Function Engine.GameInfo.BestNextHostSort")); }
			ScriptFunction UpdateBestNextHosts() { mixin(MGF("mUpdateBestNextHosts", "Function Engine.GameInfo.UpdateBestNextHosts")); }
			ScriptFunction PostLogin() { mixin(MGF("mPostLogin", "Function Engine.GameInfo.PostLogin")); }
			ScriptFunction UpdateNetSpeeds() { mixin(MGF("mUpdateNetSpeeds", "Function Engine.GameInfo.UpdateNetSpeeds")); }
			ScriptFunction CalculatedNetSpeed() { mixin(MGF("mCalculatedNetSpeed", "Function Engine.GameInfo.CalculatedNetSpeed")); }
			ScriptFunction PreExit() { mixin(MGF("mPreExit", "Function Engine.GameInfo.PreExit")); }
			ScriptFunction Logout() { mixin(MGF("mLogout", "Function Engine.GameInfo.Logout")); }
			ScriptFunction UnregisterPlayer() { mixin(MGF("mUnregisterPlayer", "Function Engine.GameInfo.UnregisterPlayer")); }
			ScriptFunction AcceptInventory() { mixin(MGF("mAcceptInventory", "Function Engine.GameInfo.AcceptInventory")); }
			ScriptFunction AddDefaultInventory() { mixin(MGF("mAddDefaultInventory", "Function Engine.GameInfo.AddDefaultInventory")); }
			ScriptFunction Mutate() { mixin(MGF("mMutate", "Function Engine.GameInfo.Mutate")); }
			ScriptFunction SetPlayerDefaults() { mixin(MGF("mSetPlayerDefaults", "Function Engine.GameInfo.SetPlayerDefaults")); }
			ScriptFunction NotifyKilled() { mixin(MGF("mNotifyKilled", "Function Engine.GameInfo.NotifyKilled")); }
			ScriptFunction Killed() { mixin(MGF("mKilled", "Function Engine.GameInfo.Killed")); }
			ScriptFunction PreventDeath() { mixin(MGF("mPreventDeath", "Function Engine.GameInfo.PreventDeath")); }
			ScriptFunction BroadcastDeathMessage() { mixin(MGF("mBroadcastDeathMessage", "Function Engine.GameInfo.BroadcastDeathMessage")); }
			ScriptFunction Kick() { mixin(MGF("mKick", "Function Engine.GameInfo.Kick")); }
			ScriptFunction KickBan() { mixin(MGF("mKickBan", "Function Engine.GameInfo.KickBan")); }
			ScriptFunction ReduceDamage() { mixin(MGF("mReduceDamage", "Function Engine.GameInfo.ReduceDamage")); }
			ScriptFunction ShouldRespawn() { mixin(MGF("mShouldRespawn", "Function Engine.GameInfo.ShouldRespawn")); }
			ScriptFunction DiscardInventory() { mixin(MGF("mDiscardInventory", "Function Engine.GameInfo.DiscardInventory")); }
			ScriptFunction ChangeName() { mixin(MGF("mChangeName", "Function Engine.GameInfo.ChangeName")); }
			ScriptFunction PickTeam() { mixin(MGF("mPickTeam", "Function Engine.GameInfo.PickTeam")); }
			ScriptFunction SendPlayer() { mixin(MGF("mSendPlayer", "Function Engine.GameInfo.SendPlayer")); }
			ScriptFunction GetNextMap() { mixin(MGF("mGetNextMap", "Function Engine.GameInfo.GetNextMap")); }
			ScriptFunction GetTravelType() { mixin(MGF("mGetTravelType", "Function Engine.GameInfo.GetTravelType")); }
			ScriptFunction RestartGame() { mixin(MGF("mRestartGame", "Function Engine.GameInfo.RestartGame")); }
			ScriptFunction Broadcast() { mixin(MGF("mBroadcast", "Function Engine.GameInfo.Broadcast")); }
			ScriptFunction BroadcastTeam() { mixin(MGF("mBroadcastTeam", "Function Engine.GameInfo.BroadcastTeam")); }
			ScriptFunction BroadcastLocalized() { mixin(MGF("mBroadcastLocalized", "Function Engine.GameInfo.BroadcastLocalized")); }
			ScriptFunction BroadcastLocalizedTeam() { mixin(MGF("mBroadcastLocalizedTeam", "Function Engine.GameInfo.BroadcastLocalizedTeam")); }
			ScriptFunction CheckModifiedEndGame() { mixin(MGF("mCheckModifiedEndGame", "Function Engine.GameInfo.CheckModifiedEndGame")); }
			ScriptFunction CheckEndGame() { mixin(MGF("mCheckEndGame", "Function Engine.GameInfo.CheckEndGame")); }
			ScriptFunction WriteOnlineStats() { mixin(MGF("mWriteOnlineStats", "Function Engine.GameInfo.WriteOnlineStats")); }
			ScriptFunction WriteOnlinePlayerScores() { mixin(MGF("mWriteOnlinePlayerScores", "Function Engine.GameInfo.WriteOnlinePlayerScores")); }
			ScriptFunction ForceRoundStart() { mixin(MGF("mForceRoundStart", "Function Engine.GameInfo.ForceRoundStart")); }
			ScriptFunction EndGame() { mixin(MGF("mEndGame", "Function Engine.GameInfo.EndGame")); }
			ScriptFunction PerformEndGameHandling() { mixin(MGF("mPerformEndGameHandling", "Function Engine.GameInfo.PerformEndGameHandling")); }
			ScriptFunction EndOnlineGame() { mixin(MGF("mEndOnlineGame", "Function Engine.GameInfo.EndOnlineGame")); }
			ScriptFunction GameEventsPoll() { mixin(MGF("mGameEventsPoll", "Function Engine.GameInfo.GameEventsPoll")); }
			ScriptFunction EndLogging() { mixin(MGF("mEndLogging", "Function Engine.GameInfo.EndLogging")); }
			ScriptFunction ShouldSpawnAtStartSpot() { mixin(MGF("mShouldSpawnAtStartSpot", "Function Engine.GameInfo.ShouldSpawnAtStartSpot")); }
			ScriptFunction FindPlayerStart() { mixin(MGF("mFindPlayerStart", "Function Engine.GameInfo.FindPlayerStart")); }
			ScriptFunction ChoosePlayerStart() { mixin(MGF("mChoosePlayerStart", "Function Engine.GameInfo.ChoosePlayerStart")); }
			ScriptFunction RatePlayerStart() { mixin(MGF("mRatePlayerStart", "Function Engine.GameInfo.RatePlayerStart")); }
			ScriptFunction AddObjectiveScore() { mixin(MGF("mAddObjectiveScore", "Function Engine.GameInfo.AddObjectiveScore")); }
			ScriptFunction ScoreObjective() { mixin(MGF("mScoreObjective", "Function Engine.GameInfo.ScoreObjective")); }
			ScriptFunction CheckScore() { mixin(MGF("mCheckScore", "Function Engine.GameInfo.CheckScore")); }
			ScriptFunction ScoreKill() { mixin(MGF("mScoreKill", "Function Engine.GameInfo.ScoreKill")); }
			ScriptFunction ModifyScoreKill() { mixin(MGF("mModifyScoreKill", "Function Engine.GameInfo.ModifyScoreKill")); }
			ScriptFunction DriverEnteredVehicle() { mixin(MGF("mDriverEnteredVehicle", "Function Engine.GameInfo.DriverEnteredVehicle")); }
			ScriptFunction CanLeaveVehicle() { mixin(MGF("mCanLeaveVehicle", "Function Engine.GameInfo.CanLeaveVehicle")); }
			ScriptFunction DriverLeftVehicle() { mixin(MGF("mDriverLeftVehicle", "Function Engine.GameInfo.DriverLeftVehicle")); }
			ScriptFunction AllowMutator() { mixin(MGF("mAllowMutator", "Function Engine.GameInfo.AllowMutator")); }
			ScriptFunction AllowCheats() { mixin(MGF("mAllowCheats", "Function Engine.GameInfo.AllowCheats")); }
			ScriptFunction AllowPausing() { mixin(MGF("mAllowPausing", "Function Engine.GameInfo.AllowPausing")); }
			ScriptFunction PreCommitMapChange() { mixin(MGF("mPreCommitMapChange", "Function Engine.GameInfo.PreCommitMapChange")); }
			ScriptFunction PostCommitMapChange() { mixin(MGF("mPostCommitMapChange", "Function Engine.GameInfo.PostCommitMapChange")); }
			ScriptFunction AddInactivePRI() { mixin(MGF("mAddInactivePRI", "Function Engine.GameInfo.AddInactivePRI")); }
			ScriptFunction FindInactivePRI() { mixin(MGF("mFindInactivePRI", "Function Engine.GameInfo.FindInactivePRI")); }
			ScriptFunction SetPRI() { mixin(MGF("mSetPRI", "Function Engine.GameInfo.SetPRI")); }
			ScriptFunction OverridePRI() { mixin(MGF("mOverridePRI", "Function Engine.GameInfo.OverridePRI")); }
			ScriptFunction GetSeamlessTravelActorList() { mixin(MGF("mGetSeamlessTravelActorList", "Function Engine.GameInfo.GetSeamlessTravelActorList")); }
			ScriptFunction SwapPlayerControllers() { mixin(MGF("mSwapPlayerControllers", "Function Engine.GameInfo.SwapPlayerControllers")); }
			ScriptFunction PostSeamlessTravel() { mixin(MGF("mPostSeamlessTravel", "Function Engine.GameInfo.PostSeamlessTravel")); }
			ScriptFunction UpdateGameSettings() { mixin(MGF("mUpdateGameSettings", "Function Engine.GameInfo.UpdateGameSettings")); }
			ScriptFunction HandleSeamlessTravelPlayer() { mixin(MGF("mHandleSeamlessTravelPlayer", "Function Engine.GameInfo.HandleSeamlessTravelPlayer")); }
			ScriptFunction SetSeamlessTravelViewTarget() { mixin(MGF("mSetSeamlessTravelViewTarget", "Function Engine.GameInfo.SetSeamlessTravelViewTarget")); }
			ScriptFunction UpdateGameSettingsCounts() { mixin(MGF("mUpdateGameSettingsCounts", "Function Engine.GameInfo.UpdateGameSettingsCounts")); }
			ScriptFunction ProcessClientRegistrationCompletion() { mixin(MGF("mProcessClientRegistrationCompletion", "Function Engine.GameInfo.ProcessClientRegistrationCompletion")); }
			ScriptFunction StartArbitrationRegistration() { mixin(MGF("mStartArbitrationRegistration", "Function Engine.GameInfo.StartArbitrationRegistration")); }
			ScriptFunction StartArbitratedMatch() { mixin(MGF("mStartArbitratedMatch", "Function Engine.GameInfo.StartArbitratedMatch")); }
			ScriptFunction RegisterServerForArbitration() { mixin(MGF("mRegisterServerForArbitration", "Function Engine.GameInfo.RegisterServerForArbitration")); }
			ScriptFunction ArbitrationRegistrationComplete() { mixin(MGF("mArbitrationRegistrationComplete", "Function Engine.GameInfo.ArbitrationRegistrationComplete")); }
			ScriptFunction MatchIsInProgress() { mixin(MGF("mMatchIsInProgress", "Function Engine.GameInfo.MatchIsInProgress")); }
			ScriptFunction NotifyArbitratedMatchEnd() { mixin(MGF("mNotifyArbitratedMatchEnd", "Function Engine.GameInfo.NotifyArbitratedMatchEnd")); }
			ScriptFunction UpdateGameplayMuteList() { mixin(MGF("mUpdateGameplayMuteList", "Function Engine.GameInfo.UpdateGameplayMuteList")); }
			ScriptFunction RecalculateSkillRating() { mixin(MGF("mRecalculateSkillRating", "Function Engine.GameInfo.RecalculateSkillRating")); }
			ScriptFunction MatineeCancelled() { mixin(MGF("mMatineeCancelled", "Function Engine.GameInfo.MatineeCancelled")); }
			ScriptFunction ProcessServerLogin() { mixin(MGF("mProcessServerLogin", "Function Engine.GameInfo.ProcessServerLogin")); }
			ScriptFunction ClearAutoLoginDelegates() { mixin(MGF("mClearAutoLoginDelegates", "Function Engine.GameInfo.ClearAutoLoginDelegates")); }
			ScriptFunction OnLoginFailed() { mixin(MGF("mOnLoginFailed", "Function Engine.GameInfo.OnLoginFailed")); }
			ScriptFunction OnLoginChange() { mixin(MGF("mOnLoginChange", "Function Engine.GameInfo.OnLoginChange")); }
			ScriptFunction RegisterServer() { mixin(MGF("mRegisterServer", "Function Engine.GameInfo.RegisterServer")); }
			ScriptFunction OnServerCreateComplete() { mixin(MGF("mOnServerCreateComplete", "Function Engine.GameInfo.OnServerCreateComplete")); }
			ScriptFunction TellClientsToReturnToPartyHost() { mixin(MGF("mTellClientsToReturnToPartyHost", "Function Engine.GameInfo.TellClientsToReturnToPartyHost")); }
			ScriptFunction TellClientsToTravelToSession() { mixin(MGF("mTellClientsToTravelToSession", "Function Engine.GameInfo.TellClientsToTravelToSession")); }
			ScriptFunction DoTravelTheWorld() { mixin(MGF("mDoTravelTheWorld", "Function Engine.GameInfo.DoTravelTheWorld")); }
			ScriptFunction IsCheckingForFragmentation() { mixin(MGF("mIsCheckingForFragmentation", "Function Engine.GameInfo.IsCheckingForFragmentation")); }
			ScriptFunction IsCheckingForMemLeaks() { mixin(MGF("mIsCheckingForMemLeaks", "Function Engine.GameInfo.IsCheckingForMemLeaks")); }
			ScriptFunction ShouldAutoContinueToNextRound() { mixin(MGF("mShouldAutoContinueToNextRound", "Function Engine.GameInfo.ShouldAutoContinueToNextRound")); }
			ScriptFunction CheckForSentinelRun() { mixin(MGF("mCheckForSentinelRun", "Function Engine.GameInfo.CheckForSentinelRun")); }
			ScriptFunction BeginBVT() { mixin(MGF("mBeginBVT", "Function Engine.GameInfo.BeginBVT")); }
			ScriptFunction EnableStandbyCheatDetection() { mixin(MGF("mEnableStandbyCheatDetection", "Function Engine.GameInfo.EnableStandbyCheatDetection")); }
			ScriptFunction StandbyCheatDetected() { mixin(MGF("mStandbyCheatDetected", "Function Engine.GameInfo.StandbyCheatDetected")); }
			ScriptFunction OnEngineHasLoaded() { mixin(MGF("mOnEngineHasLoaded", "Function Engine.GameInfo.OnEngineHasLoaded")); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.GameInfo.GameClassShortName")); }
		@property final auto ref
		{
			ScriptString GameClassName() { mixin(MGPS("ScriptString", 12)); }
			ScriptString ShortName() { mixin(MGPS("ScriptString", 0)); }
		}
	}
	struct GameTypePrefix
	{
		private ubyte __buffer__[52];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.GameInfo.GameTypePrefix")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(ScriptString) AdditionalGameTypes() { mixin(MGPS("ScriptArray!(ScriptString)", 28)); }
				ScriptArray!(ScriptString) ForcedObjects() { mixin(MGPS("ScriptArray!(ScriptString)", 40)); }
				ScriptString GameType() { mixin(MGPS("ScriptString", 16)); }
				ScriptString Prefix() { mixin(MGPS("ScriptString", 0)); }
			}
			bool bUsesCommonPackage() { mixin(MGBPS(12, 0x1)); }
			bool bUsesCommonPackage(bool val) { mixin(MSBPS(12, 0x1)); }
		}
	}
	static struct PendingMatch
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State Engine.GameInfo.PendingMatch")); }
	}
	static struct TravelTheWorld
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State Engine.GameInfo.TravelTheWorld")); }
	}
	@property final
	{
		auto ref
		{
			int NumPlayers() { mixin(MGPC("int", 584)); }
			ScriptClass GameMessageClass() { mixin(MGPC("ScriptClass", 644)); }
			ScriptClass PlayerReplicationInfoClass() { mixin(MGPC("ScriptClass", 680)); }
			ScriptString DefaultPlayerName() { mixin(MGPC("ScriptString", 600)); }
			float MaxTimeMargin() { mixin(MGPC("float", 696)); }
			int ArbitratedLeaderboardId() { mixin(MGPC("int", 752)); }
			float GameDifficulty() { mixin(MGPC("float", 544)); }
			int TimeLimit() { mixin(MGPC("int", 636)); }
			ScriptString CauseEventCommand() { mixin(MGPC("ScriptString", 480)); }
			int AdjustedNetSpeed() { mixin(MGPC("int", 776)); }
			int MaxDynamicBandwidth() { mixin(MGPC("int", 792)); }
			float GameSpeed() { mixin(MGPC("float", 552)); }
			GameReplicationInfo GameReplicationInfoVar() { mixin(MGPC("GameReplicationInfo", 688)); }
			ScriptClass GameReplicationInfoClass() { mixin(MGPC("ScriptClass", 684)); }
			CoverReplicator CoverReplicatorBase() { mixin(MGPC("CoverReplicator", 756)); }
			ScriptString GameName() { mixin(MGPC("ScriptString", 612)); }
			BroadcastHandler BroadcastHandlerVar() { mixin(MGPC("BroadcastHandler", 664)); }
			AccessControl AccessControlVar() { mixin(MGPC("AccessControl", 656)); }
			int NumTravellingPlayers() { mixin(MGPC("int", 592)); }
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__CanUnpause__Delegate'!
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) Pausers() { mixin(MGPC("ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)", 720)); }
			int MaxPlayers() { mixin(MGPC("int", 576)); }
			int MaxPlayersAllowed() { mixin(MGPC("int", 580)); }
			int MaxSpectators() { mixin(MGPC("int", 564)); }
			int MaxSpectatorsAllowed() { mixin(MGPC("int", 568)); }
			ScriptClass BroadcastHandlerClass() { mixin(MGPC("ScriptClass", 660)); }
			ScriptClass AccessControlClass() { mixin(MGPC("ScriptClass", 652)); }
			AutoTestManager MyAutoTestManager() { mixin(MGPC("AutoTestManager", 672)); }
			ScriptClass AutoTestManagerClass() { mixin(MGPC("ScriptClass", 668)); }
			ScriptString BugLocString() { mixin(MGPC("ScriptString", 492)); }
			ScriptString BugRotString() { mixin(MGPC("ScriptString", 504)); }
			Mutator BaseMutator() { mixin(MGPC("Mutator", 648)); }
			OnlineSubsystem OnlineSub() { mixin(MGPC("OnlineSubsystem", 732)); }
			// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'GameInterface'!
			ScriptString ServerOptions() { mixin(MGPC("ScriptString", 764)); }
			int NumSpectators() { mixin(MGPC("int", 572)); }
			ScriptClass PlayerControllerClass() { mixin(MGPC("ScriptClass", 676)); }
			ScriptClass DefaultPawnClass() { mixin(MGPC("ScriptClass", 556)); }
			ScriptClass HUDType() { mixin(MGPC("ScriptClass", 560)); }
			float LastNetSpeedUpdateTime() { mixin(MGPC("float", 780)); }
			int TotalNetBandwidth() { mixin(MGPC("int", 784)); }
			int MinDynamicBandwidth() { mixin(MGPC("int", 788)); }
			ScriptArray!(PlayerController) ArbitrationPCs() { mixin(MGPC("ScriptArray!(PlayerController)", 528)); }
			ScriptClass DeathMessageClass() { mixin(MGPC("ScriptClass", 640)); }
			ScriptClass OnlineStatsWriteClass() { mixin(MGPC("ScriptClass", 744)); }
			int LeaderboardId() { mixin(MGPC("int", 748)); }
			ScriptArray!(PlayerController) PendingArbitrationPCs() { mixin(MGPC("ScriptArray!(PlayerController)", 516)); }
			int MaxLives() { mixin(MGPC("int", 632)); }
			ScriptArray!(PlayerReplicationInfo) InactivePRIArray() { mixin(MGPC("ScriptArray!(PlayerReplicationInfo)", 708)); }
			int NumBots() { mixin(MGPC("int", 588)); }
			float ArbitrationHandshakeTimeout() { mixin(MGPC("float", 540)); }
			ScriptClass OnlineGameSettingsClass() { mixin(MGPC("ScriptClass", 760)); }
			int GoreLevel() { mixin(MGPC("int", 548)); }
			int CurrentID() { mixin(MGPC("int", 596)); }
			float FearCostFallOff() { mixin(MGPC("float", 624)); }
			int GoalScore() { mixin(MGPC("int", 628)); }
			float MaxIdleTime() { mixin(MGPC("float", 692)); }
			float TimeMarginSlack() { mixin(MGPC("float", 700)); }
			float MinTimeMargin() { mixin(MGPC("float", 704)); }
			float StandbyRxCheatTime() { mixin(MGPC("float", 796)); }
			float StandbyTxCheatTime() { mixin(MGPC("float", 800)); }
			int BadPingThreshold() { mixin(MGPC("int", 804)); }
			float PercentMissingForRxStandby() { mixin(MGPC("float", 808)); }
			float PercentMissingForTxStandby() { mixin(MGPC("float", 812)); }
			float PercentForBadPing() { mixin(MGPC("float", 816)); }
			float JoinInProgressStandbyWaitTime() { mixin(MGPC("float", 820)); }
			ScriptArray!(GameInfo.GameClassShortName) GameInfoClassAliases() { mixin(MGPC("ScriptArray!(GameInfo.GameClassShortName)", 824)); }
			ScriptString DefaultGameType() { mixin(MGPC("ScriptString", 836)); }
			ScriptArray!(GameInfo.GameTypePrefix) DefaultMapPrefixes() { mixin(MGPC("ScriptArray!(GameInfo.GameTypePrefix)", 848)); }
			ScriptArray!(GameInfo.GameTypePrefix) CustomMapPrefixes() { mixin(MGPC("ScriptArray!(GameInfo.GameTypePrefix)", 860)); }
		}
		bool bRequiresPushToTalk() { mixin(MGBPC(476, 0x400000)); }
		bool bRequiresPushToTalk(bool val) { mixin(MSBPC(476, 0x400000)); }
		bool bTeamGame() { mixin(MGBPC(476, 0x4)); }
		bool bTeamGame(bool val) { mixin(MSBPC(476, 0x4)); }
		bool bWaitingToStartMatch() { mixin(MGBPC(476, 0x40)); }
		bool bWaitingToStartMatch(bool val) { mixin(MSBPC(476, 0x40)); }
		bool bHasNetworkError() { mixin(MGBPC(476, 0x200000)); }
		bool bHasNetworkError(bool val) { mixin(MSBPC(476, 0x200000)); }
		bool bRestartLevel() { mixin(MGBPC(476, 0x1)); }
		bool bRestartLevel(bool val) { mixin(MSBPC(476, 0x1)); }
		bool bGameEnded() { mixin(MGBPC(476, 0x8)); }
		bool bGameEnded(bool val) { mixin(MSBPC(476, 0x8)); }
		bool bOverTime() { mixin(MGBPC(476, 0x10)); }
		bool bOverTime(bool val) { mixin(MSBPC(476, 0x10)); }
		bool bDoFearCostFallOff() { mixin(MGBPC(476, 0x80000)); }
		bool bDoFearCostFallOff(bool val) { mixin(MSBPC(476, 0x80000)); }
		bool bFixedPlayerStart() { mixin(MGBPC(476, 0x40000)); }
		bool bFixedPlayerStart(bool val) { mixin(MSBPC(476, 0x40000)); }
		bool bUsingArbitration() { mixin(MGBPC(476, 0x2000)); }
		bool bUsingArbitration(bool val) { mixin(MSBPC(476, 0x2000)); }
		bool bLevelChange() { mixin(MGBPC(476, 0x800)); }
		bool bLevelChange(bool val) { mixin(MSBPC(476, 0x800)); }
		bool bUseSeamlessTravel() { mixin(MGBPC(476, 0x100000)); }
		bool bUseSeamlessTravel(bool val) { mixin(MSBPC(476, 0x100000)); }
		bool bHasArbitratedHandshakeBegun() { mixin(MGBPC(476, 0x4000)); }
		bool bHasArbitratedHandshakeBegun(bool val) { mixin(MSBPC(476, 0x4000)); }
		bool bDelayedStart() { mixin(MGBPC(476, 0x20)); }
		bool bDelayedStart(bool val) { mixin(MSBPC(476, 0x20)); }
		bool bHasEndGameHandshakeBegun() { mixin(MGBPC(476, 0x20000)); }
		bool bHasEndGameHandshakeBegun(bool val) { mixin(MSBPC(476, 0x20000)); }
		bool bIsEndGameHandshakeComplete() { mixin(MGBPC(476, 0x10000)); }
		bool bIsEndGameHandshakeComplete(bool val) { mixin(MSBPC(476, 0x10000)); }
		bool bGameRestarted() { mixin(MGBPC(476, 0x400)); }
		bool bGameRestarted(bool val) { mixin(MSBPC(476, 0x400)); }
		bool bChangeLevels() { mixin(MGBPC(476, 0x80)); }
		bool bChangeLevels(bool val) { mixin(MSBPC(476, 0x80)); }
		bool bAlreadyChanged() { mixin(MGBPC(476, 0x100)); }
		bool bAlreadyChanged(bool val) { mixin(MSBPC(476, 0x100)); }
		bool bPauseable() { mixin(MGBPC(476, 0x2)); }
		bool bPauseable(bool val) { mixin(MSBPC(476, 0x2)); }
		bool bAdminCanPause() { mixin(MGBPC(476, 0x200)); }
		bool bAdminCanPause(bool val) { mixin(MSBPC(476, 0x200)); }
		bool bNeedsEndGameHandshake() { mixin(MGBPC(476, 0x8000)); }
		bool bNeedsEndGameHandshake(bool val) { mixin(MSBPC(476, 0x8000)); }
		bool bKickLiveIdlers() { mixin(MGBPC(476, 0x1000)); }
		bool bKickLiveIdlers(bool val) { mixin(MSBPC(476, 0x1000)); }
		bool bIsStandbyCheckingEnabled() { mixin(MGBPC(476, 0x800000)); }
		bool bIsStandbyCheckingEnabled(bool val) { mixin(MSBPC(476, 0x800000)); }
		bool bIsStandbyCheckingOn() { mixin(MGBPC(476, 0x1000000)); }
		bool bIsStandbyCheckingOn(bool val) { mixin(MSBPC(476, 0x1000000)); }
		bool bHasStandbyCheatTriggered() { mixin(MGBPC(476, 0x2000000)); }
		bool bHasStandbyCheatTriggered(bool val) { mixin(MSBPC(476, 0x2000000)); }
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
void** CanUnpauseDelegate = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		if (CanUnpauseDelegate !is null)
			*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = *CanUnpauseDelegate;
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
	bool GetSupportedGameTypes(ref in ScriptString InFilename, ref GameInfo.GameTypePrefix OutGameType, bool* bCheckExt = null)
	{
		ubyte params[72];
		params[] = 0;
		*cast(ScriptString*)params.ptr = cast(ScriptString)InFilename;
		*cast(GameInfo.GameTypePrefix*)&params[12] = OutGameType;
		if (bCheckExt !is null)
			*cast(bool*)&params[64] = *bCheckExt;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSupportedGameTypes, params.ptr, cast(void*)0);
		OutGameType = *cast(GameInfo.GameTypePrefix*)&params[12];
		return *cast(bool*)&params[68];
	}
	bool GetMapCommonPackageName(ref in ScriptString InFilename, ref ScriptString OutCommonPackageName)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = cast(ScriptString)InFilename;
		*cast(ScriptString*)&params[12] = OutCommonPackageName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMapCommonPackageName, params.ptr, cast(void*)0);
		OutCommonPackageName = *cast(ScriptString*)&params[12];
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
	void DisplayDebug(HUD pHUD, ref float out_YL, ref float out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = out_YL;
		*cast(float*)&params[8] = out_YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		out_YL = *cast(float*)&params[4];
		out_YPos = *cast(float*)&params[8];
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
	static bool GrabOption(ref ScriptString Options, ref ScriptString Result)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = Result;
		StaticClass.ProcessEvent(Functions.GrabOption, params.ptr, cast(void*)0);
		Options = *cast(ScriptString*)params.ptr;
		Result = *cast(ScriptString*)&params[12];
		return *cast(bool*)&params[24];
	}
	static void GetKeyValue(ScriptString Pair, ref ScriptString Key, ref ScriptString Value)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Pair;
		*cast(ScriptString*)&params[12] = Key;
		*cast(ScriptString*)&params[24] = Value;
		StaticClass.ProcessEvent(Functions.GetKeyValue, params.ptr, cast(void*)0);
		Key = *cast(ScriptString*)&params[12];
		Value = *cast(ScriptString*)&params[24];
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
	void InitGame(ScriptString Options, ref ScriptString ErrorMessage)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitGame, params.ptr, cast(void*)0);
		ErrorMessage = *cast(ScriptString*)&params[12];
	}
	void NotifyPendingConnectionLost()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyPendingConnectionLost, cast(void*)0, cast(void*)0);
	}
	void AddMutator(ScriptString mutname, bool* bUserAdded = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = mutname;
		if (bUserAdded !is null)
			*cast(bool*)&params[12] = *bUserAdded;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddMutator, params.ptr, cast(void*)0);
	}
	void RemoveMutator(Mutator MutatorToRemove)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Mutator*)params.ptr = MutatorToRemove;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveMutator, params.ptr, cast(void*)0);
	}
	void ProcessServerTravel(ScriptString pURL, bool* bAbsolute = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		if (bAbsolute !is null)
			*cast(bool*)&params[12] = *bAbsolute;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessServerTravel, params.ptr, cast(void*)0);
	}
	PlayerController ProcessClientTravel(ref ScriptString pURL, UObject.Guid NextMapGuid, bool bSeamless, bool bAbsolute)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		*cast(UObject.Guid*)&params[12] = NextMapGuid;
		*cast(bool*)&params[28] = bSeamless;
		*cast(bool*)&params[32] = bAbsolute;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessClientTravel, params.ptr, cast(void*)0);
		pURL = *cast(ScriptString*)params.ptr;
		return *cast(PlayerController*)&params[36];
	}
	bool RequiresPassword()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequiresPassword, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PreLogin(ScriptString Options, ScriptString Address, ref ScriptString ErrorMessage)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = Address;
		*cast(ScriptString*)&params[24] = ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(Functions.PreLogin, params.ptr, cast(void*)0);
		ErrorMessage = *cast(ScriptString*)&params[24];
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
	PlayerController Login(ScriptString Portal, ScriptString Options, in OnlineSubsystem.UniqueNetId UniqueId, ref ScriptString ErrorMessage)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Portal;
		*cast(ScriptString*)&params[12] = Options;
		*cast(OnlineSubsystem.UniqueNetId*)&params[24] = cast(OnlineSubsystem.UniqueNetId)UniqueId;
		*cast(ScriptString*)&params[32] = ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(Functions.Login, params.ptr, cast(void*)0);
		ErrorMessage = *cast(ScriptString*)&params[32];
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
	void ReduceDamage(ref int Damage, Pawn injured, Controller InstigatedBy, Vector HitLocation, ref Vector Momentum, ScriptClass pDamageType, Actor DamageCauser)
	{
		ubyte params[44];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Pawn*)&params[4] = injured;
		*cast(Controller*)&params[8] = InstigatedBy;
		*cast(Vector*)&params[12] = HitLocation;
		*cast(Vector*)&params[24] = Momentum;
		*cast(ScriptClass*)&params[36] = pDamageType;
		*cast(Actor*)&params[40] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReduceDamage, params.ptr, cast(void*)0);
		Damage = *cast(int*)params.ptr;
		Momentum = *cast(Vector*)&params[24];
	}
	bool ShouldRespawn(PickupFactory Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PickupFactory*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldRespawn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void DiscardInventory(Pawn Other, Controller* Killer = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		if (Killer !is null)
			*cast(Controller*)&params[4] = *Killer;
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
	void Broadcast(Actor Sender, ScriptString msg, ScriptName* Type = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Actor*)params.ptr = Sender;
		*cast(ScriptString*)&params[4] = msg;
		if (Type !is null)
			*cast(ScriptName*)&params[16] = *Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.Broadcast, params.ptr, cast(void*)0);
	}
	void BroadcastTeam(Controller Sender, ScriptString msg, ScriptName* Type = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(ScriptString*)&params[4] = msg;
		if (Type !is null)
			*cast(ScriptName*)&params[16] = *Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.BroadcastTeam, params.ptr, cast(void*)0);
	}
	void BroadcastLocalized(Actor Sender, ScriptClass Message, int* Switch = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null, UObject* OptionalObject = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Actor*)params.ptr = Sender;
		*cast(ScriptClass*)&params[4] = Message;
		if (Switch !is null)
			*cast(int*)&params[8] = *Switch;
		if (RelatedPRI_1 !is null)
			*cast(PlayerReplicationInfo*)&params[12] = *RelatedPRI_1;
		if (RelatedPRI_2 !is null)
			*cast(PlayerReplicationInfo*)&params[16] = *RelatedPRI_2;
		if (OptionalObject !is null)
			*cast(UObject*)&params[20] = *OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.BroadcastLocalized, params.ptr, cast(void*)0);
	}
	void BroadcastLocalizedTeam(int TeamIndex, Actor Sender, ScriptClass Message, int* Switch = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null, UObject* OptionalObject = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		*cast(Actor*)&params[4] = Sender;
		*cast(ScriptClass*)&params[8] = Message;
		if (Switch !is null)
			*cast(int*)&params[12] = *Switch;
		if (RelatedPRI_1 !is null)
			*cast(PlayerReplicationInfo*)&params[16] = *RelatedPRI_1;
		if (RelatedPRI_2 !is null)
			*cast(PlayerReplicationInfo*)&params[20] = *RelatedPRI_2;
		if (OptionalObject !is null)
			*cast(UObject*)&params[24] = *OptionalObject;
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
	NavigationPoint FindPlayerStart(Controller pPlayer, ubyte* InTeam = null, ScriptString* IncomingName = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = pPlayer;
		if (InTeam !is null)
			params[4] = *InTeam;
		if (IncomingName !is null)
			*cast(ScriptString*)&params[8] = *IncomingName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindPlayerStart, params.ptr, cast(void*)0);
		return *cast(NavigationPoint*)&params[20];
	}
	PlayerStart ChoosePlayerStart(Controller pPlayer, ubyte* InTeam = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = pPlayer;
		if (InTeam !is null)
			params[4] = *InTeam;
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
	bool AllowPausing(PlayerController* PC = null)
	{
		ubyte params[8];
		params[] = 0;
		if (PC !is null)
			*cast(PlayerController*)params.ptr = *PC;
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
	void GetSeamlessTravelActorList(bool bToEntry, ref ScriptArray!(Actor) ActorList)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bToEntry;
		*cast(ScriptArray!(Actor)*)&params[4] = ActorList;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSeamlessTravelActorList, params.ptr, cast(void*)0);
		ActorList = *cast(ScriptArray!(Actor)*)&params[4];
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
	void HandleSeamlessTravelPlayer(ref Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandleSeamlessTravelPlayer, params.ptr, cast(void*)0);
		C = *cast(Controller*)params.ptr;
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
	void BeginBVT(ScriptString* TagDesc = null)
	{
		ubyte params[12];
		params[] = 0;
		if (TagDesc !is null)
			*cast(ScriptString*)params.ptr = *TagDesc;
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
