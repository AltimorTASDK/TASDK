module UnrealScript.TribesGame.TrGame_TRTeamRabbit;

import ScriptClasses;
import UnrealScript.TribesGame.TrFlagTeamRabbit;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.PlayerStart;
import UnrealScript.TribesGame.TrGame;

extern(C++) interface TrGame_TRTeamRabbit : TrGame
{
public extern(D):
	enum
	{
		MESSAGE_SCORE_SWITCH_LIMIT = 0xFFF,
		MESSAGE_SCORE_SWITCH_TEAM = 17,
	}
	@property final
	{
		auto ref
		{
			TrFlagTeamRabbit m_TeamRabbitFlag() { return *cast(TrFlagTeamRabbit*)(cast(size_t)cast(void*)this + 1460); }
			int m_nBuffAmount() { return *cast(int*)(cast(size_t)cast(void*)this + 1468); }
			ubyte m_nBuffedTeamIndex() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1464); }
		}
		bool m_bPlayedAnnouncerRally() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1456) & 0x2) != 0; }
		bool m_bPlayedAnnouncerRally(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1456) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1456) &= ~0x2; } return val; }
		bool m_bSpawnFlagOnNextKill() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1456) & 0x1) != 0; }
		bool m_bSpawnFlagOnNextKill(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1456) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1456) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90990], cast(void*)0, cast(void*)0);
	}
	void ResetLevel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90991], cast(void*)0, cast(void*)0);
	}
	void ResetScores()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90992], cast(void*)0, cast(void*)0);
	}
	void ApplyServerSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90993], cast(void*)0, cast(void*)0);
	}
	void SpawnFlag(Vector SpawnLocation, Vector InitialVelocity)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = SpawnLocation;
		*cast(Vector*)&params[12] = InitialVelocity;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90995], params.ptr, cast(void*)0);
	}
	void Killed(Controller Killer, Controller KilledPlayer, Pawn KilledPawn, ScriptClass pDamageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = KilledPlayer;
		*cast(Pawn*)&params[8] = KilledPawn;
		*cast(ScriptClass*)&params[12] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[91007], params.ptr, cast(void*)0);
	}
	void FlagDestoyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[91013], cast(void*)0, cast(void*)0);
	}
	void PickedUpFlag(Controller Holder)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Holder;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[91014], params.ptr, cast(void*)0);
	}
	void DroppedFlag()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[91019], cast(void*)0, cast(void*)0);
	}
	void AwardFlagHolder()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[91021], cast(void*)0, cast(void*)0);
	}
	void ScoreKill(Controller Killer, Controller Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[91023], params.ptr, cast(void*)0);
	}
	bool CheckScore(PlayerReplicationInfo Scorer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[91039], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CheckEndGame(PlayerReplicationInfo Winner, ScriptString Reason)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[91042], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	float RatePlayerStart(PlayerStart P, ubyte Team, Controller pPlayer)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerStart*)params.ptr = P;
		params[4] = Team;
		*cast(Controller*)&params[8] = pPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[91050], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	int GetGameTypeId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[91056], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
