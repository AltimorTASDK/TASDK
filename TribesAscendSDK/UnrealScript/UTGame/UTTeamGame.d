module UnrealScript.UTGame.UTTeamGame;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTTeamGame")); }
	private static __gshared UTTeamGame mDefaultProperties;
	@property final static UTTeamGame DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTTeamGame)("UTTeamGame UTGame.Default__UTTeamGame")); }
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
			ScriptFunction PreBeginPlay() { return mPreBeginPlay ? mPreBeginPlay : (mPreBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.PreBeginPlay")); }
			ScriptFunction PostLogin() { return mPostLogin ? mPostLogin : (mPostLogin = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.PostLogin")); }
			ScriptFunction FindNewObjectives() { return mFindNewObjectives ? mFindNewObjectives : (mFindNewObjectives = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.FindNewObjectives")); }
			ScriptFunction CreateTeam() { return mCreateTeam ? mCreateTeam : (mCreateTeam = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.CreateTeam")); }
			ScriptFunction GetHandicapNeed() { return mGetHandicapNeed ? mGetHandicapNeed : (mGetHandicapNeed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.GetHandicapNeed")); }
			ScriptFunction GetBotTeam() { return mGetBotTeam ? mGetBotTeam : (mGetBotTeam = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.GetBotTeam")); }
			ScriptFunction LevelRecommendedPlayers() { return mLevelRecommendedPlayers ? mLevelRecommendedPlayers : (mLevelRecommendedPlayers = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.LevelRecommendedPlayers")); }
			ScriptFunction CheckMaxLives() { return mCheckMaxLives ? mCheckMaxLives : (mCheckMaxLives = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.CheckMaxLives")); }
			ScriptFunction InitGame() { return mInitGame ? mInitGame : (mInitGame = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.InitGame")); }
			ScriptFunction TooManyBots() { return mTooManyBots ? mTooManyBots : (mTooManyBots = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.TooManyBots")); }
			ScriptFunction NotifyKilled() { return mNotifyKilled ? mNotifyKilled : (mNotifyKilled = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.NotifyKilled")); }
			ScriptFunction CheckEndGame() { return mCheckEndGame ? mCheckEndGame : (mCheckEndGame = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.CheckEndGame")); }
			ScriptFunction SetEndGameFocus() { return mSetEndGameFocus ? mSetEndGameFocus : (mSetEndGameFocus = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.SetEndGameFocus")); }
			ScriptFunction CanSpectate() { return mCanSpectate ? mCanSpectate : (mCanSpectate = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.CanSpectate")); }
			ScriptFunction RestartGame() { return mRestartGame ? mRestartGame : (mRestartGame = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.RestartGame")); }
			ScriptFunction PickTeam() { return mPickTeam ? mPickTeam : (mPickTeam = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.PickTeam")); }
			ScriptFunction ChangeTeam() { return mChangeTeam ? mChangeTeam : (mChangeTeam = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.ChangeTeam")); }
			ScriptFunction SetTeam() { return mSetTeam ? mSetTeam : (mSetTeam = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.SetTeam")); }
			ScriptFunction RatePlayerStart() { return mRatePlayerStart ? mRatePlayerStart : (mRatePlayerStart = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.RatePlayerStart")); }
			ScriptFunction CheckScore() { return mCheckScore ? mCheckScore : (mCheckScore = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.CheckScore")); }
			ScriptFunction FindVictimsTarget() { return mFindVictimsTarget ? mFindVictimsTarget : (mFindVictimsTarget = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.FindVictimsTarget")); }
			ScriptFunction NearGoal() { return mNearGoal ? mNearGoal : (mNearGoal = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.NearGoal")); }
			ScriptFunction ScoreKill() { return mScoreKill ? mScoreKill : (mScoreKill = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.ScoreKill")); }
			ScriptFunction CampaignSkillAdjust() { return mCampaignSkillAdjust ? mCampaignSkillAdjust : (mCampaignSkillAdjust = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.CampaignSkillAdjust")); }
			ScriptFunction AdjustSkill() { return mAdjustSkill ? mAdjustSkill : (mAdjustSkill = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.AdjustSkill")); }
			ScriptFunction SendFlagKillMessage() { return mSendFlagKillMessage ? mSendFlagKillMessage : (mSendFlagKillMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.SendFlagKillMessage")); }
			ScriptFunction DominatingVictory() { return mDominatingVictory ? mDominatingVictory : (mDominatingVictory = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.DominatingVictory")); }
			ScriptFunction IsAWinner() { return mIsAWinner ? mIsAWinner : (mIsAWinner = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.IsAWinner")); }
			ScriptFunction IsWinningTeam() { return mIsWinningTeam ? mIsWinningTeam : (mIsWinningTeam = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.IsWinningTeam")); }
			ScriptFunction PlayRegularEndOfMatchMessage() { return mPlayRegularEndOfMatchMessage ? mPlayRegularEndOfMatchMessage : (mPlayRegularEndOfMatchMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.PlayRegularEndOfMatchMessage")); }
			ScriptFunction AnnounceScore() { return mAnnounceScore ? mAnnounceScore : (mAnnounceScore = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.AnnounceScore")); }
			ScriptFunction OverridePRI() { return mOverridePRI ? mOverridePRI : (mOverridePRI = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.OverridePRI")); }
			ScriptFunction AllowClientToTeleport() { return mAllowClientToTeleport ? mAllowClientToTeleport : (mAllowClientToTeleport = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.AllowClientToTeleport")); }
			ScriptFunction ShowPathTo() { return mShowPathTo ? mShowPathTo : (mShowPathTo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.ShowPathTo")); }
			ScriptFunction GetSeamlessTravelActorList() { return mGetSeamlessTravelActorList ? mGetSeamlessTravelActorList : (mGetSeamlessTravelActorList = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.GetSeamlessTravelActorList")); }
			ScriptFunction Logout() { return mLogout ? mLogout : (mLogout = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.Logout")); }
			ScriptFunction HandleSeamlessTravelPlayer() { return mHandleSeamlessTravelPlayer ? mHandleSeamlessTravelPlayer : (mHandleSeamlessTravelPlayer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.HandleSeamlessTravelPlayer")); }
			ScriptFunction ParseSpeechRecipients() { return mParseSpeechRecipients ? mParseSpeechRecipients : (mParseSpeechRecipients = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.ParseSpeechRecipients")); }
			ScriptFunction ProcessSpeechOrders() { return mProcessSpeechOrders ? mProcessSpeechOrders : (mProcessSpeechOrders = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.ProcessSpeechOrders")); }
			ScriptFunction ProcessSpeechRecognition() { return mProcessSpeechRecognition ? mProcessSpeechRecognition : (mProcessSpeechRecognition = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamGame.ProcessSpeechRecognition")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptName FlagKillMessageName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1320); }
			float SwapRequestTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1316); }
			PlayerController PendingTeamSwap() { return *cast(PlayerController*)(cast(size_t)cast(void*)this + 1312); }
			ScriptClass TeamScoreMessageClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1308); }
			ScriptString TeamFactions() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1284); }
			ScriptClass TeamAIType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1276); }
			UTTeamInfo Teams() { return *cast(UTTeamInfo*)(cast(size_t)cast(void*)this + 1268); }
			float TeammateBoost() { return *cast(float*)(cast(size_t)cast(void*)this + 1264); }
			float FriendlyFireScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1260); }
		}
		bool bForceAllRed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1256) & 0x20) != 0; }
		bool bForceAllRed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1256) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1256) &= ~0x20; } return val; }
		bool bScoreVictimsTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1256) & 0x10) != 0; }
		bool bScoreVictimsTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1256) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1256) &= ~0x10; } return val; }
		bool bSpawnInTeamArea() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1256) & 0x8) != 0; }
		bool bSpawnInTeamArea(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1256) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1256) &= ~0x8; } return val; }
		bool bScoreTeamKills() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1256) & 0x4) != 0; }
		bool bScoreTeamKills(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1256) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1256) &= ~0x4; } return val; }
		bool bAllowNonTeamChat() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1256) & 0x2) != 0; }
		bool bAllowNonTeamChat(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1256) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1256) &= ~0x2; } return val; }
		bool bPlayersBalanceTeams() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1256) & 0x1) != 0; }
		bool bPlayersBalanceTeams(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1256) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1256) &= ~0x1; } return val; }
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
	void InitGame(ScriptString Options, ScriptString* ErrorMessage)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = *ErrorMessage;
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
	void GetSeamlessTravelActorList(bool bToEntry, ScriptArray!(Actor)* ActorList)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bToEntry;
		*cast(ScriptArray!(Actor)*)&params[4] = *ActorList;
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
	void HandleSeamlessTravelPlayer(Controller* C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = *C;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandleSeamlessTravelPlayer, params.ptr, cast(void*)0);
		*C = *cast(Controller*)params.ptr;
	}
	void ParseSpeechRecipients(UTPlayerController Speaker, ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)* Words, ScriptArray!(UTBot)* Recipients)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = Speaker;
		*cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4] = *Words;
		*cast(ScriptArray!(UTBot)*)&params[16] = *Recipients;
		(cast(ScriptObject)this).ProcessEvent(Functions.ParseSpeechRecipients, params.ptr, cast(void*)0);
		*Words = *cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4];
		*Recipients = *cast(ScriptArray!(UTBot)*)&params[16];
	}
	void ProcessSpeechOrders(UTPlayerController Speaker, ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)* Words, ScriptArray!(UTBot)* Recipients)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = Speaker;
		*cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4] = *Words;
		*cast(ScriptArray!(UTBot)*)&params[16] = *Recipients;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessSpeechOrders, params.ptr, cast(void*)0);
		*Words = *cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4];
		*Recipients = *cast(ScriptArray!(UTBot)*)&params[16];
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
}
