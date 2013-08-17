module UnrealScript.TribesGame.TrAccoladeManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.Core.UObject;
import UnrealScript.UTGame.UTPlayerReplicationInfo;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.TrStatsInterface;
import UnrealScript.TribesGame.TrGame;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface TrAccoladeManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccoladeManager")()); }
	private static __gshared TrAccoladeManager mDefaultProperties;
	@property final static TrAccoladeManager DefaultProperties() { mixin(MGDPC!(TrAccoladeManager, "TrAccoladeManager TribesGame.Default__TrAccoladeManager")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetFlagDistance;
			ScriptFunction mInitialize;
			ScriptFunction mResetStreaks;
			ScriptFunction mGiveAssist;
			ScriptFunction mGiveVehicleAssist;
			ScriptFunction mKillAsRabbit;
			ScriptFunction mKilledTheRabbit;
			ScriptFunction mKilledTheFlagHolder;
			ScriptFunction mUpdateStandardKillingSpree;
			ScriptFunction mKilledGenerator;
			ScriptFunction mRepairedBase;
			ScriptFunction mKilledBaseTurret;
			ScriptFunction mKilledBaseRadar;
			ScriptFunction mFlagGrab;
			ScriptFunction mFlagGrabDeathmatch;
			ScriptFunction mFlagHeld;
			ScriptFunction mFlagAssist;
			ScriptFunction mFlagCapture;
			ScriptFunction mFlagReturn;
			ScriptFunction mNoJoy;
			ScriptFunction mGameCompleted;
			ScriptFunction mGameWon;
			ScriptFunction mUpdateMultiKills;
			ScriptFunction mVehicleDestroyed;
			ScriptFunction mUpdateSpecialAccolades;
			ScriptFunction mQueueAccolade;
			ScriptFunction mCreditsGiven;
			ScriptFunction mBroadcastAccolade;
		}
		public @property static final
		{
			ScriptFunction GetFlagDistance() { mixin(MGF!("mGetFlagDistance", "Function TribesGame.TrAccoladeManager.GetFlagDistance")()); }
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.TrAccoladeManager.Initialize")()); }
			ScriptFunction ResetStreaks() { mixin(MGF!("mResetStreaks", "Function TribesGame.TrAccoladeManager.ResetStreaks")()); }
			ScriptFunction GiveAssist() { mixin(MGF!("mGiveAssist", "Function TribesGame.TrAccoladeManager.GiveAssist")()); }
			ScriptFunction GiveVehicleAssist() { mixin(MGF!("mGiveVehicleAssist", "Function TribesGame.TrAccoladeManager.GiveVehicleAssist")()); }
			ScriptFunction KillAsRabbit() { mixin(MGF!("mKillAsRabbit", "Function TribesGame.TrAccoladeManager.KillAsRabbit")()); }
			ScriptFunction KilledTheRabbit() { mixin(MGF!("mKilledTheRabbit", "Function TribesGame.TrAccoladeManager.KilledTheRabbit")()); }
			ScriptFunction KilledTheFlagHolder() { mixin(MGF!("mKilledTheFlagHolder", "Function TribesGame.TrAccoladeManager.KilledTheFlagHolder")()); }
			ScriptFunction UpdateStandardKillingSpree() { mixin(MGF!("mUpdateStandardKillingSpree", "Function TribesGame.TrAccoladeManager.UpdateStandardKillingSpree")()); }
			ScriptFunction KilledGenerator() { mixin(MGF!("mKilledGenerator", "Function TribesGame.TrAccoladeManager.KilledGenerator")()); }
			ScriptFunction RepairedBase() { mixin(MGF!("mRepairedBase", "Function TribesGame.TrAccoladeManager.RepairedBase")()); }
			ScriptFunction KilledBaseTurret() { mixin(MGF!("mKilledBaseTurret", "Function TribesGame.TrAccoladeManager.KilledBaseTurret")()); }
			ScriptFunction KilledBaseRadar() { mixin(MGF!("mKilledBaseRadar", "Function TribesGame.TrAccoladeManager.KilledBaseRadar")()); }
			ScriptFunction FlagGrab() { mixin(MGF!("mFlagGrab", "Function TribesGame.TrAccoladeManager.FlagGrab")()); }
			ScriptFunction FlagGrabDeathmatch() { mixin(MGF!("mFlagGrabDeathmatch", "Function TribesGame.TrAccoladeManager.FlagGrabDeathmatch")()); }
			ScriptFunction FlagHeld() { mixin(MGF!("mFlagHeld", "Function TribesGame.TrAccoladeManager.FlagHeld")()); }
			ScriptFunction FlagAssist() { mixin(MGF!("mFlagAssist", "Function TribesGame.TrAccoladeManager.FlagAssist")()); }
			ScriptFunction FlagCapture() { mixin(MGF!("mFlagCapture", "Function TribesGame.TrAccoladeManager.FlagCapture")()); }
			ScriptFunction FlagReturn() { mixin(MGF!("mFlagReturn", "Function TribesGame.TrAccoladeManager.FlagReturn")()); }
			ScriptFunction NoJoy() { mixin(MGF!("mNoJoy", "Function TribesGame.TrAccoladeManager.NoJoy")()); }
			ScriptFunction GameCompleted() { mixin(MGF!("mGameCompleted", "Function TribesGame.TrAccoladeManager.GameCompleted")()); }
			ScriptFunction GameWon() { mixin(MGF!("mGameWon", "Function TribesGame.TrAccoladeManager.GameWon")()); }
			ScriptFunction UpdateMultiKills() { mixin(MGF!("mUpdateMultiKills", "Function TribesGame.TrAccoladeManager.UpdateMultiKills")()); }
			ScriptFunction VehicleDestroyed() { mixin(MGF!("mVehicleDestroyed", "Function TribesGame.TrAccoladeManager.VehicleDestroyed")()); }
			ScriptFunction UpdateSpecialAccolades() { mixin(MGF!("mUpdateSpecialAccolades", "Function TribesGame.TrAccoladeManager.UpdateSpecialAccolades")()); }
			ScriptFunction QueueAccolade() { mixin(MGF!("mQueueAccolade", "Function TribesGame.TrAccoladeManager.QueueAccolade")()); }
			ScriptFunction CreditsGiven() { mixin(MGF!("mCreditsGiven", "Function TribesGame.TrAccoladeManager.CreditsGiven")()); }
			ScriptFunction BroadcastAccolade() { mixin(MGF!("mBroadcastAccolade", "Function TribesGame.TrAccoladeManager.BroadcastAccolade")()); }
		}
	}
	@property final auto ref
	{
		int m_nLastFlagReturnTime() { mixin(MGPC!(int, 112)()); }
		int m_nLastFlagGrabTime() { mixin(MGPC!(int, 108)()); }
		int MAXIMUM_EMERGENCY_GRAB_DISTANCE() { mixin(MGPC!(int, 104)()); }
		int MAXIMUM_FLAG_DEFENSE_DISTANCE() { mixin(MGPC!(int, 100)()); }
		int MINIMUM_ULTRA_GRAB_SPEED() { mixin(MGPC!(int, 96)()); }
		int MINIMUM_FAST_GRAB_SPEED() { mixin(MGPC!(int, 92)()); }
		int MAXIMUM_LLAMA_GRAB_SPEED() { mixin(MGPC!(int, 88)()); }
		int MINIMUM_TIME_FLAG_CREDITS() { mixin(MGPC!(int, 84)()); }
		int m_nCurrSpinfusorKillStreak() { mixin(MGPC!(int, 80)()); }
		int m_nCurrExplosiveKillStreak() { mixin(MGPC!(int, 76)()); }
		int m_nCurrSnipingKillStreak() { mixin(MGPC!(int, 72)()); }
		TrStatsInterface Stats() { mixin(MGPC!(TrStatsInterface, 68)()); }
		TrPlayerController m_TrPC() { mixin(MGPC!(TrPlayerController, 64)()); }
		TrGame m_TrG() { mixin(MGPC!(TrGame, 60)()); }
	}
final:
	int GetFlagDistance(Vector Loc1, Vector Loc2)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = Loc1;
		*cast(Vector*)&params[12] = Loc2;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFlagDistance, params.ptr, cast(void*)0);
		return *cast(int*)&params[24];
	}
	void Initialize(TrPlayerController TrPC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = TrPC;
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, params.ptr, cast(void*)0);
	}
	void ResetStreaks()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetStreaks, cast(void*)0, cast(void*)0);
	}
	void GiveAssist()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.GiveAssist, cast(void*)0, cast(void*)0);
	}
	void GiveVehicleAssist()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.GiveVehicleAssist, cast(void*)0, cast(void*)0);
	}
	void KillAsRabbit(Controller Killer, Controller Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.KillAsRabbit, params.ptr, cast(void*)0);
	}
	void KilledTheRabbit(Controller Killer, Controller Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.KilledTheRabbit, params.ptr, cast(void*)0);
	}
	void KilledTheFlagHolder()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.KilledTheFlagHolder, cast(void*)0, cast(void*)0);
	}
	void UpdateStandardKillingSpree(UTPlayerReplicationInfo Other, int currentSpree)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = Other;
		*cast(int*)&params[4] = currentSpree;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateStandardKillingSpree, params.ptr, cast(void*)0);
	}
	void KilledGenerator()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.KilledGenerator, cast(void*)0, cast(void*)0);
	}
	void RepairedBase()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RepairedBase, cast(void*)0, cast(void*)0);
	}
	void KilledBaseTurret()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.KilledBaseTurret, cast(void*)0, cast(void*)0);
	}
	void KilledBaseRadar()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.KilledBaseRadar, cast(void*)0, cast(void*)0);
	}
	void FlagGrab()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FlagGrab, cast(void*)0, cast(void*)0);
	}
	void FlagGrabDeathmatch()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FlagGrabDeathmatch, cast(void*)0, cast(void*)0);
	}
	void FlagHeld()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FlagHeld, cast(void*)0, cast(void*)0);
	}
	void FlagAssist(int AssistCount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = AssistCount;
		(cast(ScriptObject)this).ProcessEvent(Functions.FlagAssist, params.ptr, cast(void*)0);
	}
	void FlagCapture(bool bUnAssisted)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bUnAssisted;
		(cast(ScriptObject)this).ProcessEvent(Functions.FlagCapture, params.ptr, cast(void*)0);
	}
	void FlagReturn()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FlagReturn, cast(void*)0, cast(void*)0);
	}
	void NoJoy()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NoJoy, cast(void*)0, cast(void*)0);
	}
	void GameCompleted()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.GameCompleted, cast(void*)0, cast(void*)0);
	}
	void GameWon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.GameWon, cast(void*)0, cast(void*)0);
	}
	void UpdateMultiKills(int MultiKillLevel)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = MultiKillLevel;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateMultiKills, params.ptr, cast(void*)0);
	}
	void VehicleDestroyed(TrVehicle aVehicle)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrVehicle*)params.ptr = aVehicle;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleDestroyed, params.ptr, cast(void*)0);
	}
	void UpdateSpecialAccolades(Controller Victim)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Victim;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSpecialAccolades, params.ptr, cast(void*)0);
	}
	void QueueAccolade(ScriptClass Accolade, int ModifiedCredits)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = Accolade;
		*cast(int*)&params[4] = ModifiedCredits;
		(cast(ScriptObject)this).ProcessEvent(Functions.QueueAccolade, params.ptr, cast(void*)0);
	}
	bool CreditsGiven(ScriptClass Accolade)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = Accolade;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreditsGiven, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void BroadcastAccolade(ScriptClass Accolade)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = Accolade;
		(cast(ScriptObject)this).ProcessEvent(Functions.BroadcastAccolade, params.ptr, cast(void*)0);
	}
}
