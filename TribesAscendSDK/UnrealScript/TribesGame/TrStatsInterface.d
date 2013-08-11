module UnrealScript.TribesGame.TrStatsInterface;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrStatsInterface : UObject
{
	final void Initialize(OnlineSubsystem Sub)
	{
		ubyte params[4];
		params[] = 0;
		*cast(OnlineSubsystem*)params.ptr = Sub;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112611], params.ptr, cast(void*)0);
	}
	final void AddKill(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112613], params.ptr, cast(void*)0);
	}
	final void AddDeath(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112615], params.ptr, cast(void*)0);
	}
	final void AddAssist(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112617], params.ptr, cast(void*)0);
	}
	final void AddAccolade(TrPlayerController PC, int Id, int ActivityId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = Id;
		*cast(int*)&params[8] = ActivityId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112619], params.ptr, cast(void*)0);
	}
	final void AddCredits(TrPlayerController PC, int val, bool bSpent, bool bFree)
	{
		ubyte params[16];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		*cast(bool*)&params[8] = bSpent;
		*cast(bool*)&params[12] = bFree;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112623], params.ptr, cast(void*)0);
	}
	final void UpdateTimePlayed(TrPlayerController PC, int TimeUsed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = TimeUsed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112628], params.ptr, cast(void*)0);
	}
	final void UpdateWeapon(TrPlayerController PC, int WeaponId, int ActivityId, int ShotsFired, int TimeUsed)
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
	final void UpdateDamage(TrPlayerController PC, int WeaponId, int Amount, int Dist, bool bKill, bool bVehicle)
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
	final void SetIdentification(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112644], params.ptr, cast(void*)0);
	}
	final void SetActiveClass(TrPlayerController PC, int ClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = ClassId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112646], params.ptr, cast(void*)0);
	}
	final void AddRepair(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112649], params.ptr, cast(void*)0);
	}
	final void AddFlagCap(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112651], params.ptr, cast(void*)0);
	}
	final void AddFlagGrab(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112653], params.ptr, cast(void*)0);
	}
	final void AddFlagReturn(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112655], params.ptr, cast(void*)0);
	}
	final void AddMidairKill(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112657], params.ptr, cast(void*)0);
	}
	final void AddVehicleKill(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112659], params.ptr, cast(void*)0);
	}
	final void SetXP(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112661], params.ptr, cast(void*)0);
	}
	final void SetTeam(TrPlayerController PC, int TeamNum)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112664], params.ptr, cast(void*)0);
	}
	final void AddVehicleDestruction(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112667], params.ptr, cast(void*)0);
	}
	final void SetSpeedSkied(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112669], params.ptr, cast(void*)0);
	}
	final void AddDeployableDestruction(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112672], params.ptr, cast(void*)0);
	}
	final void AddCreditsSpent(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112674], params.ptr, cast(void*)0);
	}
	final void SetDistanceKill(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112677], params.ptr, cast(void*)0);
	}
	final void SetSpeedFlagCap(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112680], params.ptr, cast(void*)0);
	}
	final void AddCreditsEarned(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112683], params.ptr, cast(void*)0);
	}
	final void AddDistanceSkied(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112686], params.ptr, cast(void*)0);
	}
	final void SetSpeedFlagGrab(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112689], params.ptr, cast(void*)0);
	}
	final void SetDistanceHeadshot(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112692], params.ptr, cast(void*)0);
	}
	final void FallingDeath(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112695], params.ptr, cast(void*)0);
	}
	final void SkiDistance(TrPlayerController PC, int Distance)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = Distance;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112697], params.ptr, cast(void*)0);
	}
	final void BeltKill(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112700], params.ptr, cast(void*)0);
	}
	final void CallIn(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112702], params.ptr, cast(void*)0);
	}
	final void CallInKill(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112704], params.ptr, cast(void*)0);
	}
	final void RegeneratedToFull(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112706], params.ptr, cast(void*)0);
	}
	final void FlagGrabSpeed(TrPlayerController PC, int Speed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = Speed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112708], params.ptr, cast(void*)0);
	}
	final void VEHICLEKILL(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112711], params.ptr, cast(void*)0);
	}
	final void InvStationVisited(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112713], params.ptr, cast(void*)0);
	}
	final void SkiSpeed(TrPlayerController PC, int Speed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = Speed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112715], params.ptr, cast(void*)0);
	}
	final void BaseUpgrade(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112718], params.ptr, cast(void*)0);
	}
	final void TrackPlayerMovement(TrPlayerController PC, int TimeStamp)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = TimeStamp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112720], params.ptr, cast(void*)0);
	}
	final void AddVehicleSpawn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112723], cast(void*)0, cast(void*)0);
	}
	final void AddGeneratorDestruction()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112724], cast(void*)0, cast(void*)0);
	}
	final void WriteMatchStats()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112725], cast(void*)0, cast(void*)0);
	}
	final void WritePlayerStats(ScriptArray!(PlayerReplicationInfo) PRIArray)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(PlayerReplicationInfo)*)params.ptr = PRIArray;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112726], params.ptr, cast(void*)0);
	}
	final void GameEnd()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112729], cast(void*)0, cast(void*)0);
	}
	final void Flush()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112730], cast(void*)0, cast(void*)0);
	}
}
