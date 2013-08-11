module UnrealScript.TribesGame.TrGame_TrStorm;

import ScriptClasses;
import UnrealScript.TribesGame.TrStormCarrierShield;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrGame;
import UnrealScript.TribesGame.TrStormControlPoint;
import UnrealScript.TribesGame.TrStormCore;

extern(C++) interface TrGame_TrStorm : TrGame
{
public extern(D):
	struct Missile
	{
		private ubyte __buffer__[9];
	public extern(D):
		@property final auto ref
		{
			ubyte TargetTeam() { return *cast(ubyte*)(cast(size_t)&this + 8); }
			float RemainingFlightTime() { return *cast(float*)(cast(size_t)&this + 4); }
			TrStormControlPoint FiredFrom() { return *cast(TrStormControlPoint*)(cast(size_t)&this + 0); }
		}
	}
	struct Carrier
	{
		private ubyte __buffer__[9];
	public extern(D):
		@property final auto ref
		{
			ubyte TeamNum() { return *cast(ubyte*)(cast(size_t)&this + 8); }
			int CoreHealth() { return *cast(int*)(cast(size_t)&this + 4); }
			int ShieldHealth() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(TrGame_TrStorm.Missile) m_fActiveMissiles() { return *cast(ScriptArray!(TrGame_TrStorm.Missile)*)(cast(size_t)cast(void*)this + 1480); }
		float MatchEndingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1520); }
		int m_nMaxCoreHealth() { return *cast(int*)(cast(size_t)cast(void*)this + 1516); }
		int m_nMaxShieldHealth() { return *cast(int*)(cast(size_t)cast(void*)this + 1512); }
		TrStormCore m_CarrierCore() { return *cast(TrStormCore*)(cast(size_t)cast(void*)this + 1504); }
		TrStormCarrierShield m_CarrierShields() { return *cast(TrStormCarrierShield*)(cast(size_t)cast(void*)this + 1496); }
		float m_fMissileDamageAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 1492); }
		TrGame_TrStorm.Carrier m_Carriers() { return *cast(TrGame_TrStorm.Carrier*)(cast(size_t)cast(void*)this + 1456); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90913], cast(void*)0, cast(void*)0);
	}
	void MissileFired(TrStormControlPoint FiredFrom, float TimeTillExplosion, ubyte TargetTeam)
	{
		ubyte params[9];
		params[] = 0;
		*cast(TrStormControlPoint*)params.ptr = FiredFrom;
		*cast(float*)&params[4] = TimeTillExplosion;
		params[8] = TargetTeam;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90919], params.ptr, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90924], params.ptr, cast(void*)0);
	}
	void ExplodeMissile(ubyte TeamNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90927], params.ptr, cast(void*)0);
	}
	void TakeHealthDamage(ubyte TeamNum, int DamageAmount)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = TeamNum;
		*cast(int*)&params[4] = DamageAmount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90936], params.ptr, cast(void*)0);
	}
	void CarrierDestroyed(ubyte TeamNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90940], params.ptr, cast(void*)0);
	}
	void TakeDamageFromCore(ubyte TeamNum, int DamageAmount)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = TeamNum;
		*cast(int*)&params[4] = DamageAmount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90942], params.ptr, cast(void*)0);
	}
	bool CheckEndGame(PlayerReplicationInfo Winner, ScriptString Reason)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90962], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void EndGame(PlayerReplicationInfo Winner, ScriptString Reason)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90968], params.ptr, cast(void*)0);
	}
	int DetermineWinningTeam()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90971], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
