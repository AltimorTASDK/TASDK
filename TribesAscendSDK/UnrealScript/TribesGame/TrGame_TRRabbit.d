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
	struct ScoreStruct
	{
		public @property final auto ref float Score() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __Score[4];
		public @property final auto ref TrPlayerController C() { return *cast(TrPlayerController*)(cast(size_t)&this + 0); }
		private ubyte __C[4];
	}
	public @property final auto ref PlayerReplicationInfo m_HolderPRI() { return *cast(PlayerReplicationInfo*)(cast(size_t)cast(void*)this + 1464); }
	public @property final auto ref PlayerReplicationInfo m_Leader() { return *cast(PlayerReplicationInfo*)(cast(size_t)cast(void*)this + 1468); }
	public @property final auto ref float m_fScoreInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 1460); }
	public @property final auto ref TrFlagRabbit m_Flag() { return *cast(TrFlagRabbit*)(cast(size_t)cast(void*)this + 1456); }
	final void ApplyServerSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90778], cast(void*)0, cast(void*)0);
	}
	final void RegisterFlag(TrFlagRabbit F)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrFlagRabbit*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90780], params.ptr, cast(void*)0);
	}
	final void PickedUpFlag(Controller Holder)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Holder;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90783], params.ptr, cast(void*)0);
	}
	final void DroppedFlag()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90786], cast(void*)0, cast(void*)0);
	}
	final void SetTeam(Controller Other, UTTeamInfo NewTeam, bool bNewTeam)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		*cast(UTTeamInfo*)&params[4] = NewTeam;
		*cast(bool*)&params[8] = bNewTeam;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90789], params.ptr, cast(void*)0);
	}
	final void ScoreFlagTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90794], cast(void*)0, cast(void*)0);
	}
	final void ScoreFlagHold(bool firstPass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = firstPass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90795], params.ptr, cast(void*)0);
	}
	final void ScoreKill(Controller Killer, Controller Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90798], params.ptr, cast(void*)0);
	}
	final void ChangePreviousRabbitTeam()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90801], cast(void*)0, cast(void*)0);
	}
	final TrGame_TRRabbit.ScoreStruct MakeScoreStruct(TrPlayerController C, float Score)
	{
		ubyte params[16];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = C;
		*cast(float*)&params[4] = Score;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90802], params.ptr, cast(void*)0);
		return *cast(TrGame_TRRabbit.ScoreStruct*)&params[8];
	}
	final bool SortPlayerScores(PlayerReplicationInfo Scorer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90807], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool CheckScore(PlayerReplicationInfo Scorer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90820], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool CheckEndGame(PlayerReplicationInfo Winner, ScriptString Reason)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90824], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final ubyte PickTeam(ubyte Num, Controller C)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = Num;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90831], params.ptr, cast(void*)0);
		return params[8];
	}
	final ubyte PickTeamForMigration(Controller C)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90835], params.ptr, cast(void*)0);
		return params[4];
	}
	final void PlayEndOfMatchMessage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90838], cast(void*)0, cast(void*)0);
	}
	final void DiscardInventory(Pawn Other, Controller Killer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(Controller*)&params[4] = Killer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90843], params.ptr, cast(void*)0);
	}
	final float RatePlayerStart(PlayerStart P, ubyte Team, Controller Player)
	{
		ubyte params[13];
		params[] = 0;
		*cast(PlayerStart*)params.ptr = P;
		params[4] = Team;
		*cast(Controller*)&params[8] = Player;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90848], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final int GetGameTypeId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90854], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
