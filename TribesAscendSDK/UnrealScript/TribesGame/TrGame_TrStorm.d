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
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGame_TrStorm")); }
	private static __gshared TrGame_TrStorm mDefaultProperties;
	@property final static TrGame_TrStorm DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGame_TrStorm)("TrGame_TrStorm TribesGame.Default__TrGame_TrStorm")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mMissileFired;
			ScriptFunction mTick;
			ScriptFunction mExplodeMissile;
			ScriptFunction mTakeHealthDamage;
			ScriptFunction mCarrierDestroyed;
			ScriptFunction mTakeDamageFromCore;
			ScriptFunction mCheckEndGame;
			ScriptFunction mEndGame;
			ScriptFunction mDetermineWinningTeam;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrStorm.PostBeginPlay")); }
			ScriptFunction MissileFired() { return mMissileFired ? mMissileFired : (mMissileFired = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrStorm.MissileFired")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrStorm.Tick")); }
			ScriptFunction ExplodeMissile() { return mExplodeMissile ? mExplodeMissile : (mExplodeMissile = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrStorm.ExplodeMissile")); }
			ScriptFunction TakeHealthDamage() { return mTakeHealthDamage ? mTakeHealthDamage : (mTakeHealthDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrStorm.TakeHealthDamage")); }
			ScriptFunction CarrierDestroyed() { return mCarrierDestroyed ? mCarrierDestroyed : (mCarrierDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrStorm.CarrierDestroyed")); }
			ScriptFunction TakeDamageFromCore() { return mTakeDamageFromCore ? mTakeDamageFromCore : (mTakeDamageFromCore = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrStorm.TakeDamageFromCore")); }
			ScriptFunction CheckEndGame() { return mCheckEndGame ? mCheckEndGame : (mCheckEndGame = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrStorm.CheckEndGame")); }
			ScriptFunction EndGame() { return mEndGame ? mEndGame : (mEndGame = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrStorm.EndGame")); }
			ScriptFunction DetermineWinningTeam() { return mDetermineWinningTeam ? mDetermineWinningTeam : (mDetermineWinningTeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrStorm.DetermineWinningTeam")); }
		}
	}
	struct Missile
	{
		private ubyte __buffer__[9];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrGame_TrStorm.Missile")); }
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
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrGame_TrStorm.Carrier")); }
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
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void MissileFired(TrStormControlPoint FiredFrom, float TimeTillExplosion, ubyte TargetTeam)
	{
		ubyte params[9];
		params[] = 0;
		*cast(TrStormControlPoint*)params.ptr = FiredFrom;
		*cast(float*)&params[4] = TimeTillExplosion;
		params[8] = TargetTeam;
		(cast(ScriptObject)this).ProcessEvent(Functions.MissileFired, params.ptr, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void ExplodeMissile(ubyte TeamNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ExplodeMissile, params.ptr, cast(void*)0);
	}
	void TakeHealthDamage(ubyte TeamNum, int DamageAmount)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = TeamNum;
		*cast(int*)&params[4] = DamageAmount;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeHealthDamage, params.ptr, cast(void*)0);
	}
	void CarrierDestroyed(ubyte TeamNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.CarrierDestroyed, params.ptr, cast(void*)0);
	}
	void TakeDamageFromCore(ubyte TeamNum, int DamageAmount)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = TeamNum;
		*cast(int*)&params[4] = DamageAmount;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamageFromCore, params.ptr, cast(void*)0);
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
	void EndGame(PlayerReplicationInfo Winner, ScriptString Reason)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndGame, params.ptr, cast(void*)0);
	}
	int DetermineWinningTeam()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetermineWinningTeam, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
