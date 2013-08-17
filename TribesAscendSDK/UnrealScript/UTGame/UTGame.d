module UnrealScript.UTGame.UTGame;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTGame")); }
	private static __gshared UTGame mDefaultProperties;
	@property final static UTGame DefaultProperties() { mixin(MGDPC("UTGame", "UTGame UTGame.Default__UTGame")); }
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
			ScriptFunction GetAutoObjectiveFor() { mixin(MGF("mGetAutoObjectiveFor", "Function UTGame.UTGame.GetAutoObjectiveFor")); }
			ScriptFunction ForceRespawn() { mixin(MGF("mForceRespawn", "Function UTGame.UTGame.ForceRespawn")); }
			ScriptFunction JustStarted() { mixin(MGF("mJustStarted", "Function UTGame.UTGame.JustStarted")); }
			ScriptFunction GetBotTeam() { mixin(MGF("mGetBotTeam", "Function UTGame.UTGame.GetBotTeam")); }
			ScriptFunction UseLowGore() { mixin(MGF("mUseLowGore", "Function UTGame.UTGame.UseLowGore")); }
			ScriptFunction TooManyBots() { mixin(MGF("mTooManyBots", "Function UTGame.UTGame.TooManyBots")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function UTGame.UTGame.PostBeginPlay")); }
			ScriptFunction AllowMutator() { mixin(MGF("mAllowMutator", "Function UTGame.UTGame.AllowMutator")); }
			ScriptFunction SetGameType() { mixin(MGF("mSetGameType", "Function UTGame.UTGame.SetGameType")); }
			ScriptFunction DriverEnteredVehicle() { mixin(MGF("mDriverEnteredVehicle", "Function UTGame.UTGame.DriverEnteredVehicle")); }
			ScriptFunction DriverLeftVehicle() { mixin(MGF("mDriverLeftVehicle", "Function UTGame.UTGame.DriverLeftVehicle")); }
			ScriptFunction AllowBecomeActivePlayer() { mixin(MGF("mAllowBecomeActivePlayer", "Function UTGame.UTGame.AllowBecomeActivePlayer")); }
			ScriptFunction Reset() { mixin(MGF("mReset", "Function UTGame.UTGame.Reset")); }
			ScriptFunction FindNewObjectives() { mixin(MGF("mFindNewObjectives", "Function UTGame.UTGame.FindNewObjectives")); }
			ScriptFunction NotifyNavigationChanged() { mixin(MGF("mNotifyNavigationChanged", "Function UTGame.UTGame.NotifyNavigationChanged")); }
			ScriptFunction ParseKillMessage() { mixin(MGF("mParseKillMessage", "Function UTGame.UTGame.ParseKillMessage")); }
			ScriptFunction SkipPlaySound() { mixin(MGF("mSkipPlaySound", "Function UTGame.UTGame.SkipPlaySound")); }
			ScriptFunction SetGameSpeed() { mixin(MGF("mSetGameSpeed", "Function UTGame.UTGame.SetGameSpeed")); }
			ScriptFunction BroadcastDeathMessage() { mixin(MGF("mBroadcastDeathMessage", "Function UTGame.UTGame.BroadcastDeathMessage")); }
			ScriptFunction ScoreKill() { mixin(MGF("mScoreKill", "Function UTGame.UTGame.ScoreKill")); }
			ScriptFunction AdjustSkill() { mixin(MGF("mAdjustSkill", "Function UTGame.UTGame.AdjustSkill")); }
			ScriptFunction Killed() { mixin(MGF("mKilled", "Function UTGame.UTGame.Killed")); }
			ScriptFunction InitGame() { mixin(MGF("mInitGame", "Function UTGame.UTGame.InitGame")); }
			ScriptFunction GenericPlayerInitialization() { mixin(MGF("mGenericPlayerInitialization", "Function UTGame.UTGame.GenericPlayerInitialization")); }
			ScriptFunction SetPause() { mixin(MGF("mSetPause", "Function UTGame.UTGame.SetPause")); }
			ScriptFunction LevelRecommendedPlayers() { mixin(MGF("mLevelRecommendedPlayers", "Function UTGame.UTGame.LevelRecommendedPlayers")); }
			ScriptFunction Login() { mixin(MGF("mLogin", "Function UTGame.UTGame.Login")); }
			ScriptFunction ShouldRespawn() { mixin(MGF("mShouldRespawn", "Function UTGame.UTGame.ShouldRespawn")); }
			ScriptFunction WantFastSpawnFor() { mixin(MGF("mWantFastSpawnFor", "Function UTGame.UTGame.WantFastSpawnFor")); }
			ScriptFunction SpawnWait() { mixin(MGF("mSpawnWait", "Function UTGame.UTGame.SpawnWait")); }
			ScriptFunction RestartGame() { mixin(MGF("mRestartGame", "Function UTGame.UTGame.RestartGame")); }
			ScriptFunction CheckEndGame() { mixin(MGF("mCheckEndGame", "Function UTGame.UTGame.CheckEndGame")); }
			ScriptFunction SetEndGameFocus() { mixin(MGF("mSetEndGameFocus", "Function UTGame.UTGame.SetEndGameFocus")); }
			ScriptFunction AtCapacity() { mixin(MGF("mAtCapacity", "Function UTGame.UTGame.AtCapacity")); }
			ScriptFunction PostLogin() { mixin(MGF("mPostLogin", "Function UTGame.UTGame.PostLogin")); }
			ScriptFunction UpdateGameSettingsCounts() { mixin(MGF("mUpdateGameSettingsCounts", "Function UTGame.UTGame.UpdateGameSettingsCounts")); }
			ScriptFunction AssignHoverboard() { mixin(MGF("mAssignHoverboard", "Function UTGame.UTGame.AssignHoverboard")); }
			ScriptFunction GetHandicapNeed() { mixin(MGF("mGetHandicapNeed", "Function UTGame.UTGame.GetHandicapNeed")); }
			ScriptFunction RestartPlayer() { mixin(MGF("mRestartPlayer", "Function UTGame.UTGame.RestartPlayer")); }
			ScriptFunction CampaignSkillAdjust() { mixin(MGF("mCampaignSkillAdjust", "Function UTGame.UTGame.CampaignSkillAdjust")); }
			ScriptFunction AddDefaultInventory() { mixin(MGF("mAddDefaultInventory", "Function UTGame.UTGame.AddDefaultInventory")); }
			ScriptFunction CanSpectate() { mixin(MGF("mCanSpectate", "Function UTGame.UTGame.CanSpectate")); }
			ScriptFunction ChangeName() { mixin(MGF("mChangeName", "Function UTGame.UTGame.ChangeName")); }
			ScriptFunction DiscardInventory() { mixin(MGF("mDiscardInventory", "Function UTGame.UTGame.DiscardInventory")); }
			ScriptFunction Logout() { mixin(MGF("mLogout", "Function UTGame.UTGame.Logout")); }
			ScriptFunction KillBots() { mixin(MGF("mKillBots", "Function UTGame.UTGame.KillBots")); }
			ScriptFunction KillOthers() { mixin(MGF("mKillOthers", "Function UTGame.UTGame.KillOthers")); }
			ScriptFunction KillThis() { mixin(MGF("mKillThis", "Function UTGame.UTGame.KillThis")); }
			ScriptFunction KillBot() { mixin(MGF("mKillBot", "Function UTGame.UTGame.KillBot")); }
			ScriptFunction NeedPlayers() { mixin(MGF("mNeedPlayers", "Function UTGame.UTGame.NeedPlayers")); }
			ScriptFunction AddBot() { mixin(MGF("mAddBot", "Function UTGame.UTGame.AddBot")); }
			ScriptFunction SpawnBot() { mixin(MGF("mSpawnBot", "Function UTGame.UTGame.SpawnBot")); }
			ScriptFunction InitializeBot() { mixin(MGF("mInitializeBot", "Function UTGame.UTGame.InitializeBot")); }
			ScriptFunction InitGameReplicationInfo() { mixin(MGF("mInitGameReplicationInfo", "Function UTGame.UTGame.InitGameReplicationInfo")); }
			ScriptFunction GetMapTypeRule() { mixin(MGF("mGetMapTypeRule", "Function UTGame.UTGame.GetMapTypeRule")); }
			ScriptFunction GetEndGameConditionRule() { mixin(MGF("mGetEndGameConditionRule", "Function UTGame.UTGame.GetEndGameConditionRule")); }
			ScriptFunction NotifySpree() { mixin(MGF("mNotifySpree", "Function UTGame.UTGame.NotifySpree")); }
			ScriptFunction EndSpree() { mixin(MGF("mEndSpree", "Function UTGame.UTGame.EndSpree")); }
			ScriptFunction UpdateGameplayMuteList() { mixin(MGF("mUpdateGameplayMuteList", "Function UTGame.UTGame.UpdateGameplayMuteList")); }
			ScriptFunction SetupPlayerMuteList() { mixin(MGF("mSetupPlayerMuteList", "Function UTGame.UTGame.SetupPlayerMuteList")); }
			ScriptFunction RemovePlayerFromMuteLists() { mixin(MGF("mRemovePlayerFromMuteLists", "Function UTGame.UTGame.RemovePlayerFromMuteLists")); }
			ScriptFunction ResetAllPlayerMuteListsToSpectatorChannel() { mixin(MGF("mResetAllPlayerMuteListsToSpectatorChannel", "Function UTGame.UTGame.ResetAllPlayerMuteListsToSpectatorChannel")); }
			ScriptFunction StartMatch() { mixin(MGF("mStartMatch", "Function UTGame.UTGame.StartMatch")); }
			ScriptFunction EndGame() { mixin(MGF("mEndGame", "Function UTGame.UTGame.EndGame")); }
			ScriptFunction EndLogging() { mixin(MGF("mEndLogging", "Function UTGame.UTGame.EndLogging")); }
			ScriptFunction FindPlayerStart() { mixin(MGF("mFindPlayerStart", "Function UTGame.UTGame.FindPlayerStart")); }
			ScriptFunction DominatingVictory() { mixin(MGF("mDominatingVictory", "Function UTGame.UTGame.DominatingVictory")); }
			ScriptFunction IsAWinner() { mixin(MGF("mIsAWinner", "Function UTGame.UTGame.IsAWinner")); }
			ScriptFunction PlayEndOfMatchMessage() { mixin(MGF("mPlayEndOfMatchMessage", "Function UTGame.UTGame.PlayEndOfMatchMessage")); }
			ScriptFunction PlayRegularEndOfMatchMessage() { mixin(MGF("mPlayRegularEndOfMatchMessage", "Function UTGame.UTGame.PlayRegularEndOfMatchMessage")); }
			ScriptFunction PlayStartupMessage() { mixin(MGF("mPlayStartupMessage", "Function UTGame.UTGame.PlayStartupMessage")); }
			ScriptFunction EndRound() { mixin(MGF("mEndRound", "Function UTGame.UTGame.EndRound")); }
			ScriptFunction MatchIsInProgress() { mixin(MGF("mMatchIsInProgress", "Function UTGame.UTGame.MatchIsInProgress")); }
			ScriptFunction AddInitialBots() { mixin(MGF("mAddInitialBots", "Function UTGame.UTGame.AddInitialBots")); }
			ScriptFunction CalculatedNetSpeed() { mixin(MGF("mCalculatedNetSpeed", "Function UTGame.UTGame.CalculatedNetSpeed")); }
			ScriptFunction IsConsoleDedicatedServer() { mixin(MGF("mIsConsoleDedicatedServer", "Function UTGame.UTGame.IsConsoleDedicatedServer")); }
			ScriptFunction ChoosePlayerStart() { mixin(MGF("mChoosePlayerStart", "Function UTGame.UTGame.ChoosePlayerStart")); }
			ScriptFunction RatePlayerStart() { mixin(MGF("mRatePlayerStart", "Function UTGame.UTGame.RatePlayerStart")); }
			ScriptFunction CheckMaxLives() { mixin(MGF("mCheckMaxLives", "Function UTGame.UTGame.CheckMaxLives")); }
			ScriptFunction CheckScore() { mixin(MGF("mCheckScore", "Function UTGame.UTGame.CheckScore")); }
			ScriptFunction RegisterVehicle() { mixin(MGF("mRegisterVehicle", "Function UTGame.UTGame.RegisterVehicle")); }
			ScriptFunction ActivateVehicleFactory() { mixin(MGF("mActivateVehicleFactory", "Function UTGame.UTGame.ActivateVehicleFactory")); }
			ScriptFunction ViewObjective() { mixin(MGF("mViewObjective", "Function UTGame.UTGame.ViewObjective")); }
			ScriptFunction AddMutator() { mixin(MGF("mAddMutator", "Function UTGame.UTGame.AddMutator")); }
			ScriptFunction AllowClientToTeleport() { mixin(MGF("mAllowClientToTeleport", "Function UTGame.UTGame.AllowClientToTeleport")); }
			ScriptFunction ShowPathTo() { mixin(MGF("mShowPathTo", "Function UTGame.UTGame.ShowPathTo")); }
			ScriptFunction GetSeamlessTravelActorList() { mixin(MGF("mGetSeamlessTravelActorList", "Function UTGame.UTGame.GetSeamlessTravelActorList")); }
			ScriptFunction PostSeamlessTravel() { mixin(MGF("mPostSeamlessTravel", "Function UTGame.UTGame.PostSeamlessTravel")); }
			ScriptFunction HandleSeamlessTravelPlayer() { mixin(MGF("mHandleSeamlessTravelPlayer", "Function UTGame.UTGame.HandleSeamlessTravelPlayer")); }
			ScriptFunction GetBaseUTMutator() { mixin(MGF("mGetBaseUTMutator", "Function UTGame.UTGame.GetBaseUTMutator")); }
			ScriptFunction ProcessSpeechRecognition() { mixin(MGF("mProcessSpeechRecognition", "Function UTGame.UTGame.ProcessSpeechRecognition")); }
			ScriptFunction WriteOnlinePlayerScores() { mixin(MGF("mWriteOnlinePlayerScores", "Function UTGame.UTGame.WriteOnlinePlayerScores")); }
			ScriptFunction GetCurrentMapCycleIndex() { mixin(MGF("mGetCurrentMapCycleIndex", "Function UTGame.UTGame.GetCurrentMapCycleIndex")); }
			ScriptFunction GetNextMap() { mixin(MGF("mGetNextMap", "Function UTGame.UTGame.GetNextMap")); }
			ScriptFunction ProcessServerTravel() { mixin(MGF("mProcessServerTravel", "Function UTGame.UTGame.ProcessServerTravel")); }
			ScriptFunction ContinueSeamlessTravel() { mixin(MGF("mContinueSeamlessTravel", "Function UTGame.UTGame.ContinueSeamlessTravel")); }
			ScriptFunction GetEndOfMatchRules() { mixin(MGF("mGetEndOfMatchRules", "Function UTGame.UTGame.GetEndOfMatchRules")); }
			ScriptFunction GetLocationFor() { mixin(MGF("mGetLocationFor", "Function UTGame.UTGame.GetLocationFor")); }
			ScriptFunction AllowCheats() { mixin(MGF("mAllowCheats", "Function UTGame.UTGame.AllowCheats")); }
			ScriptFunction UpdateGameSettings() { mixin(MGF("mUpdateGameSettings", "Function UTGame.UTGame.UpdateGameSettings")); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UTGame.UTGame.GameMapCycle")); }
		@property final auto ref
		{
			ScriptArray!(ScriptString) Maps() { mixin(MGPS("ScriptArray!(ScriptString)", 8)); }
			ScriptName GameClassName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	struct ActiveBotInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UTGame.UTGame.ActiveBotInfo")); }
		@property final
		{
			@property final auto ref ScriptString BotName() { mixin(MGPS("ScriptString", 0)); }
			bool bInUse() { mixin(MGBPS(12, 0x1)); }
			bool bInUse(bool val) { mixin(MSBPS(12, 0x1)); }
		}
	}
	static struct PendingMatch
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State UTGame.UTGame.PendingMatch")); }
	}
	static struct MatchInProgress
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State UTGame.UTGame.MatchInProgress")); }
	}
	static struct MatchOver
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State UTGame.UTGame.MatchOver")); }
	}
	static struct RoundOver
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State UTGame.UTGame.RoundOver")); }
	}
	@property final
	{
		auto ref
		{
			UTVehicle VehicleList() { mixin(MGPC("UTVehicle", 1080)); }
			int ResetTimeDelay() { mixin(MGPC("int", 1076)); }
			int WarmupTime() { mixin(MGPC("int", 956)); }
			ScriptArray!(ScriptClass) DefaultInventory() { mixin(MGPC("ScriptArray!(ScriptClass)", 1100)); }
			ScriptArray!(ScriptString) MapPrefixes() { mixin(MGPC("ScriptArray!(ScriptString)", 1116)); }
			ScriptArray!(UTGame.GameMapCycle) GameSpecificMapCycles() { mixin(MGPC("ScriptArray!(UTGame.GameMapCycle)", 1148)); }
			ScriptArray!(UTGame.ActiveBotInfo) ActiveBots() { mixin(MGPC("ScriptArray!(UTGame.ActiveBotInfo)", 1164)); }
			// WARNING: Property 'GameplayEventsWriter' has the same name as a defined type!
			ScriptString GameplayEventsWriterClassName() { mixin(MGPC("ScriptString", 1240)); }
			ScriptName MidgameScorePanelTag() { mixin(MGPC("ScriptName", 1232)); }
			Pawn Sniper() { mixin(MGPC("Pawn", 1228)); }
			float LastManDownTime() { mixin(MGPC("float", 1224)); }
			float LastEncouragementTime() { mixin(MGPC("float", 1220)); }
			SpeechRecognition SpeechRecognitionData() { mixin(MGPC("SpeechRecognition", 1216)); }
			ScriptString EndOfMatchRulesTemplateStr_Time() { mixin(MGPC("ScriptString", 1204)); }
			ScriptString EndOfMatchRulesTemplateStr_ScoringSingle() { mixin(MGPC("ScriptString", 1192)); }
			ScriptString EndOfMatchRulesTemplateStr_Scoring() { mixin(MGPC("ScriptString", 1180)); }
			NavigationPoint ScriptedStartSpot() { mixin(MGPC("NavigationPoint", 1176)); }
			int MapCycleIndex() { mixin(MGPC("int", 1160)); }
			ScriptClass BotClass() { mixin(MGPC("ScriptClass", 1144)); }
			ScriptString DemoPrefix() { mixin(MGPC("ScriptString", 1132)); }
			ScriptClass ConsolePlayerControllerClass() { mixin(MGPC("ScriptClass", 1128)); }
			ScriptClass VictoryMessageClass() { mixin(MGPC("ScriptClass", 1112)); }
			ScriptString EnemyRosterName() { mixin(MGPC("ScriptString", 1088)); }
			UTTeamInfo EnemyRoster() { mixin(MGPC("UTTeamInfo", 1084)); }
			int ResetCountDown() { mixin(MGPC("int", 1072)); }
			Actor EndGameFocus() { mixin(MGPC("Actor", 1068)); }
			ScriptString GameUMenuType() { mixin(MGPC("ScriptString", 1056)); }
			ScriptString RulesMenuType() { mixin(MGPC("ScriptString", 1044)); }
			int EndMessageCounter() { mixin(MGPC("int", 1040)); }
			int EndMessageWait() { mixin(MGPC("int", 1036)); }
			float EndTime() { mixin(MGPC("float", 1032)); }
			NavigationPoint LastStartSpot() { mixin(MGPC("NavigationPoint", 1028)); }
			NavigationPoint LastPlayerStartSpot() { mixin(MGPC("NavigationPoint", 1024)); }
			int PlayerDeaths() { mixin(MGPC("int", 1020)); }
			int PlayerKills() { mixin(MGPC("int", 1016)); }
			float AdjustedDifficulty() { mixin(MGPC("float", 1012)); }
			int CountDown() { mixin(MGPC("int", 1008)); }
			int PendingMatchElapsedTime() { mixin(MGPC("int", 1004)); }
			int LateEntryLives() { mixin(MGPC("int", 1000)); }
			int DefaultMaxLives() { mixin(MGPC("int", 996)); }
			float SpawnProtectionTime() { mixin(MGPC("float", 992)); }
			int DesiredPlayerCount() { mixin(MGPC("int", 988)); }
			ubyte WeaponTauntUsed() { mixin(MGPC("ubyte", 965)); }
			ubyte StartupStage() { mixin(MGPC("ubyte", 964)); }
			int WarmupRemaining() { mixin(MGPC("int", 960)); }
			int RestartWait() { mixin(MGPC("int", 952)); }
			int MinNetPlayers() { mixin(MGPC("int", 948)); }
			int ClientProcessingTimeout() { mixin(MGPC("int", 944)); }
			int NetWait() { mixin(MGPC("int", 940)); }
			float BotRatio() { mixin(MGPC("float", 936)); }
			float EndTimeDelay() { mixin(MGPC("float", 932)); }
			int ServerSkillLevel() { mixin(MGPC("int", 928)); }
			ScriptString Description() { mixin(MGPC("ScriptString", 916)); }
			ScriptString Acronym() { mixin(MGPC("ScriptString", 904)); }
		}
		bool bWarmupRound() { mixin(MGBPC(896, 0x1000)); }
		bool bWarmupRound(bool val) { mixin(MSBPC(896, 0x1000)); }
		bool bGivePhysicsGun() { mixin(MGBPC(900, 0x40)); }
		bool bGivePhysicsGun(bool val) { mixin(MSBPC(900, 0x40)); }
		bool bLogGameplayEvents() { mixin(MGBPC(900, 0x20)); }
		bool bLogGameplayEvents(bool val) { mixin(MSBPC(900, 0x20)); }
		bool bUseClassicHUD() { mixin(MGBPC(900, 0x10)); }
		bool bUseClassicHUD(bool val) { mixin(MSBPC(900, 0x10)); }
		bool bIgnoreTeamForVoiceChat() { mixin(MGBPC(900, 0x8)); }
		bool bIgnoreTeamForVoiceChat(bool val) { mixin(MSBPC(900, 0x8)); }
		bool bNecrisLocked() { mixin(MGBPC(900, 0x4)); }
		bool bNecrisLocked(bool val) { mixin(MSBPC(900, 0x4)); }
		bool bForceMidGameMenuAtStart() { mixin(MGBPC(900, 0x2)); }
		bool bForceMidGameMenuAtStart(bool val) { mixin(MSBPC(900, 0x2)); }
		bool bMidGameHasMap() { mixin(MGBPC(900, 0x1)); }
		bool bMidGameHasMap(bool val) { mixin(MSBPC(900, 0x1)); }
		bool bPlayedOneKill() { mixin(MGBPC(896, 0x80000000)); }
		bool bPlayedOneKill(bool val) { mixin(MSBPC(896, 0x80000000)); }
		bool bPlayedFiveKills() { mixin(MGBPC(896, 0x40000000)); }
		bool bPlayedFiveKills(bool val) { mixin(MSBPC(896, 0x40000000)); }
		bool bPlayedTenKills() { mixin(MGBPC(896, 0x20000000)); }
		bool bPlayedTenKills(bool val) { mixin(MSBPC(896, 0x20000000)); }
		bool bScoreDeaths() { mixin(MGBPC(896, 0x10000000)); }
		bool bScoreDeaths(bool val) { mixin(MSBPC(896, 0x10000000)); }
		bool bAllowKeyboardAndMouse() { mixin(MGBPC(896, 0x8000000)); }
		bool bAllowKeyboardAndMouse(bool val) { mixin(MSBPC(896, 0x8000000)); }
		bool bConsoleServer() { mixin(MGBPC(896, 0x4000000)); }
		bool bConsoleServer(bool val) { mixin(MSBPC(896, 0x4000000)); }
		bool bAllowHoverboard() { mixin(MGBPC(896, 0x2000000)); }
		bool bAllowHoverboard(bool val) { mixin(MSBPC(896, 0x2000000)); }
		bool bStartWithLockerWeaps() { mixin(MGBPC(896, 0x1000000)); }
		bool bStartWithLockerWeaps(bool val) { mixin(MSBPC(896, 0x1000000)); }
		bool bUndrivenVehicleDamage() { mixin(MGBPC(896, 0x800000)); }
		bool bUndrivenVehicleDamage(bool val) { mixin(MSBPC(896, 0x800000)); }
		bool bDemoMode() { mixin(MGBPC(896, 0x400000)); }
		bool bDemoMode(bool val) { mixin(MSBPC(896, 0x400000)); }
		bool bMustJoinBeforeStart() { mixin(MGBPC(896, 0x200000)); }
		bool bMustJoinBeforeStart(bool val) { mixin(MSBPC(896, 0x200000)); }
		bool bPlayerBecameActive() { mixin(MGBPC(896, 0x100000)); }
		bool bPlayerBecameActive(bool val) { mixin(MSBPC(896, 0x100000)); }
		bool bMustHaveMultiplePlayers() { mixin(MGBPC(896, 0x80000)); }
		bool bMustHaveMultiplePlayers(bool val) { mixin(MSBPC(896, 0x80000)); }
		bool bOverTimeBroadcast() { mixin(MGBPC(896, 0x40000)); }
		bool bOverTimeBroadcast(bool val) { mixin(MSBPC(896, 0x40000)); }
		bool bFinalStartup() { mixin(MGBPC(896, 0x20000)); }
		bool bFinalStartup(bool val) { mixin(MSBPC(896, 0x20000)); }
		bool bStartedCountDown() { mixin(MGBPC(896, 0x10000)); }
		bool bStartedCountDown(bool val) { mixin(MSBPC(896, 0x10000)); }
		bool bSkipPlaySound() { mixin(MGBPC(896, 0x8000)); }
		bool bSkipPlaySound(bool val) { mixin(MSBPC(896, 0x8000)); }
		bool bQuickStart() { mixin(MGBPC(896, 0x4000)); }
		bool bQuickStart(bool val) { mixin(MSBPC(896, 0x4000)); }
		bool bFirstBlood() { mixin(MGBPC(896, 0x2000)); }
		bool bFirstBlood(bool val) { mixin(MSBPC(896, 0x2000)); }
		bool bShouldWaitForNetPlayers() { mixin(MGBPC(896, 0x800)); }
		bool bShouldWaitForNetPlayers(bool val) { mixin(MSBPC(896, 0x800)); }
		bool bWaitForNetPlayers() { mixin(MGBPC(896, 0x400)); }
		bool bWaitForNetPlayers(bool val) { mixin(MSBPC(896, 0x400)); }
		bool bTempForceRespawn() { mixin(MGBPC(896, 0x200)); }
		bool bTempForceRespawn(bool val) { mixin(MSBPC(896, 0x200)); }
		bool bForceRespawn() { mixin(MGBPC(896, 0x100)); }
		bool bForceRespawn(bool val) { mixin(MSBPC(896, 0x100)); }
		bool bPlayersMustBeReady() { mixin(MGBPC(896, 0x80)); }
		bool bPlayersMustBeReady(bool val) { mixin(MSBPC(896, 0x80)); }
		bool bAutoNumBots() { mixin(MGBPC(896, 0x40)); }
		bool bAutoNumBots(bool val) { mixin(MSBPC(896, 0x40)); }
		bool bCustomBots() { mixin(MGBPC(896, 0x20)); }
		bool bCustomBots(bool val) { mixin(MSBPC(896, 0x20)); }
		bool bPlayersVsBots() { mixin(MGBPC(896, 0x10)); }
		bool bPlayersVsBots(bool val) { mixin(MSBPC(896, 0x10)); }
		bool bSoaking() { mixin(MGBPC(896, 0x8)); }
		bool bSoaking(bool val) { mixin(MSBPC(896, 0x8)); }
		bool bTeamScoreRounds() { mixin(MGBPC(896, 0x4)); }
		bool bTeamScoreRounds(bool val) { mixin(MSBPC(896, 0x4)); }
		bool bWeaponStay() { mixin(MGBPC(896, 0x2)); }
		bool bWeaponStay(bool val) { mixin(MSBPC(896, 0x2)); }
		bool bExportMenuData() { mixin(MGBPC(896, 0x1)); }
		bool bExportMenuData(bool val) { mixin(MSBPC(896, 0x1)); }
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
	UTTeamInfo GetBotTeam(int* TeamBots = null, bool* bUseTeamIndex = null, int* TeamIndex = null)
	{
		ubyte params[16];
		params[] = 0;
		if (TeamBots !is null)
			*cast(int*)params.ptr = *TeamBots;
		if (bUseTeamIndex !is null)
			*cast(bool*)&params[4] = *bUseTeamIndex;
		if (TeamIndex !is null)
			*cast(int*)&params[8] = *TeamIndex;
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
	void InitGame(ScriptString Options, ref ScriptString ErrorMessage)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitGame, params.ptr, cast(void*)0);
		ErrorMessage = *cast(ScriptString*)&params[12];
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
	int LevelRecommendedPlayers()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.LevelRecommendedPlayers, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
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
	void DiscardInventory(Pawn Other, Controller* Killer = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		if (Killer !is null)
			*cast(Controller*)&params[4] = *Killer;
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
	UTBot AddBot(ScriptString* BotName = null, bool* bUseTeamIndex = null, int* TeamIndex = null)
	{
		ubyte params[24];
		params[] = 0;
		if (BotName !is null)
			*cast(ScriptString*)params.ptr = *BotName;
		if (bUseTeamIndex !is null)
			*cast(bool*)&params[12] = *bUseTeamIndex;
		if (TeamIndex !is null)
			*cast(int*)&params[16] = *TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddBot, params.ptr, cast(void*)0);
		return *cast(UTBot*)&params[20];
	}
	UTBot SpawnBot(ScriptString* BotName = null, bool* bUseTeamIndex = null, int* TeamIndex = null)
	{
		ubyte params[24];
		params[] = 0;
		if (BotName !is null)
			*cast(ScriptString*)params.ptr = *BotName;
		if (bUseTeamIndex !is null)
			*cast(bool*)&params[12] = *bUseTeamIndex;
		if (TeamIndex !is null)
			*cast(int*)&params[16] = *TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnBot, params.ptr, cast(void*)0);
		return *cast(UTBot*)&params[20];
	}
	void InitializeBot(UTBot NewBot, UTTeamInfo BotTeam, ref in UTCharInfo.CharacterInfo BotInfo)
	{
		ubyte params[120];
		params[] = 0;
		*cast(UTBot*)params.ptr = NewBot;
		*cast(UTTeamInfo*)&params[4] = BotTeam;
		*cast(UTCharInfo.CharacterInfo*)&params[8] = cast(UTCharInfo.CharacterInfo)BotInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeBot, params.ptr, cast(void*)0);
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
	void AddMutator(ScriptString mutname, bool* bUserAdded = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = mutname;
		if (bUserAdded !is null)
			*cast(bool*)&params[12] = *bUserAdded;
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
	void GetSeamlessTravelActorList(bool bToEntry, ref ScriptArray!(Actor) ActorList)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bToEntry;
		*cast(ScriptArray!(Actor)*)&params[4] = ActorList;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSeamlessTravelActorList, params.ptr, cast(void*)0);
		ActorList = *cast(ScriptArray!(Actor)*)&params[4];
	}
	void PostSeamlessTravel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostSeamlessTravel, cast(void*)0, cast(void*)0);
	}
	void HandleSeamlessTravelPlayer(ref Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandleSeamlessTravelPlayer, params.ptr, cast(void*)0);
		C = *cast(Controller*)params.ptr;
	}
	UTMutator GetBaseUTMutator()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBaseUTMutator, params.ptr, cast(void*)0);
		return *cast(UTMutator*)params.ptr;
	}
	void ProcessSpeechRecognition(UTPlayerController Speaker, ref in ScriptArray!(OnlineSubsystem.SpeechRecognizedWord) Words)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = Speaker;
		*cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4] = cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord))Words;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessSpeechRecognition, params.ptr, cast(void*)0);
	}
	void WriteOnlinePlayerScores()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.WriteOnlinePlayerScores, cast(void*)0, cast(void*)0);
	}
	int GetCurrentMapCycleIndex(ref in ScriptArray!(ScriptString) MapList)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = cast(ScriptArray!(ScriptString))MapList;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentMapCycleIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	ScriptString GetNextMap()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNextMap, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
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
	bool GetLocationFor(Pawn StatusPawn, ref Actor LocationObject, ref int MessageIndex, int LocationSpeechOffset)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = StatusPawn;
		*cast(Actor*)&params[4] = LocationObject;
		*cast(int*)&params[8] = MessageIndex;
		*cast(int*)&params[12] = LocationSpeechOffset;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLocationFor, params.ptr, cast(void*)0);
		LocationObject = *cast(Actor*)&params[4];
		MessageIndex = *cast(int*)&params[8];
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
