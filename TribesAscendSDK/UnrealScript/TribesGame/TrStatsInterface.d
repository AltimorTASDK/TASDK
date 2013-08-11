module UnrealScript.TribesGame.TrStatsInterface;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrStatsInterface : UObject
{
public extern(D):
final:
	void Initialize(OnlineSubsystem Sub)
	{
		ubyte params[4];
		params[] = 0;
		*cast(OnlineSubsystem*)params.ptr = Sub;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112611], params.ptr, cast(void*)0);
	}
	void AddKill(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112613], params.ptr, cast(void*)0);
	}
	void AddDeath(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112615], params.ptr, cast(void*)0);
	}
	void AddAssist(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112617], params.ptr, cast(void*)0);
	}
	void AddAccolade(TrPlayerController PC, int Id, int ActivityId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = Id;
		*cast(int*)&params[8] = ActivityId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112619], params.ptr, cast(void*)0);
	}
	void AddCredits(TrPlayerController PC, int val, bool bSpent, bool bFree)
	{
		ubyte params[16];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		*cast(bool*)&params[8] = bSpent;
		*cast(bool*)&params[12] = bFree;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112623], params.ptr, cast(void*)0);
	}
	void UpdateTimePlayed(TrPlayerController PC, int TimeUsed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = TimeUsed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112628], params.ptr, cast(void*)0);
	}
	void UpdateWeapon(TrPlayerController PC, int WeaponId, int ActivityId, int ShotsFired, int TimeUsed)
	{
		ubyte params[20];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = WeaponId;
		*cast(int*)&params[8] = ActivityId;
		*cast(int*)&params[12] = ShotsFired;
		*cast(int*)&params[16] = TimeUsed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112631], params.ptr, cast(void*)0);
	}
	void UpdateDamage(TrPlayerController PC, int WeaponId, int Amount, int Dist, bool bKill, bool bVehicle)
	{
		ubyte params[24];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = WeaponId;
		*cast(int*)&params[8] = Amount;
		*cast(int*)&params[12] = Dist;
		*cast(bool*)&params[16] = bKill;
		*cast(bool*)&params[20] = bVehicle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112637], params.ptr, cast(void*)0);
	}
	void SetIdentification(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112644], params.ptr, cast(void*)0);
	}
	void SetActiveClass(TrPlayerController PC, int ClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = ClassId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112646], params.ptr, cast(void*)0);
	}
	void AddRepair(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112649], params.ptr, cast(void*)0);
	}
	void AddFlagCap(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112651], params.ptr, cast(void*)0);
	}
	void AddFlagGrab(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112653], params.ptr, cast(void*)0);
	}
	void AddFlagReturn(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112655], params.ptr, cast(void*)0);
	}
	void AddMidairKill(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112657], params.ptr, cast(void*)0);
	}
	void AddVehicleKill(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112659], params.ptr, cast(void*)0);
	}
	void SetXP(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112661], params.ptr, cast(void*)0);
	}
	void SetTeam(TrPlayerController PC, int TeamNum)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112664], params.ptr, cast(void*)0);
	}
	void AddVehicleDestruction(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112667], params.ptr, cast(void*)0);
	}
	void SetSpeedSkied(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112669], params.ptr, cast(void*)0);
	}
	void AddDeployableDestruction(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112672], params.ptr, cast(void*)0);
	}
	void AddCreditsSpent(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112674], params.ptr, cast(void*)0);
	}
	void SetDistanceKill(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112677], params.ptr, cast(void*)0);
	}
	void SetSpeedFlagCap(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112680], params.ptr, cast(void*)0);
	}
	void AddCreditsEarned(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112683], params.ptr, cast(void*)0);
	}
	void AddDistanceSkied(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112686], params.ptr, cast(void*)0);
	}
	void SetSpeedFlagGrab(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112689], params.ptr, cast(void*)0);
	}
	void SetDistanceHeadshot(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112692], params.ptr, cast(void*)0);
	}
	void FallingDeath(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112695], params.ptr, cast(void*)0);
	}
	void SkiDistance(TrPlayerController PC, int Distance)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = Distance;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112697], params.ptr, cast(void*)0);
	}
	void BeltKill(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112700], params.ptr, cast(void*)0);
	}
	void CallIn(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112702], params.ptr, cast(void*)0);
	}
	void CallInKill(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112704], params.ptr, cast(void*)0);
	}
	void RegeneratedToFull(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112706], params.ptr, cast(void*)0);
	}
	void FlagGrabSpeed(TrPlayerController PC, int Speed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = Speed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112708], params.ptr, cast(void*)0);
	}
	void VEHICLEKILL(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112711], params.ptr, cast(void*)0);
	}
	void InvStationVisited(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112713], params.ptr, cast(void*)0);
	}
	void SkiSpeed(TrPlayerController PC, int Speed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = Speed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112715], params.ptr, cast(void*)0);
	}
	void BaseUpgrade(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112718], params.ptr, cast(void*)0);
	}
	void TrackPlayerMovement(TrPlayerController PC, int TimeStamp)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = TimeStamp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112720], params.ptr, cast(void*)0);
	}
	void AddVehicleSpawn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112723], cast(void*)0, cast(void*)0);
	}
	void AddGeneratorDestruction()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112724], cast(void*)0, cast(void*)0);
	}
	void WriteMatchStats()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112725], cast(void*)0, cast(void*)0);
	}
	void WritePlayerStats(ScriptArray!(PlayerReplicationInfo) PRIArray)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(PlayerReplicationInfo)*)params.ptr = PRIArray;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112726], params.ptr, cast(void*)0);
	}
	void GameEnd()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112729], cast(void*)0, cast(void*)0);
	}
	void Flush()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112730], cast(void*)0, cast(void*)0);
	}
}
