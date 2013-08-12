module UnrealScript.TribesGame.TrGame_TRRabbit;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.PlayerStart;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.TrGame;
import UnrealScript.TribesGame.TrFlagRabbit;
import UnrealScript.UTGame.UTTeamInfo;

extern(C++) interface TrGame_TRRabbit : TrGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGame_TRRabbit")); }
	private static __gshared TrGame_TRRabbit mDefaultProperties;
	@property final static TrGame_TRRabbit DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGame_TRRabbit)("TrGame_TRRabbit TribesGame.Default__TrGame_TRRabbit")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mApplyServerSettings;
			ScriptFunction mRegisterFlag;
			ScriptFunction mPickedUpFlag;
			ScriptFunction mDroppedFlag;
			ScriptFunction mSetTeam;
			ScriptFunction mScoreFlagTimer;
			ScriptFunction mScoreFlagHold;
			ScriptFunction mScoreKill;
			ScriptFunction mChangePreviousRabbitTeam;
			ScriptFunction mMakeScoreStruct;
			ScriptFunction mSortPlayerScores;
			ScriptFunction mCheckScore;
			ScriptFunction mCheckEndGame;
			ScriptFunction mPickTeam;
			ScriptFunction mPickTeamForMigration;
			ScriptFunction mPlayEndOfMatchMessage;
			ScriptFunction mDiscardInventory;
			ScriptFunction mRatePlayerStart;
			ScriptFunction mGetGameTypeId;
		}
		public @property static final
		{
			ScriptFunction ApplyServerSettings() { return mApplyServerSettings ? mApplyServerSettings : (mApplyServerSettings = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TRRabbit.ApplyServerSettings")); }
			ScriptFunction RegisterFlag() { return mRegisterFlag ? mRegisterFlag : (mRegisterFlag = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TRRabbit.RegisterFlag")); }
			ScriptFunction PickedUpFlag() { return mPickedUpFlag ? mPickedUpFlag : (mPickedUpFlag = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TRRabbit.PickedUpFlag")); }
			ScriptFunction DroppedFlag() { return mDroppedFlag ? mDroppedFlag : (mDroppedFlag = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TRRabbit.DroppedFlag")); }
			ScriptFunction SetTeam() { return mSetTeam ? mSetTeam : (mSetTeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TRRabbit.SetTeam")); }
			ScriptFunction ScoreFlagTimer() { return mScoreFlagTimer ? mScoreFlagTimer : (mScoreFlagTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TRRabbit.ScoreFlagTimer")); }
			ScriptFunction ScoreFlagHold() { return mScoreFlagHold ? mScoreFlagHold : (mScoreFlagHold = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TRRabbit.ScoreFlagHold")); }
			ScriptFunction ScoreKill() { return mScoreKill ? mScoreKill : (mScoreKill = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TRRabbit.ScoreKill")); }
			ScriptFunction ChangePreviousRabbitTeam() { return mChangePreviousRabbitTeam ? mChangePreviousRabbitTeam : (mChangePreviousRabbitTeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TRRabbit.ChangePreviousRabbitTeam")); }
			ScriptFunction MakeScoreStruct() { return mMakeScoreStruct ? mMakeScoreStruct : (mMakeScoreStruct = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TRRabbit.MakeScoreStruct")); }
			ScriptFunction SortPlayerScores() { return mSortPlayerScores ? mSortPlayerScores : (mSortPlayerScores = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TRRabbit.SortPlayerScores")); }
			ScriptFunction CheckScore() { return mCheckScore ? mCheckScore : (mCheckScore = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TRRabbit.CheckScore")); }
			ScriptFunction CheckEndGame() { return mCheckEndGame ? mCheckEndGame : (mCheckEndGame = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TRRabbit.CheckEndGame")); }
			ScriptFunction PickTeam() { return mPickTeam ? mPickTeam : (mPickTeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TRRabbit.PickTeam")); }
			ScriptFunction PickTeamForMigration() { return mPickTeamForMigration ? mPickTeamForMigration : (mPickTeamForMigration = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TRRabbit.PickTeamForMigration")); }
			ScriptFunction PlayEndOfMatchMessage() { return mPlayEndOfMatchMessage ? mPlayEndOfMatchMessage : (mPlayEndOfMatchMessage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TRRabbit.PlayEndOfMatchMessage")); }
			ScriptFunction DiscardInventory() { return mDiscardInventory ? mDiscardInventory : (mDiscardInventory = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TRRabbit.DiscardInventory")); }
			ScriptFunction RatePlayerStart() { return mRatePlayerStart ? mRatePlayerStart : (mRatePlayerStart = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TRRabbit.RatePlayerStart")); }
			ScriptFunction GetGameTypeId() { return mGetGameTypeId ? mGetGameTypeId : (mGetGameTypeId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TRRabbit.GetGameTypeId")); }
		}
	}
	struct ScoreStruct
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrGame_TRRabbit.ScoreStruct")); }
		@property final auto ref
		{
			float Score() { return *cast(float*)(cast(size_t)&this + 4); }
			TrPlayerController C() { return *cast(TrPlayerController*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		PlayerReplicationInfo m_HolderPRI() { return *cast(PlayerReplicationInfo*)(cast(size_t)cast(void*)this + 1464); }
		PlayerReplicationInfo m_Leader() { return *cast(PlayerReplicationInfo*)(cast(size_t)cast(void*)this + 1468); }
		float m_fScoreInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 1460); }
		TrFlagRabbit m_Flag() { return *cast(TrFlagRabbit*)(cast(size_t)cast(void*)this + 1456); }
	}
final:
	void ApplyServerSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyServerSettings, cast(void*)0, cast(void*)0);
	}
	void RegisterFlag(TrFlagRabbit F)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrFlagRabbit*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterFlag, params.ptr, cast(void*)0);
	}
	void PickedUpFlag(Controller Holder)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Holder;
		(cast(ScriptObject)this).ProcessEvent(Functions.PickedUpFlag, params.ptr, cast(void*)0);
	}
	void DroppedFlag()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DroppedFlag, cast(void*)0, cast(void*)0);
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
	void ScoreFlagTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ScoreFlagTimer, cast(void*)0, cast(void*)0);
	}
	void ScoreFlagHold(bool firstPass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = firstPass;
		(cast(ScriptObject)this).ProcessEvent(Functions.ScoreFlagHold, params.ptr, cast(void*)0);
	}
	void ScoreKill(Controller Killer, Controller Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.ScoreKill, params.ptr, cast(void*)0);
	}
	void ChangePreviousRabbitTeam()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangePreviousRabbitTeam, cast(void*)0, cast(void*)0);
	}
	TrGame_TRRabbit.ScoreStruct MakeScoreStruct(TrPlayerController C, float Score)
	{
		ubyte params[16];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = C;
		*cast(float*)&params[4] = Score;
		(cast(ScriptObject)this).ProcessEvent(Functions.MakeScoreStruct, params.ptr, cast(void*)0);
		return *cast(TrGame_TRRabbit.ScoreStruct*)&params[8];
	}
	bool SortPlayerScores(PlayerReplicationInfo Scorer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		(cast(ScriptObject)this).ProcessEvent(Functions.SortPlayerScores, params.ptr, cast(void*)0);
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
	bool CheckEndGame(PlayerReplicationInfo Winner, ScriptString Reason)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckEndGame, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
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
	ubyte PickTeamForMigration(Controller C)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.PickTeamForMigration, params.ptr, cast(void*)0);
		return params[4];
	}
	void PlayEndOfMatchMessage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayEndOfMatchMessage, cast(void*)0, cast(void*)0);
	}
	void DiscardInventory(Pawn Other, Controller Killer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(Controller*)&params[4] = Killer;
		(cast(ScriptObject)this).ProcessEvent(Functions.DiscardInventory, params.ptr, cast(void*)0);
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
	int GetGameTypeId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGameTypeId, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
