module UnrealScript.UTGame.UTTeamGame;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.AIController;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.UTGame.UTDeathmatch;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.PlayerStart;
import UnrealScript.UTGame.UTPlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.UTGame.UTTeamInfo;
import UnrealScript.UTGame.UTGameObjective;
import UnrealScript.UTGame.UTBot;
import UnrealScript.Engine.TeamInfo;

extern(C++) interface UTTeamGame : UTDeathmatch
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTTeamGame")()); }
	private static __gshared UTTeamGame mDefaultProperties;
	@property final static UTTeamGame DefaultProperties() { mixin(MGDPC!(UTTeamGame, "UTTeamGame UTGame.Default__UTTeamGame")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPreBeginPlay;
			ScriptFunction mPostLogin;
			ScriptFunction mFindNewObjectives;
			ScriptFunction mCreateTeam;
			ScriptFunction mGetHandicapNeed;
			ScriptFunction mGetBotTeam;
			ScriptFunction mLevelRecommendedPlayers;
			ScriptFunction mCheckMaxLives;
			ScriptFunction mInitGame;
			ScriptFunction mTooManyBots;
			ScriptFunction mNotifyKilled;
			ScriptFunction mCheckEndGame;
			ScriptFunction mSetEndGameFocus;
			ScriptFunction mCanSpectate;
			ScriptFunction mRestartGame;
			ScriptFunction mPickTeam;
			ScriptFunction mChangeTeam;
			ScriptFunction mSetTeam;
			ScriptFunction mRatePlayerStart;
			ScriptFunction mCheckScore;
			ScriptFunction mFindVictimsTarget;
			ScriptFunction mNearGoal;
			ScriptFunction mScoreKill;
			ScriptFunction mCampaignSkillAdjust;
			ScriptFunction mAdjustSkill;
			ScriptFunction mSendFlagKillMessage;
			ScriptFunction mDominatingVictory;
			ScriptFunction mIsAWinner;
			ScriptFunction mIsWinningTeam;
			ScriptFunction mPlayRegularEndOfMatchMessage;
			ScriptFunction mAnnounceScore;
			ScriptFunction mOverridePRI;
			ScriptFunction mAllowClientToTeleport;
			ScriptFunction mShowPathTo;
			ScriptFunction mGetSeamlessTravelActorList;
			ScriptFunction mLogout;
			ScriptFunction mHandleSeamlessTravelPlayer;
			ScriptFunction mParseSpeechRecipients;
			ScriptFunction mProcessSpeechOrders;
			ScriptFunction mProcessSpeechRecognition;
		}
		public @property static final
		{
			ScriptFunction PreBeginPlay() { mixin(MGF!("mPreBeginPlay", "Function UTGame.UTTeamGame.PreBeginPlay")()); }
			ScriptFunction PostLogin() { mixin(MGF!("mPostLogin", "Function UTGame.UTTeamGame.PostLogin")()); }
			ScriptFunction FindNewObjectives() { mixin(MGF!("mFindNewObjectives", "Function UTGame.UTTeamGame.FindNewObjectives")()); }
			ScriptFunction CreateTeam() { mixin(MGF!("mCreateTeam", "Function UTGame.UTTeamGame.CreateTeam")()); }
			ScriptFunction GetHandicapNeed() { mixin(MGF!("mGetHandicapNeed", "Function UTGame.UTTeamGame.GetHandicapNeed")()); }
			ScriptFunction GetBotTeam() { mixin(MGF!("mGetBotTeam", "Function UTGame.UTTeamGame.GetBotTeam")()); }
			ScriptFunction LevelRecommendedPlayers() { mixin(MGF!("mLevelRecommendedPlayers", "Function UTGame.UTTeamGame.LevelRecommendedPlayers")()); }
			ScriptFunction CheckMaxLives() { mixin(MGF!("mCheckMaxLives", "Function UTGame.UTTeamGame.CheckMaxLives")()); }
			ScriptFunction InitGame() { mixin(MGF!("mInitGame", "Function UTGame.UTTeamGame.InitGame")()); }
			ScriptFunction TooManyBots() { mixin(MGF!("mTooManyBots", "Function UTGame.UTTeamGame.TooManyBots")()); }
			ScriptFunction NotifyKilled() { mixin(MGF!("mNotifyKilled", "Function UTGame.UTTeamGame.NotifyKilled")()); }
			ScriptFunction CheckEndGame() { mixin(MGF!("mCheckEndGame", "Function UTGame.UTTeamGame.CheckEndGame")()); }
			ScriptFunction SetEndGameFocus() { mixin(MGF!("mSetEndGameFocus", "Function UTGame.UTTeamGame.SetEndGameFocus")()); }
			ScriptFunction CanSpectate() { mixin(MGF!("mCanSpectate", "Function UTGame.UTTeamGame.CanSpectate")()); }
			ScriptFunction RestartGame() { mixin(MGF!("mRestartGame", "Function UTGame.UTTeamGame.RestartGame")()); }
			ScriptFunction PickTeam() { mixin(MGF!("mPickTeam", "Function UTGame.UTTeamGame.PickTeam")()); }
			ScriptFunction ChangeTeam() { mixin(MGF!("mChangeTeam", "Function UTGame.UTTeamGame.ChangeTeam")()); }
			ScriptFunction SetTeam() { mixin(MGF!("mSetTeam", "Function UTGame.UTTeamGame.SetTeam")()); }
			ScriptFunction RatePlayerStart() { mixin(MGF!("mRatePlayerStart", "Function UTGame.UTTeamGame.RatePlayerStart")()); }
			ScriptFunction CheckScore() { mixin(MGF!("mCheckScore", "Function UTGame.UTTeamGame.CheckScore")()); }
			ScriptFunction FindVictimsTarget() { mixin(MGF!("mFindVictimsTarget", "Function UTGame.UTTeamGame.FindVictimsTarget")()); }
			ScriptFunction NearGoal() { mixin(MGF!("mNearGoal", "Function UTGame.UTTeamGame.NearGoal")()); }
			ScriptFunction ScoreKill() { mixin(MGF!("mScoreKill", "Function UTGame.UTTeamGame.ScoreKill")()); }
			ScriptFunction CampaignSkillAdjust() { mixin(MGF!("mCampaignSkillAdjust", "Function UTGame.UTTeamGame.CampaignSkillAdjust")()); }
			ScriptFunction AdjustSkill() { mixin(MGF!("mAdjustSkill", "Function UTGame.UTTeamGame.AdjustSkill")()); }
			ScriptFunction SendFlagKillMessage() { mixin(MGF!("mSendFlagKillMessage", "Function UTGame.UTTeamGame.SendFlagKillMessage")()); }
			ScriptFunction DominatingVictory() { mixin(MGF!("mDominatingVictory", "Function UTGame.UTTeamGame.DominatingVictory")()); }
			ScriptFunction IsAWinner() { mixin(MGF!("mIsAWinner", "Function UTGame.UTTeamGame.IsAWinner")()); }
			ScriptFunction IsWinningTeam() { mixin(MGF!("mIsWinningTeam", "Function UTGame.UTTeamGame.IsWinningTeam")()); }
			ScriptFunction PlayRegularEndOfMatchMessage() { mixin(MGF!("mPlayRegularEndOfMatchMessage", "Function UTGame.UTTeamGame.PlayRegularEndOfMatchMessage")()); }
			ScriptFunction AnnounceScore() { mixin(MGF!("mAnnounceScore", "Function UTGame.UTTeamGame.AnnounceScore")()); }
			ScriptFunction OverridePRI() { mixin(MGF!("mOverridePRI", "Function UTGame.UTTeamGame.OverridePRI")()); }
			ScriptFunction AllowClientToTeleport() { mixin(MGF!("mAllowClientToTeleport", "Function UTGame.UTTeamGame.AllowClientToTeleport")()); }
			ScriptFunction ShowPathTo() { mixin(MGF!("mShowPathTo", "Function UTGame.UTTeamGame.ShowPathTo")()); }
			ScriptFunction GetSeamlessTravelActorList() { mixin(MGF!("mGetSeamlessTravelActorList", "Function UTGame.UTTeamGame.GetSeamlessTravelActorList")()); }
			ScriptFunction Logout() { mixin(MGF!("mLogout", "Function UTGame.UTTeamGame.Logout")()); }
			ScriptFunction HandleSeamlessTravelPlayer() { mixin(MGF!("mHandleSeamlessTravelPlayer", "Function UTGame.UTTeamGame.HandleSeamlessTravelPlayer")()); }
			ScriptFunction ParseSpeechRecipients() { mixin(MGF!("mParseSpeechRecipients", "Function UTGame.UTTeamGame.ParseSpeechRecipients")()); }
			ScriptFunction ProcessSpeechOrders() { mixin(MGF!("mProcessSpeechOrders", "Function UTGame.UTTeamGame.ProcessSpeechOrders")()); }
			ScriptFunction ProcessSpeechRecognition() { mixin(MGF!("mProcessSpeechRecognition", "Function UTGame.UTTeamGame.ProcessSpeechRecognition")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptName FlagKillMessageName() { mixin(MGPC!(ScriptName, 1320)()); }
			float SwapRequestTime() { mixin(MGPC!(float, 1316)()); }
			PlayerController PendingTeamSwap() { mixin(MGPC!(PlayerController, 1312)()); }
			ScriptClass TeamScoreMessageClass() { mixin(MGPC!(ScriptClass, 1308)()); }
			ScriptString TeamFactions() { mixin(MGPC!(ScriptString, 1284)()); }
			ScriptClass TeamAIType() { mixin(MGPC!(ScriptClass, 1276)()); }
			UTTeamInfo Teams() { mixin(MGPC!(UTTeamInfo, 1268)()); }
			float TeammateBoost() { mixin(MGPC!(float, 1264)()); }
			float FriendlyFireScale() { mixin(MGPC!(float, 1260)()); }
		}
		bool bForceAllRed() { mixin(MGBPC!(1256, 0x20)()); }
		bool bForceAllRed(bool val) { mixin(MSBPC!(1256, 0x20)()); }
		bool bScoreVictimsTarget() { mixin(MGBPC!(1256, 0x10)()); }
		bool bScoreVictimsTarget(bool val) { mixin(MSBPC!(1256, 0x10)()); }
		bool bSpawnInTeamArea() { mixin(MGBPC!(1256, 0x8)()); }
		bool bSpawnInTeamArea(bool val) { mixin(MSBPC!(1256, 0x8)()); }
		bool bScoreTeamKills() { mixin(MGBPC!(1256, 0x4)()); }
		bool bScoreTeamKills(bool val) { mixin(MSBPC!(1256, 0x4)()); }
		bool bAllowNonTeamChat() { mixin(MGBPC!(1256, 0x2)()); }
		bool bAllowNonTeamChat(bool val) { mixin(MSBPC!(1256, 0x2)()); }
		bool bPlayersBalanceTeams() { mixin(MGBPC!(1256, 0x1)()); }
		bool bPlayersBalanceTeams(bool val) { mixin(MSBPC!(1256, 0x1)()); }
	}
final:
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
	void PostLogin(PlayerController NewPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = NewPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostLogin, params.ptr, cast(void*)0);
	}
	void FindNewObjectives(UTGameObjective DisabledObjective)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTGameObjective*)params.ptr = DisabledObjective;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindNewObjectives, params.ptr, cast(void*)0);
	}
	void CreateTeam(int TeamIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateTeam, params.ptr, cast(void*)0);
	}
	int GetHandicapNeed(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHandicapNeed, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
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
	int LevelRecommendedPlayers()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.LevelRecommendedPlayers, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool CheckMaxLives(PlayerReplicationInfo Scorer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckMaxLives, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void InitGame(ScriptString Options, ref ScriptString ErrorMessage)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitGame, params.ptr, cast(void*)0);
		*ErrorMessage = *cast(ScriptString*)&params[12];
	}
	bool TooManyBots(Controller botToRemove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = botToRemove;
		(cast(ScriptObject)this).ProcessEvent(Functions.TooManyBots, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void NotifyKilled(Controller Killer, Controller KilledPlayer, Pawn KilledPawn, ScriptClass pDamageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = KilledPlayer;
		*cast(Pawn*)&params[8] = KilledPawn;
		*cast(ScriptClass*)&params[12] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyKilled, params.ptr, cast(void*)0);
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
	bool CanSpectate(PlayerController Viewer, PlayerReplicationInfo ViewTarget)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = Viewer;
		*cast(PlayerReplicationInfo*)&params[4] = ViewTarget;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanSpectate, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void RestartGame()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RestartGame, cast(void*)0, cast(void*)0);
	}
	ubyte PickTeam(ubyte Num, Controller C)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = Num;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.PickTeam, params.ptr, cast(void*)0);
		return params[8];
	}
	bool ChangeTeam(Controller Other, int Num, bool bNewTeam)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		*cast(int*)&params[4] = Num;
		*cast(bool*)&params[8] = bNewTeam;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangeTeam, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void SetTeam(Controller Other, UTTeamInfo NewTeam, bool bNewTeam)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		*cast(UTTeamInfo*)&params[4] = NewTeam;
		*cast(bool*)&params[8] = bNewTeam;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTeam, params.ptr, cast(void*)0);
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
	bool CheckScore(PlayerReplicationInfo Scorer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckScore, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	Pawn FindVictimsTarget(Controller Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindVictimsTarget, params.ptr, cast(void*)0);
		return *cast(Pawn*)&params[4];
	}
	bool NearGoal(Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.NearGoal, params.ptr, cast(void*)0);
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
	void CampaignSkillAdjust(UTBot aBot)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = aBot;
		(cast(ScriptObject)this).ProcessEvent(Functions.CampaignSkillAdjust, params.ptr, cast(void*)0);
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
	void SendFlagKillMessage(Controller Killer, UTPlayerReplicationInfo KillerPRI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(UTPlayerReplicationInfo*)&params[4] = KillerPRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendFlagKillMessage, params.ptr, cast(void*)0);
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
	bool IsWinningTeam(TeamInfo T)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TeamInfo*)params.ptr = T;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsWinningTeam, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PlayRegularEndOfMatchMessage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayRegularEndOfMatchMessage, cast(void*)0, cast(void*)0);
	}
	void AnnounceScore(int ScoringTeam)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ScoringTeam;
		(cast(ScriptObject)this).ProcessEvent(Functions.AnnounceScore, params.ptr, cast(void*)0);
	}
	void OverridePRI(PlayerController PC, PlayerReplicationInfo OldPRI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(PlayerReplicationInfo*)&params[4] = OldPRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.OverridePRI, params.ptr, cast(void*)0);
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
		*ActorList = *cast(ScriptArray!(Actor)*)&params[4];
	}
	void Logout(Controller Exiting)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Exiting;
		(cast(ScriptObject)this).ProcessEvent(Functions.Logout, params.ptr, cast(void*)0);
	}
	void HandleSeamlessTravelPlayer(ref Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandleSeamlessTravelPlayer, params.ptr, cast(void*)0);
		*C = *cast(Controller*)params.ptr;
	}
	void ParseSpeechRecipients(UTPlayerController Speaker, ref const ScriptArray!(OnlineSubsystem.SpeechRecognizedWord) Words, ref ScriptArray!(UTBot) Recipients)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = Speaker;
		*cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4] = Words;
		*cast(ScriptArray!(UTBot)*)&params[16] = Recipients;
		(cast(ScriptObject)this).ProcessEvent(Functions.ParseSpeechRecipients, params.ptr, cast(void*)0);
		*Words = *cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4];
		*Recipients = *cast(ScriptArray!(UTBot)*)&params[16];
	}
	void ProcessSpeechOrders(UTPlayerController Speaker, ref const ScriptArray!(OnlineSubsystem.SpeechRecognizedWord) Words, ref const ScriptArray!(UTBot) Recipients)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = Speaker;
		*cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4] = Words;
		*cast(ScriptArray!(UTBot)*)&params[16] = Recipients;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessSpeechOrders, params.ptr, cast(void*)0);
		*Words = *cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4];
		*Recipients = *cast(ScriptArray!(UTBot)*)&params[16];
	}
	void ProcessSpeechRecognition(UTPlayerController Speaker, ref const ScriptArray!(OnlineSubsystem.SpeechRecognizedWord) Words)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = Speaker;
		*cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4] = Words;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessSpeechRecognition, params.ptr, cast(void*)0);
		*Words = *cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4];
	}
}
