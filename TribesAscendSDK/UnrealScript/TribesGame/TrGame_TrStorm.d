module UnrealScript.TribesGame.TrGame_TrStorm;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrStormCarrierShield;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrGame;
import UnrealScript.TribesGame.TrStormControlPoint;
import UnrealScript.TribesGame.TrStormCore;

extern(C++) interface TrGame_TrStorm : TrGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrGame_TrStorm")()); }
	private static __gshared TrGame_TrStorm mDefaultProperties;
	@property final static TrGame_TrStorm DefaultProperties() { mixin(MGDPC!(TrGame_TrStorm, "TrGame_TrStorm TribesGame.Default__TrGame_TrStorm")()); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrGame_TrStorm.PostBeginPlay")()); }
			ScriptFunction MissileFired() { mixin(MGF!("mMissileFired", "Function TribesGame.TrGame_TrStorm.MissileFired")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function TribesGame.TrGame_TrStorm.Tick")()); }
			ScriptFunction ExplodeMissile() { mixin(MGF!("mExplodeMissile", "Function TribesGame.TrGame_TrStorm.ExplodeMissile")()); }
			ScriptFunction TakeHealthDamage() { mixin(MGF!("mTakeHealthDamage", "Function TribesGame.TrGame_TrStorm.TakeHealthDamage")()); }
			ScriptFunction CarrierDestroyed() { mixin(MGF!("mCarrierDestroyed", "Function TribesGame.TrGame_TrStorm.CarrierDestroyed")()); }
			ScriptFunction TakeDamageFromCore() { mixin(MGF!("mTakeDamageFromCore", "Function TribesGame.TrGame_TrStorm.TakeDamageFromCore")()); }
			ScriptFunction CheckEndGame() { mixin(MGF!("mCheckEndGame", "Function TribesGame.TrGame_TrStorm.CheckEndGame")()); }
			ScriptFunction EndGame() { mixin(MGF!("mEndGame", "Function TribesGame.TrGame_TrStorm.EndGame")()); }
			ScriptFunction DetermineWinningTeam() { mixin(MGF!("mDetermineWinningTeam", "Function TribesGame.TrGame_TrStorm.DetermineWinningTeam")()); }
		}
	}
	struct Missile
	{
		private ubyte __buffer__[9];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrGame_TrStorm.Missile")()); }
		@property final auto ref
		{
			ubyte TargetTeam() { mixin(MGPS!(ubyte, 8)()); }
			float RemainingFlightTime() { mixin(MGPS!(float, 4)()); }
			TrStormControlPoint FiredFrom() { mixin(MGPS!(TrStormControlPoint, 0)()); }
		}
	}
	struct Carrier
	{
		private ubyte __buffer__[9];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrGame_TrStorm.Carrier")()); }
		@property final auto ref
		{
			ubyte TeamNum() { mixin(MGPS!(ubyte, 8)()); }
			int CoreHealth() { mixin(MGPS!(int, 4)()); }
			int ShieldHealth() { mixin(MGPS!(int, 0)()); }
		}
	}
	static struct MatchEnding
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrGame_TrStorm.MatchEnding")()); }
	}
	@property final auto ref
	{
		ScriptArray!(TrGame_TrStorm.Missile) m_fActiveMissiles() { mixin(MGPC!(ScriptArray!(TrGame_TrStorm.Missile), 1480)()); }
		float MatchEndingTime() { mixin(MGPC!(float, 1520)()); }
		int m_nMaxCoreHealth() { mixin(MGPC!(int, 1516)()); }
		int m_nMaxShieldHealth() { mixin(MGPC!(int, 1512)()); }
		TrStormCore m_CarrierCore() { mixin(MGPC!(TrStormCore, 1504)()); }
		TrStormCarrierShield m_CarrierShields() { mixin(MGPC!(TrStormCarrierShield, 1496)()); }
		float m_fMissileDamageAmount() { mixin(MGPC!(float, 1492)()); }
		TrGame_TrStorm.Carrier m_Carriers() { mixin(MGPC!(TrGame_TrStorm.Carrier, 1456)()); }
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
