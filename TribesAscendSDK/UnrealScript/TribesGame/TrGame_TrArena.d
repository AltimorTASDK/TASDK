module UnrealScript.TribesGame.TrGame_TrArena;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.TrGame;
import UnrealScript.UTGame.UTTeamInfo;

extern(C++) interface TrGame_TrArena : TrGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGame_TrArena")); }
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
			ScriptFunction ApplyServerSettings() { return mApplyServerSettings ? mApplyServerSettings : (mApplyServerSettings = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrArena.ApplyServerSettings")); }
			ScriptFunction ResetScores() { return mResetScores ? mResetScores : (mResetScores = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrArena.ResetScores")); }
			ScriptFunction RepopulatePlayerLists() { return mRepopulatePlayerLists ? mRepopulatePlayerLists : (mRepopulatePlayerLists = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrArena.RepopulatePlayerLists")); }
			ScriptFunction SetTeam() { return mSetTeam ? mSetTeam : (mSetTeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrArena.SetTeam")); }
			ScriptFunction Logout() { return mLogout ? mLogout : (mLogout = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrArena.Logout")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrArena.PostBeginPlay")); }
			ScriptFunction ResetLevel() { return mResetLevel ? mResetLevel : (mResetLevel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrArena.ResetLevel")); }
			ScriptFunction RespawnPlayers() { return mRespawnPlayers ? mRespawnPlayers : (mRespawnPlayers = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrArena.RespawnPlayers")); }
			ScriptFunction ResetRound() { return mResetRound ? mResetRound : (mResetRound = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrArena.ResetRound")); }
			ScriptFunction ScoreKill() { return mScoreKill ? mScoreKill : (mScoreKill = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrArena.ScoreKill")); }
			ScriptFunction CheckScore() { return mCheckScore ? mCheckScore : (mCheckScore = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrArena.CheckScore")); }
			ScriptFunction DetermineWinningTeam() { return mDetermineWinningTeam ? mDetermineWinningTeam : (mDetermineWinningTeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrArena.DetermineWinningTeam")); }
			ScriptFunction GetRoundWinningTeam() { return mGetRoundWinningTeam ? mGetRoundWinningTeam : (mGetRoundWinningTeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrArena.GetRoundWinningTeam")); }
			ScriptFunction EndTheRound() { return mEndTheRound ? mEndTheRound : (mEndTheRound = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrArena.EndTheRound")); }
			ScriptFunction GotoPendingRoundStartTimer() { return mGotoPendingRoundStartTimer ? mGotoPendingRoundStartTimer : (mGotoPendingRoundStartTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrArena.GotoPendingRoundStartTimer")); }
			ScriptFunction GetNumRemainingAlivePlayers() { return mGetNumRemainingAlivePlayers ? mGetNumRemainingAlivePlayers : (mGetNumRemainingAlivePlayers = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrArena.GetNumRemainingAlivePlayers")); }
			ScriptFunction IsBloodEagleOutOfLives() { return mIsBloodEagleOutOfLives ? mIsBloodEagleOutOfLives : (mIsBloodEagleOutOfLives = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrArena.IsBloodEagleOutOfLives")); }
			ScriptFunction IsDiamondSwordOutOfLives() { return mIsDiamondSwordOutOfLives ? mIsDiamondSwordOutOfLives : (mIsDiamondSwordOutOfLives = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrArena.IsDiamondSwordOutOfLives")); }
			ScriptFunction CheckEndGame() { return mCheckEndGame ? mCheckEndGame : (mCheckEndGame = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrArena.CheckEndGame")); }
			ScriptFunction CheckForAutoBalance() { return mCheckForAutoBalance ? mCheckForAutoBalance : (mCheckForAutoBalance = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrArena.CheckForAutoBalance")); }
			ScriptFunction SendMatchCountdown() { return mSendMatchCountdown ? mSendMatchCountdown : (mSendMatchCountdown = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrArena.SendMatchCountdown")); }
			ScriptFunction AllowRespawn() { return mAllowRespawn ? mAllowRespawn : (mAllowRespawn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrArena.AllowRespawn")); }
			ScriptFunction OnServerSpawnedPlayer() { return mOnServerSpawnedPlayer ? mOnServerSpawnedPlayer : (mOnServerSpawnedPlayer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrArena.OnServerSpawnedPlayer")); }
			ScriptFunction GetGameTypeId() { return mGetGameTypeId ? mGetGameTypeId : (mGetGameTypeId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrArena.GetGameTypeId")); }
			ScriptFunction SendMatchOver() { return mSendMatchOver ? mSendMatchOver : (mSendMatchOver = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrArena.SendMatchOver")); }
		}
	}
	static struct Constants
	{
		enum MAX_NUM_ARENA_PLAYERS_PER_TEAM = 8;
	}
	@property final auto ref
	{
		int m_nGoalWonRounds() { return *cast(int*)(cast(size_t)cast(void*)this + 1468); }
		ubyte m_bHasTeamBenchedAPlayer() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1464); }
		int m_nNumEnemiesAliveAtLastManStanding() { return *cast(int*)(cast(size_t)cast(void*)this + 1456); }
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
