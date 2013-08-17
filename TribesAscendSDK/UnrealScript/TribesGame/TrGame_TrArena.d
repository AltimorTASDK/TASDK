module UnrealScript.TribesGame.TrGame_TrArena;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.TrGame;
import UnrealScript.UTGame.UTTeamInfo;

extern(C++) interface TrGame_TrArena : TrGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrGame_TrArena")()); }
	private static __gshared TrGame_TrArena mDefaultProperties;
	@property final static TrGame_TrArena DefaultProperties() { mixin(MGDPC!(TrGame_TrArena, "TrGame_TrArena TribesGame.Default__TrGame_TrArena")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mApplyServerSettings;
			ScriptFunction mResetScores;
			ScriptFunction mRepopulatePlayerLists;
			ScriptFunction mSetTeam;
			ScriptFunction mLogout;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mResetLevel;
			ScriptFunction mRespawnPlayers;
			ScriptFunction mResetRound;
			ScriptFunction mScoreKill;
			ScriptFunction mCheckScore;
			ScriptFunction mDetermineWinningTeam;
			ScriptFunction mGetRoundWinningTeam;
			ScriptFunction mEndTheRound;
			ScriptFunction mGotoPendingRoundStartTimer;
			ScriptFunction mGetNumRemainingAlivePlayers;
			ScriptFunction mIsBloodEagleOutOfLives;
			ScriptFunction mIsDiamondSwordOutOfLives;
			ScriptFunction mCheckEndGame;
			ScriptFunction mCheckForAutoBalance;
			ScriptFunction mSendMatchCountdown;
			ScriptFunction mAllowRespawn;
			ScriptFunction mOnServerSpawnedPlayer;
			ScriptFunction mGetGameTypeId;
			ScriptFunction mSendMatchOver;
		}
		public @property static final
		{
			ScriptFunction ApplyServerSettings() { mixin(MGF!("mApplyServerSettings", "Function TribesGame.TrGame_TrArena.ApplyServerSettings")()); }
			ScriptFunction ResetScores() { mixin(MGF!("mResetScores", "Function TribesGame.TrGame_TrArena.ResetScores")()); }
			ScriptFunction RepopulatePlayerLists() { mixin(MGF!("mRepopulatePlayerLists", "Function TribesGame.TrGame_TrArena.RepopulatePlayerLists")()); }
			ScriptFunction SetTeam() { mixin(MGF!("mSetTeam", "Function TribesGame.TrGame_TrArena.SetTeam")()); }
			ScriptFunction Logout() { mixin(MGF!("mLogout", "Function TribesGame.TrGame_TrArena.Logout")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrGame_TrArena.PostBeginPlay")()); }
			ScriptFunction ResetLevel() { mixin(MGF!("mResetLevel", "Function TribesGame.TrGame_TrArena.ResetLevel")()); }
			ScriptFunction RespawnPlayers() { mixin(MGF!("mRespawnPlayers", "Function TribesGame.TrGame_TrArena.RespawnPlayers")()); }
			ScriptFunction ResetRound() { mixin(MGF!("mResetRound", "Function TribesGame.TrGame_TrArena.ResetRound")()); }
			ScriptFunction ScoreKill() { mixin(MGF!("mScoreKill", "Function TribesGame.TrGame_TrArena.ScoreKill")()); }
			ScriptFunction CheckScore() { mixin(MGF!("mCheckScore", "Function TribesGame.TrGame_TrArena.CheckScore")()); }
			ScriptFunction DetermineWinningTeam() { mixin(MGF!("mDetermineWinningTeam", "Function TribesGame.TrGame_TrArena.DetermineWinningTeam")()); }
			ScriptFunction GetRoundWinningTeam() { mixin(MGF!("mGetRoundWinningTeam", "Function TribesGame.TrGame_TrArena.GetRoundWinningTeam")()); }
			ScriptFunction EndTheRound() { mixin(MGF!("mEndTheRound", "Function TribesGame.TrGame_TrArena.EndTheRound")()); }
			ScriptFunction GotoPendingRoundStartTimer() { mixin(MGF!("mGotoPendingRoundStartTimer", "Function TribesGame.TrGame_TrArena.GotoPendingRoundStartTimer")()); }
			ScriptFunction GetNumRemainingAlivePlayers() { mixin(MGF!("mGetNumRemainingAlivePlayers", "Function TribesGame.TrGame_TrArena.GetNumRemainingAlivePlayers")()); }
			ScriptFunction IsBloodEagleOutOfLives() { mixin(MGF!("mIsBloodEagleOutOfLives", "Function TribesGame.TrGame_TrArena.IsBloodEagleOutOfLives")()); }
			ScriptFunction IsDiamondSwordOutOfLives() { mixin(MGF!("mIsDiamondSwordOutOfLives", "Function TribesGame.TrGame_TrArena.IsDiamondSwordOutOfLives")()); }
			ScriptFunction CheckEndGame() { mixin(MGF!("mCheckEndGame", "Function TribesGame.TrGame_TrArena.CheckEndGame")()); }
			ScriptFunction CheckForAutoBalance() { mixin(MGF!("mCheckForAutoBalance", "Function TribesGame.TrGame_TrArena.CheckForAutoBalance")()); }
			ScriptFunction SendMatchCountdown() { mixin(MGF!("mSendMatchCountdown", "Function TribesGame.TrGame_TrArena.SendMatchCountdown")()); }
			ScriptFunction AllowRespawn() { mixin(MGF!("mAllowRespawn", "Function TribesGame.TrGame_TrArena.AllowRespawn")()); }
			ScriptFunction OnServerSpawnedPlayer() { mixin(MGF!("mOnServerSpawnedPlayer", "Function TribesGame.TrGame_TrArena.OnServerSpawnedPlayer")()); }
			ScriptFunction GetGameTypeId() { mixin(MGF!("mGetGameTypeId", "Function TribesGame.TrGame_TrArena.GetGameTypeId")()); }
			ScriptFunction SendMatchOver() { mixin(MGF!("mSendMatchOver", "Function TribesGame.TrGame_TrArena.SendMatchOver")()); }
		}
	}
	static struct Constants
	{
		enum MAX_NUM_ARENA_PLAYERS_PER_TEAM = 8;
	}
	static struct MatchInProgress
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrGame_TrArena.MatchInProgress")()); }
	}
	static struct PendingRoundStart
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrGame_TrArena.PendingRoundStart")()); }
	}
	@property final auto ref
	{
		int m_nGoalWonRounds() { mixin(MGPC!(int, 1468)()); }
		ubyte m_bHasTeamBenchedAPlayer() { mixin(MGPC!(ubyte, 1464)()); }
		int m_nNumEnemiesAliveAtLastManStanding() { mixin(MGPC!(int, 1456)()); }
	}
final:
	void ApplyServerSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyServerSettings, cast(void*)0, cast(void*)0);
	}
	void ResetScores()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetScores, cast(void*)0, cast(void*)0);
	}
	void RepopulatePlayerLists()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RepopulatePlayerLists, cast(void*)0, cast(void*)0);
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
	void Logout(Controller Exiting)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Exiting;
		(cast(ScriptObject)this).ProcessEvent(Functions.Logout, params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void ResetLevel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetLevel, cast(void*)0, cast(void*)0);
	}
	void RespawnPlayers()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RespawnPlayers, cast(void*)0, cast(void*)0);
	}
	void ResetRound()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetRound, cast(void*)0, cast(void*)0);
	}
	void ScoreKill(Controller Killer, Controller Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.ScoreKill, params.ptr, cast(void*)0);
	}
	bool CheckScore(PlayerReplicationInfo Scorer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckScore, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	int DetermineWinningTeam()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetermineWinningTeam, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetRoundWinningTeam()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRoundWinningTeam, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void EndTheRound(PlayerReplicationInfo RoundWinner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = RoundWinner;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndTheRound, params.ptr, cast(void*)0);
	}
	void GotoPendingRoundStartTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.GotoPendingRoundStartTimer, cast(void*)0, cast(void*)0);
	}
	int GetNumRemainingAlivePlayers(int TeamIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNumRemainingAlivePlayers, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	bool IsBloodEagleOutOfLives()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsBloodEagleOutOfLives, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsDiamondSwordOutOfLives()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsDiamondSwordOutOfLives, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
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
	void CheckForAutoBalance()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckForAutoBalance, cast(void*)0, cast(void*)0);
	}
	void SendMatchCountdown(int Seconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Seconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendMatchCountdown, params.ptr, cast(void*)0);
	}
	bool AllowRespawn(TrPlayerController TrPC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = TrPC;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowRespawn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void OnServerSpawnedPlayer(TrPlayerController TrPC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = TrPC;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnServerSpawnedPlayer, params.ptr, cast(void*)0);
	}
	int GetGameTypeId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGameTypeId, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void SendMatchOver()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SendMatchOver, cast(void*)0, cast(void*)0);
	}
}
