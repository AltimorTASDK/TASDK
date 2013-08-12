module UnrealScript.TribesGame.TrAccoladeManager;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccoladeManager")); }
	private static __gshared TrAccoladeManager mDefaultProperties;
	@property final static TrAccoladeManager DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccoladeManager)("TrAccoladeManager TribesGame.Default__TrAccoladeManager")); }
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
			ScriptFunction GetFlagDistance() { return mGetFlagDistance ? mGetFlagDistance : (mGetFlagDistance = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.GetFlagDistance")); }
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.Initialize")); }
			ScriptFunction ResetStreaks() { return mResetStreaks ? mResetStreaks : (mResetStreaks = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.ResetStreaks")); }
			ScriptFunction GiveAssist() { return mGiveAssist ? mGiveAssist : (mGiveAssist = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.GiveAssist")); }
			ScriptFunction GiveVehicleAssist() { return mGiveVehicleAssist ? mGiveVehicleAssist : (mGiveVehicleAssist = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.GiveVehicleAssist")); }
			ScriptFunction KillAsRabbit() { return mKillAsRabbit ? mKillAsRabbit : (mKillAsRabbit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.KillAsRabbit")); }
			ScriptFunction KilledTheRabbit() { return mKilledTheRabbit ? mKilledTheRabbit : (mKilledTheRabbit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.KilledTheRabbit")); }
			ScriptFunction KilledTheFlagHolder() { return mKilledTheFlagHolder ? mKilledTheFlagHolder : (mKilledTheFlagHolder = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.KilledTheFlagHolder")); }
			ScriptFunction UpdateStandardKillingSpree() { return mUpdateStandardKillingSpree ? mUpdateStandardKillingSpree : (mUpdateStandardKillingSpree = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.UpdateStandardKillingSpree")); }
			ScriptFunction KilledGenerator() { return mKilledGenerator ? mKilledGenerator : (mKilledGenerator = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.KilledGenerator")); }
			ScriptFunction RepairedBase() { return mRepairedBase ? mRepairedBase : (mRepairedBase = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.RepairedBase")); }
			ScriptFunction KilledBaseTurret() { return mKilledBaseTurret ? mKilledBaseTurret : (mKilledBaseTurret = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.KilledBaseTurret")); }
			ScriptFunction KilledBaseRadar() { return mKilledBaseRadar ? mKilledBaseRadar : (mKilledBaseRadar = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.KilledBaseRadar")); }
			ScriptFunction FlagGrab() { return mFlagGrab ? mFlagGrab : (mFlagGrab = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.FlagGrab")); }
			ScriptFunction FlagGrabDeathmatch() { return mFlagGrabDeathmatch ? mFlagGrabDeathmatch : (mFlagGrabDeathmatch = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.FlagGrabDeathmatch")); }
			ScriptFunction FlagHeld() { return mFlagHeld ? mFlagHeld : (mFlagHeld = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.FlagHeld")); }
			ScriptFunction FlagAssist() { return mFlagAssist ? mFlagAssist : (mFlagAssist = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.FlagAssist")); }
			ScriptFunction FlagCapture() { return mFlagCapture ? mFlagCapture : (mFlagCapture = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.FlagCapture")); }
			ScriptFunction FlagReturn() { return mFlagReturn ? mFlagReturn : (mFlagReturn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.FlagReturn")); }
			ScriptFunction NoJoy() { return mNoJoy ? mNoJoy : (mNoJoy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.NoJoy")); }
			ScriptFunction GameCompleted() { return mGameCompleted ? mGameCompleted : (mGameCompleted = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.GameCompleted")); }
			ScriptFunction GameWon() { return mGameWon ? mGameWon : (mGameWon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.GameWon")); }
			ScriptFunction UpdateMultiKills() { return mUpdateMultiKills ? mUpdateMultiKills : (mUpdateMultiKills = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.UpdateMultiKills")); }
			ScriptFunction VehicleDestroyed() { return mVehicleDestroyed ? mVehicleDestroyed : (mVehicleDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.VehicleDestroyed")); }
			ScriptFunction UpdateSpecialAccolades() { return mUpdateSpecialAccolades ? mUpdateSpecialAccolades : (mUpdateSpecialAccolades = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.UpdateSpecialAccolades")); }
			ScriptFunction QueueAccolade() { return mQueueAccolade ? mQueueAccolade : (mQueueAccolade = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.QueueAccolade")); }
			ScriptFunction CreditsGiven() { return mCreditsGiven ? mCreditsGiven : (mCreditsGiven = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.CreditsGiven")); }
			ScriptFunction BroadcastAccolade() { return mBroadcastAccolade ? mBroadcastAccolade : (mBroadcastAccolade = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAccoladeManager.BroadcastAccolade")); }
		}
	}
	@property final auto ref
	{
		int m_nLastFlagReturnTime() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
		int m_nLastFlagGrabTime() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
		int MAXIMUM_EMERGENCY_GRAB_DISTANCE() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
		int MAXIMUM_FLAG_DEFENSE_DISTANCE() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
		int MINIMUM_ULTRA_GRAB_SPEED() { return *cast(int*)(cast(size_t)cast(void*)this + 96); }
		int MINIMUM_FAST_GRAB_SPEED() { return *cast(int*)(cast(size_t)cast(void*)this + 92); }
		int MAXIMUM_LLAMA_GRAB_SPEED() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
		int MINIMUM_TIME_FLAG_CREDITS() { return *cast(int*)(cast(size_t)cast(void*)this + 84); }
		int m_nCurrSpinfusorKillStreak() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
		int m_nCurrExplosiveKillStreak() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
		int m_nCurrSnipingKillStreak() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
		TrStatsInterface Stats() { return *cast(TrStatsInterface*)(cast(size_t)cast(void*)this + 68); }
		TrPlayerController m_TrPC() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 64); }
		TrGame m_TrG() { return *cast(TrGame*)(cast(size_t)cast(void*)this + 60); }
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
