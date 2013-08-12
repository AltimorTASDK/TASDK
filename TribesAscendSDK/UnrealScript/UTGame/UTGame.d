module UnrealScript.UTGame.UTGame;

import ScriptClasses;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.UDKBase.UDKGame;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.UTGame.UTTeamInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.PlayerStart;
import UnrealScript.Engine.GameplayEventsWriter;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.UTGame.UTMutator;
import UnrealScript.UTGame.UTBot;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.AIController;
import UnrealScript.Engine.SpeechRecognition;
import UnrealScript.UTGame.UTVehicle;
import UnrealScript.Engine.WorldInfo;
import UnrealScript.Engine.PickupFactory;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTGameObjective;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Vehicle;
import UnrealScript.UTGame.UTCharInfo;
import UnrealScript.UTGame.UTPlayerReplicationInfo;
import UnrealScript.UTGame.UTVehicleFactory;

extern(C++) interface UTGame : UDKGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTGame")); }
	private static __gshared UTGame mDefaultProperties;
	@property final static UTGame DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTGame)("UTGame UTGame.Default__UTGame")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetAutoObjectiveFor;
			ScriptFunction mForceRespawn;
			ScriptFunction mJustStarted;
			ScriptFunction mGetBotTeam;
			ScriptFunction mUseLowGore;
			ScriptFunction mTooManyBots;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mAllowMutator;
			ScriptFunction mSetGameType;
			ScriptFunction mDriverEnteredVehicle;
			ScriptFunction mDriverLeftVehicle;
			ScriptFunction mAllowBecomeActivePlayer;
			ScriptFunction mReset;
			ScriptFunction mFindNewObjectives;
			ScriptFunction mNotifyNavigationChanged;
			ScriptFunction mParseKillMessage;
			ScriptFunction mSkipPlaySound;
			ScriptFunction mSetGameSpeed;
			ScriptFunction mBroadcastDeathMessage;
			ScriptFunction mScoreKill;
			ScriptFunction mAdjustSkill;
			ScriptFunction mKilled;
			ScriptFunction mInitGame;
			ScriptFunction mGenericPlayerInitialization;
			ScriptFunction mSetPause;
			ScriptFunction mLevelRecommendedPlayers;
			ScriptFunction mLogin;
			ScriptFunction mShouldRespawn;
			ScriptFunction mWantFastSpawnFor;
			ScriptFunction mSpawnWait;
			ScriptFunction mRestartGame;
			ScriptFunction mCheckEndGame;
			ScriptFunction mSetEndGameFocus;
			ScriptFunction mAtCapacity;
			ScriptFunction mPostLogin;
			ScriptFunction mUpdateGameSettingsCounts;
			ScriptFunction mAssignHoverboard;
			ScriptFunction mGetHandicapNeed;
			ScriptFunction mRestartPlayer;
			ScriptFunction mCampaignSkillAdjust;
			ScriptFunction mAddDefaultInventory;
			ScriptFunction mCanSpectate;
			ScriptFunction mChangeName;
			ScriptFunction mDiscardInventory;
			ScriptFunction mLogout;
			ScriptFunction mKillBots;
			ScriptFunction mKillOthers;
			ScriptFunction mKillThis;
			ScriptFunction mKillBot;
			ScriptFunction mNeedPlayers;
			ScriptFunction mAddBot;
			ScriptFunction mSpawnBot;
			ScriptFunction mInitializeBot;
			ScriptFunction mInitGameReplicationInfo;
			ScriptFunction mGetMapTypeRule;
			ScriptFunction mGetEndGameConditionRule;
			ScriptFunction mNotifySpree;
			ScriptFunction mEndSpree;
			ScriptFunction mUpdateGameplayMuteList;
			ScriptFunction mSetupPlayerMuteList;
			ScriptFunction mRemovePlayerFromMuteLists;
			ScriptFunction mResetAllPlayerMuteListsToSpectatorChannel;
			ScriptFunction mStartMatch;
			ScriptFunction mEndGame;
			ScriptFunction mEndLogging;
			ScriptFunction mFindPlayerStart;
			ScriptFunction mDominatingVictory;
			ScriptFunction mIsAWinner;
			ScriptFunction mPlayEndOfMatchMessage;
			ScriptFunction mPlayRegularEndOfMatchMessage;
			ScriptFunction mPlayStartupMessage;
			ScriptFunction mEndRound;
			ScriptFunction mMatchIsInProgress;
			ScriptFunction mAddInitialBots;
			ScriptFunction mCalculatedNetSpeed;
			ScriptFunction mIsConsoleDedicatedServer;
			ScriptFunction mChoosePlayerStart;
			ScriptFunction mRatePlayerStart;
			ScriptFunction mCheckMaxLives;
			ScriptFunction mCheckScore;
			ScriptFunction mRegisterVehicle;
			ScriptFunction mActivateVehicleFactory;
			ScriptFunction mViewObjective;
			ScriptFunction mAddMutator;
			ScriptFunction mAllowClientToTeleport;
			ScriptFunction mShowPathTo;
			ScriptFunction mGetSeamlessTravelActorList;
			ScriptFunction mPostSeamlessTravel;
			ScriptFunction mHandleSeamlessTravelPlayer;
			ScriptFunction mGetBaseUTMutator;
			ScriptFunction mProcessSpeechRecognition;
			ScriptFunction mWriteOnlinePlayerScores;
			ScriptFunction mGetCurrentMapCycleIndex;
			ScriptFunction mGetNextMap;
			ScriptFunction mProcessServerTravel;
			ScriptFunction mContinueSeamlessTravel;
			ScriptFunction mGetEndOfMatchRules;
			ScriptFunction mGetLocationFor;
			ScriptFunction mAllowCheats;
			ScriptFunction mUpdateGameSettings;
		}
		public @property static final
		{
			ScriptFunction GetAutoObjectiveFor() { return mGetAutoObjectiveFor ? mGetAutoObjectiveFor : (mGetAutoObjectiveFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.GetAutoObjectiveFor")); }
			ScriptFunction ForceRespawn() { return mForceRespawn ? mForceRespawn : (mForceRespawn = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.ForceRespawn")); }
			ScriptFunction JustStarted() { return mJustStarted ? mJustStarted : (mJustStarted = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.JustStarted")); }
			ScriptFunction GetBotTeam() { return mGetBotTeam ? mGetBotTeam : (mGetBotTeam = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.GetBotTeam")); }
			ScriptFunction UseLowGore() { return mUseLowGore ? mUseLowGore : (mUseLowGore = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.UseLowGore")); }
			ScriptFunction TooManyBots() { return mTooManyBots ? mTooManyBots : (mTooManyBots = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.TooManyBots")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.PostBeginPlay")); }
			ScriptFunction AllowMutator() { return mAllowMutator ? mAllowMutator : (mAllowMutator = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.AllowMutator")); }
			ScriptFunction SetGameType() { return mSetGameType ? mSetGameType : (mSetGameType = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.SetGameType")); }
			ScriptFunction DriverEnteredVehicle() { return mDriverEnteredVehicle ? mDriverEnteredVehicle : (mDriverEnteredVehicle = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.DriverEnteredVehicle")); }
			ScriptFunction DriverLeftVehicle() { return mDriverLeftVehicle ? mDriverLeftVehicle : (mDriverLeftVehicle = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.DriverLeftVehicle")); }
			ScriptFunction AllowBecomeActivePlayer() { return mAllowBecomeActivePlayer ? mAllowBecomeActivePlayer : (mAllowBecomeActivePlayer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.AllowBecomeActivePlayer")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.Reset")); }
			ScriptFunction FindNewObjectives() { return mFindNewObjectives ? mFindNewObjectives : (mFindNewObjectives = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.FindNewObjectives")); }
			ScriptFunction NotifyNavigationChanged() { return mNotifyNavigationChanged ? mNotifyNavigationChanged : (mNotifyNavigationChanged = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.NotifyNavigationChanged")); }
			ScriptFunction ParseKillMessage() { return mParseKillMessage ? mParseKillMessage : (mParseKillMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.ParseKillMessage")); }
			ScriptFunction SkipPlaySound() { return mSkipPlaySound ? mSkipPlaySound : (mSkipPlaySound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.SkipPlaySound")); }
			ScriptFunction SetGameSpeed() { return mSetGameSpeed ? mSetGameSpeed : (mSetGameSpeed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.SetGameSpeed")); }
			ScriptFunction BroadcastDeathMessage() { return mBroadcastDeathMessage ? mBroadcastDeathMessage : (mBroadcastDeathMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.BroadcastDeathMessage")); }
			ScriptFunction ScoreKill() { return mScoreKill ? mScoreKill : (mScoreKill = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.ScoreKill")); }
			ScriptFunction AdjustSkill() { return mAdjustSkill ? mAdjustSkill : (mAdjustSkill = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.AdjustSkill")); }
			ScriptFunction Killed() { return mKilled ? mKilled : (mKilled = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.Killed")); }
			ScriptFunction InitGame() { return mInitGame ? mInitGame : (mInitGame = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.InitGame")); }
			ScriptFunction GenericPlayerInitialization() { return mGenericPlayerInitialization ? mGenericPlayerInitialization : (mGenericPlayerInitialization = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.GenericPlayerInitialization")); }
			ScriptFunction SetPause() { return mSetPause ? mSetPause : (mSetPause = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.SetPause")); }
			ScriptFunction LevelRecommendedPlayers() { return mLevelRecommendedPlayers ? mLevelRecommendedPlayers : (mLevelRecommendedPlayers = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.LevelRecommendedPlayers")); }
			ScriptFunction Login() { return mLogin ? mLogin : (mLogin = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.Login")); }
			ScriptFunction ShouldRespawn() { return mShouldRespawn ? mShouldRespawn : (mShouldRespawn = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.ShouldRespawn")); }
			ScriptFunction WantFastSpawnFor() { return mWantFastSpawnFor ? mWantFastSpawnFor : (mWantFastSpawnFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.WantFastSpawnFor")); }
			ScriptFunction SpawnWait() { return mSpawnWait ? mSpawnWait : (mSpawnWait = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.SpawnWait")); }
			ScriptFunction RestartGame() { return mRestartGame ? mRestartGame : (mRestartGame = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.RestartGame")); }
			ScriptFunction CheckEndGame() { return mCheckEndGame ? mCheckEndGame : (mCheckEndGame = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.CheckEndGame")); }
			ScriptFunction SetEndGameFocus() { return mSetEndGameFocus ? mSetEndGameFocus : (mSetEndGameFocus = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.SetEndGameFocus")); }
			ScriptFunction AtCapacity() { return mAtCapacity ? mAtCapacity : (mAtCapacity = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.AtCapacity")); }
			ScriptFunction PostLogin() { return mPostLogin ? mPostLogin : (mPostLogin = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.PostLogin")); }
			ScriptFunction UpdateGameSettingsCounts() { return mUpdateGameSettingsCounts ? mUpdateGameSettingsCounts : (mUpdateGameSettingsCounts = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.UpdateGameSettingsCounts")); }
			ScriptFunction AssignHoverboard() { return mAssignHoverboard ? mAssignHoverboard : (mAssignHoverboard = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.AssignHoverboard")); }
			ScriptFunction GetHandicapNeed() { return mGetHandicapNeed ? mGetHandicapNeed : (mGetHandicapNeed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.GetHandicapNeed")); }
			ScriptFunction RestartPlayer() { return mRestartPlayer ? mRestartPlayer : (mRestartPlayer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.RestartPlayer")); }
			ScriptFunction CampaignSkillAdjust() { return mCampaignSkillAdjust ? mCampaignSkillAdjust : (mCampaignSkillAdjust = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.CampaignSkillAdjust")); }
			ScriptFunction AddDefaultInventory() { return mAddDefaultInventory ? mAddDefaultInventory : (mAddDefaultInventory = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.AddDefaultInventory")); }
			ScriptFunction CanSpectate() { return mCanSpectate ? mCanSpectate : (mCanSpectate = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.CanSpectate")); }
			ScriptFunction ChangeName() { return mChangeName ? mChangeName : (mChangeName = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.ChangeName")); }
			ScriptFunction DiscardInventory() { return mDiscardInventory ? mDiscardInventory : (mDiscardInventory = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.DiscardInventory")); }
			ScriptFunction Logout() { return mLogout ? mLogout : (mLogout = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.Logout")); }
			ScriptFunction KillBots() { return mKillBots ? mKillBots : (mKillBots = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.KillBots")); }
			ScriptFunction KillOthers() { return mKillOthers ? mKillOthers : (mKillOthers = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.KillOthers")); }
			ScriptFunction KillThis() { return mKillThis ? mKillThis : (mKillThis = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.KillThis")); }
			ScriptFunction KillBot() { return mKillBot ? mKillBot : (mKillBot = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.KillBot")); }
			ScriptFunction NeedPlayers() { return mNeedPlayers ? mNeedPlayers : (mNeedPlayers = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.NeedPlayers")); }
			ScriptFunction AddBot() { return mAddBot ? mAddBot : (mAddBot = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.AddBot")); }
			ScriptFunction SpawnBot() { return mSpawnBot ? mSpawnBot : (mSpawnBot = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.SpawnBot")); }
			ScriptFunction InitializeBot() { return mInitializeBot ? mInitializeBot : (mInitializeBot = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.InitializeBot")); }
			ScriptFunction InitGameReplicationInfo() { return mInitGameReplicationInfo ? mInitGameReplicationInfo : (mInitGameReplicationInfo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.InitGameReplicationInfo")); }
			ScriptFunction GetMapTypeRule() { return mGetMapTypeRule ? mGetMapTypeRule : (mGetMapTypeRule = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.GetMapTypeRule")); }
			ScriptFunction GetEndGameConditionRule() { return mGetEndGameConditionRule ? mGetEndGameConditionRule : (mGetEndGameConditionRule = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.GetEndGameConditionRule")); }
			ScriptFunction NotifySpree() { return mNotifySpree ? mNotifySpree : (mNotifySpree = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.NotifySpree")); }
			ScriptFunction EndSpree() { return mEndSpree ? mEndSpree : (mEndSpree = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.EndSpree")); }
			ScriptFunction UpdateGameplayMuteList() { return mUpdateGameplayMuteList ? mUpdateGameplayMuteList : (mUpdateGameplayMuteList = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.UpdateGameplayMuteList")); }
			ScriptFunction SetupPlayerMuteList() { return mSetupPlayerMuteList ? mSetupPlayerMuteList : (mSetupPlayerMuteList = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.SetupPlayerMuteList")); }
			ScriptFunction RemovePlayerFromMuteLists() { return mRemovePlayerFromMuteLists ? mRemovePlayerFromMuteLists : (mRemovePlayerFromMuteLists = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.RemovePlayerFromMuteLists")); }
			ScriptFunction ResetAllPlayerMuteListsToSpectatorChannel() { return mResetAllPlayerMuteListsToSpectatorChannel ? mResetAllPlayerMuteListsToSpectatorChannel : (mResetAllPlayerMuteListsToSpectatorChannel = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.ResetAllPlayerMuteListsToSpectatorChannel")); }
			ScriptFunction StartMatch() { return mStartMatch ? mStartMatch : (mStartMatch = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.StartMatch")); }
			ScriptFunction EndGame() { return mEndGame ? mEndGame : (mEndGame = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.EndGame")); }
			ScriptFunction EndLogging() { return mEndLogging ? mEndLogging : (mEndLogging = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.EndLogging")); }
			ScriptFunction FindPlayerStart() { return mFindPlayerStart ? mFindPlayerStart : (mFindPlayerStart = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.FindPlayerStart")); }
			ScriptFunction DominatingVictory() { return mDominatingVictory ? mDominatingVictory : (mDominatingVictory = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.DominatingVictory")); }
			ScriptFunction IsAWinner() { return mIsAWinner ? mIsAWinner : (mIsAWinner = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.IsAWinner")); }
			ScriptFunction PlayEndOfMatchMessage() { return mPlayEndOfMatchMessage ? mPlayEndOfMatchMessage : (mPlayEndOfMatchMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.PlayEndOfMatchMessage")); }
			ScriptFunction PlayRegularEndOfMatchMessage() { return mPlayRegularEndOfMatchMessage ? mPlayRegularEndOfMatchMessage : (mPlayRegularEndOfMatchMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.PlayRegularEndOfMatchMessage")); }
			ScriptFunction PlayStartupMessage() { return mPlayStartupMessage ? mPlayStartupMessage : (mPlayStartupMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.PlayStartupMessage")); }
			ScriptFunction EndRound() { return mEndRound ? mEndRound : (mEndRound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.EndRound")); }
			ScriptFunction MatchIsInProgress() { return mMatchIsInProgress ? mMatchIsInProgress : (mMatchIsInProgress = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.MatchIsInProgress")); }
			ScriptFunction AddInitialBots() { return mAddInitialBots ? mAddInitialBots : (mAddInitialBots = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.AddInitialBots")); }
			ScriptFunction CalculatedNetSpeed() { return mCalculatedNetSpeed ? mCalculatedNetSpeed : (mCalculatedNetSpeed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.CalculatedNetSpeed")); }
			ScriptFunction IsConsoleDedicatedServer() { return mIsConsoleDedicatedServer ? mIsConsoleDedicatedServer : (mIsConsoleDedicatedServer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.IsConsoleDedicatedServer")); }
			ScriptFunction ChoosePlayerStart() { return mChoosePlayerStart ? mChoosePlayerStart : (mChoosePlayerStart = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.ChoosePlayerStart")); }
			ScriptFunction RatePlayerStart() { return mRatePlayerStart ? mRatePlayerStart : (mRatePlayerStart = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.RatePlayerStart")); }
			ScriptFunction CheckMaxLives() { return mCheckMaxLives ? mCheckMaxLives : (mCheckMaxLives = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.CheckMaxLives")); }
			ScriptFunction CheckScore() { return mCheckScore ? mCheckScore : (mCheckScore = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.CheckScore")); }
			ScriptFunction RegisterVehicle() { return mRegisterVehicle ? mRegisterVehicle : (mRegisterVehicle = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.RegisterVehicle")); }
			ScriptFunction ActivateVehicleFactory() { return mActivateVehicleFactory ? mActivateVehicleFactory : (mActivateVehicleFactory = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.ActivateVehicleFactory")); }
			ScriptFunction ViewObjective() { return mViewObjective ? mViewObjective : (mViewObjective = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.ViewObjective")); }
			ScriptFunction AddMutator() { return mAddMutator ? mAddMutator : (mAddMutator = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.AddMutator")); }
			ScriptFunction AllowClientToTeleport() { return mAllowClientToTeleport ? mAllowClientToTeleport : (mAllowClientToTeleport = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.AllowClientToTeleport")); }
			ScriptFunction ShowPathTo() { return mShowPathTo ? mShowPathTo : (mShowPathTo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.ShowPathTo")); }
			ScriptFunction GetSeamlessTravelActorList() { return mGetSeamlessTravelActorList ? mGetSeamlessTravelActorList : (mGetSeamlessTravelActorList = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.GetSeamlessTravelActorList")); }
			ScriptFunction PostSeamlessTravel() { return mPostSeamlessTravel ? mPostSeamlessTravel : (mPostSeamlessTravel = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.PostSeamlessTravel")); }
			ScriptFunction HandleSeamlessTravelPlayer() { return mHandleSeamlessTravelPlayer ? mHandleSeamlessTravelPlayer : (mHandleSeamlessTravelPlayer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.HandleSeamlessTravelPlayer")); }
			ScriptFunction GetBaseUTMutator() { return mGetBaseUTMutator ? mGetBaseUTMutator : (mGetBaseUTMutator = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.GetBaseUTMutator")); }
			ScriptFunction ProcessSpeechRecognition() { return mProcessSpeechRecognition ? mProcessSpeechRecognition : (mProcessSpeechRecognition = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.ProcessSpeechRecognition")); }
			ScriptFunction WriteOnlinePlayerScores() { return mWriteOnlinePlayerScores ? mWriteOnlinePlayerScores : (mWriteOnlinePlayerScores = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.WriteOnlinePlayerScores")); }
			ScriptFunction GetCurrentMapCycleIndex() { return mGetCurrentMapCycleIndex ? mGetCurrentMapCycleIndex : (mGetCurrentMapCycleIndex = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.GetCurrentMapCycleIndex")); }
			ScriptFunction GetNextMap() { return mGetNextMap ? mGetNextMap : (mGetNextMap = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.GetNextMap")); }
			ScriptFunction ProcessServerTravel() { return mProcessServerTravel ? mProcessServerTravel : (mProcessServerTravel = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.ProcessServerTravel")); }
			ScriptFunction ContinueSeamlessTravel() { return mContinueSeamlessTravel ? mContinueSeamlessTravel : (mContinueSeamlessTravel = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.ContinueSeamlessTravel")); }
			ScriptFunction GetEndOfMatchRules() { return mGetEndOfMatchRules ? mGetEndOfMatchRules : (mGetEndOfMatchRules = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.GetEndOfMatchRules")); }
			ScriptFunction GetLocationFor() { return mGetLocationFor ? mGetLocationFor : (mGetLocationFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.GetLocationFor")); }
			ScriptFunction AllowCheats() { return mAllowCheats ? mAllowCheats : (mAllowCheats = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.AllowCheats")); }
			ScriptFunction UpdateGameSettings() { return mUpdateGameSettings ? mUpdateGameSettings : (mUpdateGameSettings = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGame.UpdateGameSettings")); }
		}
	}
	enum EVoiceChannel : ubyte
	{
		VC_Spectators = 0,
		VC_Team1 = 1,
		VC_Team2 = 2,
		VC_MAX = 3,
	}
	struct GameMapCycle
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.UTGame.GameMapCycle")); }
		@property final auto ref
		{
			ScriptArray!(ScriptString) Maps() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)&this + 8); }
			ScriptName GameClassName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct ActiveBotInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.UTGame.ActiveBotInfo")); }
		@property final
		{
			@property final auto ref ScriptString BotName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
			bool bInUse() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
			bool bInUse(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			UTVehicle VehicleList() { return *cast(UTVehicle*)(cast(size_t)cast(void*)this + 1080); }
			int ResetTimeDelay() { return *cast(int*)(cast(size_t)cast(void*)this + 1076); }
			int WarmupTime() { return *cast(int*)(cast(size_t)cast(void*)this + 956); }
			ScriptArray!(ScriptClass) DefaultInventory() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 1100); }
			ScriptArray!(ScriptString) MapPrefixes() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 1116); }
			ScriptArray!(UTGame.GameMapCycle) GameSpecificMapCycles() { return *cast(ScriptArray!(UTGame.GameMapCycle)*)(cast(size_t)cast(void*)this + 1148); }
			ScriptArray!(UTGame.ActiveBotInfo) ActiveBots() { return *cast(ScriptArray!(UTGame.ActiveBotInfo)*)(cast(size_t)cast(void*)this + 1164); }
			// WARNING: Property 'GameplayEventsWriter' has the same name as a defined type!
			ScriptString GameplayEventsWriterClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1240); }
			ScriptName MidgameScorePanelTag() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1232); }
			Pawn Sniper() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 1228); }
			float LastManDownTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1224); }
			float LastEncouragementTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1220); }
			SpeechRecognition SpeechRecognitionData() { return *cast(SpeechRecognition*)(cast(size_t)cast(void*)this + 1216); }
			ScriptString EndOfMatchRulesTemplateStr_Time() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1204); }
			ScriptString EndOfMatchRulesTemplateStr_ScoringSingle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1192); }
			ScriptString EndOfMatchRulesTemplateStr_Scoring() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1180); }
			NavigationPoint ScriptedStartSpot() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 1176); }
			int MapCycleIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 1160); }
			ScriptClass BotClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1144); }
			ScriptString DemoPrefix() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1132); }
			ScriptClass ConsolePlayerControllerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1128); }
			ScriptClass VictoryMessageClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1112); }
			ScriptString EnemyRosterName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1088); }
			UTTeamInfo EnemyRoster() { return *cast(UTTeamInfo*)(cast(size_t)cast(void*)this + 1084); }
			int ResetCountDown() { return *cast(int*)(cast(size_t)cast(void*)this + 1072); }
			Actor EndGameFocus() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1068); }
			ScriptString GameUMenuType() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1056); }
			ScriptString RulesMenuType() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1044); }
			int EndMessageCounter() { return *cast(int*)(cast(size_t)cast(void*)this + 1040); }
			int EndMessageWait() { return *cast(int*)(cast(size_t)cast(void*)this + 1036); }
			float EndTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1032); }
			NavigationPoint LastStartSpot() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 1028); }
			NavigationPoint LastPlayerStartSpot() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 1024); }
			int PlayerDeaths() { return *cast(int*)(cast(size_t)cast(void*)this + 1020); }
			int PlayerKills() { return *cast(int*)(cast(size_t)cast(void*)this + 1016); }
			float AdjustedDifficulty() { return *cast(float*)(cast(size_t)cast(void*)this + 1012); }
			int CountDown() { return *cast(int*)(cast(size_t)cast(void*)this + 1008); }
			int PendingMatchElapsedTime() { return *cast(int*)(cast(size_t)cast(void*)this + 1004); }
			int LateEntryLives() { return *cast(int*)(cast(size_t)cast(void*)this + 1000); }
			int DefaultMaxLives() { return *cast(int*)(cast(size_t)cast(void*)this + 996); }
			float SpawnProtectionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 992); }
			int DesiredPlayerCount() { return *cast(int*)(cast(size_t)cast(void*)this + 988); }
			ubyte WeaponTauntUsed() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 965); }
			ubyte StartupStage() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 964); }
			int WarmupRemaining() { return *cast(int*)(cast(size_t)cast(void*)this + 960); }
			int RestartWait() { return *cast(int*)(cast(size_t)cast(void*)this + 952); }
			int MinNetPlayers() { return *cast(int*)(cast(size_t)cast(void*)this + 948); }
			int ClientProcessingTimeout() { return *cast(int*)(cast(size_t)cast(void*)this + 944); }
			int NetWait() { return *cast(int*)(cast(size_t)cast(void*)this + 940); }
			float BotRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 936); }
			float EndTimeDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 932); }
			int ServerSkillLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 928); }
			ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 916); }
			ScriptString Acronym() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 904); }
		}
		bool bWarmupRound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x1000) != 0; }
		bool bWarmupRound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x1000; } return val; }
		bool bGivePhysicsGun() { return (*cast(uint*)(cast(size_t)cast(void*)this + 900) & 0x40) != 0; }
		bool bGivePhysicsGun(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 900) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 900) &= ~0x40; } return val; }
		bool bLogGameplayEvents() { return (*cast(uint*)(cast(size_t)cast(void*)this + 900) & 0x20) != 0; }
		bool bLogGameplayEvents(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 900) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 900) &= ~0x20; } return val; }
		bool bUseClassicHUD() { return (*cast(uint*)(cast(size_t)cast(void*)this + 900) & 0x10) != 0; }
		bool bUseClassicHUD(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 900) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 900) &= ~0x10; } return val; }
		bool bIgnoreTeamForVoiceChat() { return (*cast(uint*)(cast(size_t)cast(void*)this + 900) & 0x8) != 0; }
		bool bIgnoreTeamForVoiceChat(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 900) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 900) &= ~0x8; } return val; }
		bool bNecrisLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 900) & 0x4) != 0; }
		bool bNecrisLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 900) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 900) &= ~0x4; } return val; }
		bool bForceMidGameMenuAtStart() { return (*cast(uint*)(cast(size_t)cast(void*)this + 900) & 0x2) != 0; }
		bool bForceMidGameMenuAtStart(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 900) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 900) &= ~0x2; } return val; }
		bool bMidGameHasMap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 900) & 0x1) != 0; }
		bool bMidGameHasMap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 900) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 900) &= ~0x1; } return val; }
		bool bPlayedOneKill() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x80000000) != 0; }
		bool bPlayedOneKill(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x80000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x80000000; } return val; }
		bool bPlayedFiveKills() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x40000000) != 0; }
		bool bPlayedFiveKills(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x40000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x40000000; } return val; }
		bool bPlayedTenKills() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x20000000) != 0; }
		bool bPlayedTenKills(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x20000000; } return val; }
		bool bScoreDeaths() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x10000000) != 0; }
		bool bScoreDeaths(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x10000000; } return val; }
		bool bAllowKeyboardAndMouse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x8000000) != 0; }
		bool bAllowKeyboardAndMouse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x8000000; } return val; }
		bool bConsoleServer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x4000000) != 0; }
		bool bConsoleServer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x4000000; } return val; }
		bool bAllowHoverboard() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x2000000) != 0; }
		bool bAllowHoverboard(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x2000000; } return val; }
		bool bStartWithLockerWeaps() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x1000000) != 0; }
		bool bStartWithLockerWeaps(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x1000000; } return val; }
		bool bUndrivenVehicleDamage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x800000) != 0; }
		bool bUndrivenVehicleDamage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x800000; } return val; }
		bool bDemoMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x400000) != 0; }
		bool bDemoMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x400000; } return val; }
		bool bMustJoinBeforeStart() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x200000) != 0; }
		bool bMustJoinBeforeStart(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x200000; } return val; }
		bool bPlayerBecameActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x100000) != 0; }
		bool bPlayerBecameActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x100000; } return val; }
		bool bMustHaveMultiplePlayers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x80000) != 0; }
		bool bMustHaveMultiplePlayers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x80000; } return val; }
		bool bOverTimeBroadcast() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x40000) != 0; }
		bool bOverTimeBroadcast(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x40000; } return val; }
		bool bFinalStartup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x20000) != 0; }
		bool bFinalStartup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x20000; } return val; }
		bool bStartedCountDown() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x10000) != 0; }
		bool bStartedCountDown(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x10000; } return val; }
		bool bSkipPlaySound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x8000) != 0; }
		bool bSkipPlaySound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x8000; } return val; }
		bool bQuickStart() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x4000) != 0; }
		bool bQuickStart(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x4000; } return val; }
		bool bFirstBlood() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x2000) != 0; }
		bool bFirstBlood(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x2000; } return val; }
		bool bShouldWaitForNetPlayers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x800) != 0; }
		bool bShouldWaitForNetPlayers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x800; } return val; }
		bool bWaitForNetPlayers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x400) != 0; }
		bool bWaitForNetPlayers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x400; } return val; }
		bool bTempForceRespawn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x200) != 0; }
		bool bTempForceRespawn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x200; } return val; }
		bool bForceRespawn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x100) != 0; }
		bool bForceRespawn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x100; } return val; }
		bool bPlayersMustBeReady() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x80) != 0; }
		bool bPlayersMustBeReady(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x80; } return val; }
		bool bAutoNumBots() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x40) != 0; }
		bool bAutoNumBots(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x40; } return val; }
		bool bCustomBots() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x20) != 0; }
		bool bCustomBots(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x20; } return val; }
		bool bPlayersVsBots() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x10) != 0; }
		bool bPlayersVsBots(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x10; } return val; }
		bool bSoaking() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x8) != 0; }
		bool bSoaking(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x8; } return val; }
		bool bTeamScoreRounds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x4) != 0; }
		bool bTeamScoreRounds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x4; } return val; }
		bool bWeaponStay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x2) != 0; }
		bool bWeaponStay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x2; } return val; }
		bool bExportMenuData() { return (*cast(uint*)(cast(size_t)cast(void*)this + 896) & 0x1) != 0; }
		bool bExportMenuData(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 896) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 896) &= ~0x1; } return val; }
	}
final:
	Actor GetAutoObjectiveFor(UTPlayerController PC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAutoObjectiveFor, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	bool ForceRespawn()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceRespawn, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool JustStarted(float MaxElapsedTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = MaxElapsedTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.JustStarted, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	UTTeamInfo GetBotTeam(int TeamBots, bool bUseTeamIndex, int TeamIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = TeamBots;
		*cast(bool*)&params[4] = bUseTeamIndex;
		*cast(int*)&params[8] = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBotTeam, params.ptr, cast(void*)0);
		return *cast(UTTeamInfo*)&params[12];
	}
	static bool UseLowGore(WorldInfo WI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(WorldInfo*)params.ptr = WI;
		StaticClass.ProcessEvent(Functions.UseLowGore, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool TooManyBots(Controller botToRemove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = botToRemove;
		(cast(ScriptObject)this).ProcessEvent(Functions.TooManyBots, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	static bool AllowMutator(ScriptString MutatorClassName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MutatorClassName;
		StaticClass.ProcessEvent(Functions.AllowMutator, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
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
	void DriverEnteredVehicle(Vehicle V, Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		*cast(Pawn*)&params[4] = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.DriverEnteredVehicle, params.ptr, cast(void*)0);
	}
	void DriverLeftVehicle(Vehicle V, Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		*cast(Pawn*)&params[4] = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.DriverLeftVehicle, params.ptr, cast(void*)0);
	}
	bool AllowBecomeActivePlayer(PlayerController P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowBecomeActivePlayer, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void FindNewObjectives(UTGameObjective DisabledObjective)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTGameObjective*)params.ptr = DisabledObjective;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindNewObjectives, params.ptr, cast(void*)0);
	}
	void NotifyNavigationChanged(NavigationPoint N)
	{
		ubyte params[4];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = N;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyNavigationChanged, params.ptr, cast(void*)0);
	}
	static ScriptString ParseKillMessage(ScriptString KillerName, ScriptString VictimName, ScriptString DeathMessage)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ScriptString*)params.ptr = KillerName;
		*cast(ScriptString*)&params[12] = VictimName;
		*cast(ScriptString*)&params[24] = DeathMessage;
		StaticClass.ProcessEvent(Functions.ParseKillMessage, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[36];
	}
	bool SkipPlaySound()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.SkipPlaySound, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetGameSpeed(float T)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = T;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetGameSpeed, params.ptr, cast(void*)0);
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
	void ScoreKill(Controller Killer, Controller Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.ScoreKill, params.ptr, cast(void*)0);
	}
	void AdjustSkill(AIController B, PlayerController P, bool bWinner)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AIController*)params.ptr = B;
		*cast(PlayerController*)&params[4] = P;
		*cast(bool*)&params[8] = bWinner;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustSkill, params.ptr, cast(void*)0);
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
	void InitGame(ScriptString Options, ScriptString* ErrorMessage)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = *ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitGame, params.ptr, cast(void*)0);
		*ErrorMessage = *cast(ScriptString*)&params[12];
	}
	void GenericPlayerInitialization(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.GenericPlayerInitialization, params.ptr, cast(void*)0);
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
	int LevelRecommendedPlayers()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.LevelRecommendedPlayers, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
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
	bool ShouldRespawn(PickupFactory Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PickupFactory*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldRespawn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool WantFastSpawnFor(AIController B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AIController*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.WantFastSpawnFor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	float SpawnWait(AIController B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AIController*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnWait, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void RestartGame()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RestartGame, cast(void*)0, cast(void*)0);
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
	void SetEndGameFocus(PlayerReplicationInfo Winner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetEndGameFocus, params.ptr, cast(void*)0);
	}
	bool AtCapacity(bool bSpectator)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bSpectator;
		(cast(ScriptObject)this).ProcessEvent(Functions.AtCapacity, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PostLogin(PlayerController NewPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = NewPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostLogin, params.ptr, cast(void*)0);
	}
	void UpdateGameSettingsCounts()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateGameSettingsCounts, cast(void*)0, cast(void*)0);
	}
	void AssignHoverboard(UTPawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.AssignHoverboard, params.ptr, cast(void*)0);
	}
	int GetHandicapNeed(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHandicapNeed, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void RestartPlayer(Controller aPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = aPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.RestartPlayer, params.ptr, cast(void*)0);
	}
	void CampaignSkillAdjust(UTBot aBot)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = aBot;
		(cast(ScriptObject)this).ProcessEvent(Functions.CampaignSkillAdjust, params.ptr, cast(void*)0);
	}
	void AddDefaultInventory(Pawn PlayerPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = PlayerPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddDefaultInventory, params.ptr, cast(void*)0);
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
	void ChangeName(Controller Other, ScriptString S, bool bNameChange)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		*cast(ScriptString*)&params[4] = S;
		*cast(bool*)&params[16] = bNameChange;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangeName, params.ptr, cast(void*)0);
	}
	void DiscardInventory(Pawn Other, Controller Killer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(Controller*)&params[4] = Killer;
		(cast(ScriptObject)this).ProcessEvent(Functions.DiscardInventory, params.ptr, cast(void*)0);
	}
	void Logout(Controller Exiting)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Exiting;
		(cast(ScriptObject)this).ProcessEvent(Functions.Logout, params.ptr, cast(void*)0);
	}
	void KillBots()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.KillBots, cast(void*)0, cast(void*)0);
	}
	void KillOthers()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.KillOthers, cast(void*)0, cast(void*)0);
	}
	void KillThis()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.KillThis, cast(void*)0, cast(void*)0);
	}
	void KillBot(UTBot B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.KillBot, params.ptr, cast(void*)0);
	}
	bool NeedPlayers()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.NeedPlayers, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	UTBot AddBot(ScriptString BotName, bool bUseTeamIndex, int TeamIndex)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = BotName;
		*cast(bool*)&params[12] = bUseTeamIndex;
		*cast(int*)&params[16] = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddBot, params.ptr, cast(void*)0);
		return *cast(UTBot*)&params[20];
	}
	UTBot SpawnBot(ScriptString BotName, bool bUseTeamIndex, int TeamIndex)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = BotName;
		*cast(bool*)&params[12] = bUseTeamIndex;
		*cast(int*)&params[16] = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnBot, params.ptr, cast(void*)0);
		return *cast(UTBot*)&params[20];
	}
	void InitializeBot(UTBot NewBot, UTTeamInfo BotTeam, UTCharInfo.CharacterInfo* BotInfo)
	{
		ubyte params[120];
		params[] = 0;
		*cast(UTBot*)params.ptr = NewBot;
		*cast(UTTeamInfo*)&params[4] = BotTeam;
		*cast(UTCharInfo.CharacterInfo*)&params[8] = *BotInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeBot, params.ptr, cast(void*)0);
		*BotInfo = *cast(UTCharInfo.CharacterInfo*)&params[8];
	}
	void InitGameReplicationInfo()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitGameReplicationInfo, cast(void*)0, cast(void*)0);
	}
	ScriptString GetMapTypeRule()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMapTypeRule, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	ScriptString GetEndGameConditionRule()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEndGameConditionRule, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void NotifySpree(UTPlayerReplicationInfo Other, int Num)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = Other;
		*cast(int*)&params[4] = Num;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifySpree, params.ptr, cast(void*)0);
	}
	void EndSpree(UTPlayerReplicationInfo Killer, UTPlayerReplicationInfo Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = Killer;
		*cast(UTPlayerReplicationInfo*)&params[4] = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndSpree, params.ptr, cast(void*)0);
	}
	void UpdateGameplayMuteList(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateGameplayMuteList, params.ptr, cast(void*)0);
	}
	void SetupPlayerMuteList(UTPlayerController PC, bool bForceSpectatorChannel)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		*cast(bool*)&params[4] = bForceSpectatorChannel;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetupPlayerMuteList, params.ptr, cast(void*)0);
	}
	void RemovePlayerFromMuteLists(UTPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemovePlayerFromMuteLists, params.ptr, cast(void*)0);
	}
	void ResetAllPlayerMuteListsToSpectatorChannel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetAllPlayerMuteListsToSpectatorChannel, cast(void*)0, cast(void*)0);
	}
	void StartMatch()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartMatch, cast(void*)0, cast(void*)0);
	}
	void EndGame(PlayerReplicationInfo Winner, ScriptString Reason)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndGame, params.ptr, cast(void*)0);
	}
	void EndLogging(ScriptString Reason)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndLogging, params.ptr, cast(void*)0);
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
	bool DominatingVictory()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.DominatingVictory, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsAWinner(PlayerController C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsAWinner, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PlayEndOfMatchMessage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayEndOfMatchMessage, cast(void*)0, cast(void*)0);
	}
	void PlayRegularEndOfMatchMessage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayRegularEndOfMatchMessage, cast(void*)0, cast(void*)0);
	}
	void PlayStartupMessage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayStartupMessage, cast(void*)0, cast(void*)0);
	}
	void EndRound(Actor EndRoundFocus)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = EndRoundFocus;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndRound, params.ptr, cast(void*)0);
	}
	bool MatchIsInProgress()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.MatchIsInProgress, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void AddInitialBots()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AddInitialBots, cast(void*)0, cast(void*)0);
	}
	int CalculatedNetSpeed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalculatedNetSpeed, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool IsConsoleDedicatedServer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsConsoleDedicatedServer, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
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
	bool CheckMaxLives(PlayerReplicationInfo Scorer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckMaxLives, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CheckScore(PlayerReplicationInfo Scorer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckScore, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void RegisterVehicle(UTVehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTVehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterVehicle, params.ptr, cast(void*)0);
	}
	void ActivateVehicleFactory(UTVehicleFactory VF)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTVehicleFactory*)params.ptr = VF;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActivateVehicleFactory, params.ptr, cast(void*)0);
	}
	void ViewObjective(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.ViewObjective, params.ptr, cast(void*)0);
	}
	void AddMutator(ScriptString mutname, bool bUserAdded)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = mutname;
		*cast(bool*)&params[12] = bUserAdded;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddMutator, params.ptr, cast(void*)0);
	}
	bool AllowClientToTeleport(UTPlayerReplicationInfo ClientPRI, Actor DestinationActor)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = ClientPRI;
		*cast(Actor*)&params[4] = DestinationActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowClientToTeleport, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void ShowPathTo(PlayerController P, int TeamNum)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		*cast(int*)&params[4] = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowPathTo, params.ptr, cast(void*)0);
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
	void PostSeamlessTravel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostSeamlessTravel, cast(void*)0, cast(void*)0);
	}
	void HandleSeamlessTravelPlayer(Controller* C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = *C;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandleSeamlessTravelPlayer, params.ptr, cast(void*)0);
		*C = *cast(Controller*)params.ptr;
	}
	UTMutator GetBaseUTMutator()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBaseUTMutator, params.ptr, cast(void*)0);
		return *cast(UTMutator*)params.ptr;
	}
	void ProcessSpeechRecognition(UTPlayerController Speaker, ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)* Words)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = Speaker;
		*cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4] = *Words;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessSpeechRecognition, params.ptr, cast(void*)0);
		*Words = *cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4];
	}
	void WriteOnlinePlayerScores()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.WriteOnlinePlayerScores, cast(void*)0, cast(void*)0);
	}
	int GetCurrentMapCycleIndex(ScriptArray!(ScriptString)* MapList)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = *MapList;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentMapCycleIndex, params.ptr, cast(void*)0);
		*MapList = *cast(ScriptArray!(ScriptString)*)params.ptr;
		return *cast(int*)&params[12];
	}
	ScriptString GetNextMap()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNextMap, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void ProcessServerTravel(ScriptString pURL, bool bAbsolute)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		*cast(bool*)&params[12] = bAbsolute;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessServerTravel, params.ptr, cast(void*)0);
	}
	void ContinueSeamlessTravel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ContinueSeamlessTravel, cast(void*)0, cast(void*)0);
	}
	static ScriptString GetEndOfMatchRules(int InGoalScore, int InTimeLimit)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = InGoalScore;
		*cast(int*)&params[4] = InTimeLimit;
		StaticClass.ProcessEvent(Functions.GetEndOfMatchRules, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	bool GetLocationFor(Pawn StatusPawn, Actor* LocationObject, int* MessageIndex, int LocationSpeechOffset)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = StatusPawn;
		*cast(Actor*)&params[4] = *LocationObject;
		*cast(int*)&params[8] = *MessageIndex;
		*cast(int*)&params[12] = LocationSpeechOffset;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLocationFor, params.ptr, cast(void*)0);
		*LocationObject = *cast(Actor*)&params[4];
		*MessageIndex = *cast(int*)&params[8];
		return *cast(bool*)&params[16];
	}
	bool AllowCheats(PlayerController P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowCheats, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void UpdateGameSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateGameSettings, cast(void*)0, cast(void*)0);
	}
}
