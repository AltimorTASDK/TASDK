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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66190], params.ptr, cast(void*)0);
		return *cast(int*)&params[24];
	}
	void Initialize(TrPlayerController TrPC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = TrPC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66194], params.ptr, cast(void*)0);
	}
	void ResetStreaks()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66197], cast(void*)0, cast(void*)0);
	}
	void GiveAssist()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66198], cast(void*)0, cast(void*)0);
	}
	void GiveVehicleAssist()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66199], cast(void*)0, cast(void*)0);
	}
	void KillAsRabbit(Controller Killer, Controller Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66200], params.ptr, cast(void*)0);
	}
	void KilledTheRabbit(Controller Killer, Controller Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66203], params.ptr, cast(void*)0);
	}
	void KilledTheFlagHolder()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66206], cast(void*)0, cast(void*)0);
	}
	void UpdateStandardKillingSpree(UTPlayerReplicationInfo Other, int currentSpree)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = Other;
		*cast(int*)&params[4] = currentSpree;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66207], params.ptr, cast(void*)0);
	}
	void KilledGenerator()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66210], cast(void*)0, cast(void*)0);
	}
	void RepairedBase()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66211], cast(void*)0, cast(void*)0);
	}
	void KilledBaseTurret()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66212], cast(void*)0, cast(void*)0);
	}
	void KilledBaseRadar()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66213], cast(void*)0, cast(void*)0);
	}
	void FlagGrab()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66214], cast(void*)0, cast(void*)0);
	}
	void FlagGrabDeathmatch()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66220], cast(void*)0, cast(void*)0);
	}
	void FlagHeld()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66221], cast(void*)0, cast(void*)0);
	}
	void FlagAssist(int AssistCount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = AssistCount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66222], params.ptr, cast(void*)0);
	}
	void FlagCapture(bool bUnAssisted)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bUnAssisted;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66225], params.ptr, cast(void*)0);
	}
	void FlagReturn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66227], cast(void*)0, cast(void*)0);
	}
	void NoJoy()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66228], cast(void*)0, cast(void*)0);
	}
	void GameCompleted()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66229], cast(void*)0, cast(void*)0);
	}
	void GameWon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66230], cast(void*)0, cast(void*)0);
	}
	void UpdateMultiKills(int MultiKillLevel)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = MultiKillLevel;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66231], params.ptr, cast(void*)0);
	}
	void VehicleDestroyed(TrVehicle aVehicle)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrVehicle*)params.ptr = aVehicle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66233], params.ptr, cast(void*)0);
	}
	void UpdateSpecialAccolades(Controller Victim)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Victim;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66236], params.ptr, cast(void*)0);
	}
	void QueueAccolade(ScriptClass Accolade, int ModifiedCredits)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = Accolade;
		*cast(int*)&params[4] = ModifiedCredits;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66270], params.ptr, cast(void*)0);
	}
	bool CreditsGiven(ScriptClass Accolade)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = Accolade;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66275], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void BroadcastAccolade(ScriptClass Accolade)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = Accolade;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66278], params.ptr, cast(void*)0);
	}
}
