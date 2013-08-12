module UnrealScript.TribesGame.TrStatsInterface;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrStatsInterface : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrStatsInterface")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mAddKill;
			ScriptFunction mAddDeath;
			ScriptFunction mAddAssist;
			ScriptFunction mAddAccolade;
			ScriptFunction mAddCredits;
			ScriptFunction mUpdateTimePlayed;
			ScriptFunction mUpdateWeapon;
			ScriptFunction mUpdateDamage;
			ScriptFunction mSetIdentification;
			ScriptFunction mSetActiveClass;
			ScriptFunction mAddRepair;
			ScriptFunction mAddFlagCap;
			ScriptFunction mAddFlagGrab;
			ScriptFunction mAddFlagReturn;
			ScriptFunction mAddMidairKill;
			ScriptFunction mAddVehicleKill;
			ScriptFunction mSetXP;
			ScriptFunction mSetTeam;
			ScriptFunction mAddVehicleDestruction;
			ScriptFunction mSetSpeedSkied;
			ScriptFunction mAddDeployableDestruction;
			ScriptFunction mAddCreditsSpent;
			ScriptFunction mSetDistanceKill;
			ScriptFunction mSetSpeedFlagCap;
			ScriptFunction mAddCreditsEarned;
			ScriptFunction mAddDistanceSkied;
			ScriptFunction mSetSpeedFlagGrab;
			ScriptFunction mSetDistanceHeadshot;
			ScriptFunction mFallingDeath;
			ScriptFunction mSkiDistance;
			ScriptFunction mBeltKill;
			ScriptFunction mCallIn;
			ScriptFunction mCallInKill;
			ScriptFunction mRegeneratedToFull;
			ScriptFunction mFlagGrabSpeed;
			ScriptFunction mVEHICLEKILL;
			ScriptFunction mInvStationVisited;
			ScriptFunction mSkiSpeed;
			ScriptFunction mBaseUpgrade;
			ScriptFunction mTrackPlayerMovement;
			ScriptFunction mAddVehicleSpawn;
			ScriptFunction mAddGeneratorDestruction;
			ScriptFunction mWriteMatchStats;
			ScriptFunction mWritePlayerStats;
			ScriptFunction mGameEnd;
			ScriptFunction mFlush;
		}
		public @property static final
		{
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.Initialize")); }
			ScriptFunction AddKill() { return mAddKill ? mAddKill : (mAddKill = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.AddKill")); }
			ScriptFunction AddDeath() { return mAddDeath ? mAddDeath : (mAddDeath = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.AddDeath")); }
			ScriptFunction AddAssist() { return mAddAssist ? mAddAssist : (mAddAssist = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.AddAssist")); }
			ScriptFunction AddAccolade() { return mAddAccolade ? mAddAccolade : (mAddAccolade = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.AddAccolade")); }
			ScriptFunction AddCredits() { return mAddCredits ? mAddCredits : (mAddCredits = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.AddCredits")); }
			ScriptFunction UpdateTimePlayed() { return mUpdateTimePlayed ? mUpdateTimePlayed : (mUpdateTimePlayed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.UpdateTimePlayed")); }
			ScriptFunction UpdateWeapon() { return mUpdateWeapon ? mUpdateWeapon : (mUpdateWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.UpdateWeapon")); }
			ScriptFunction UpdateDamage() { return mUpdateDamage ? mUpdateDamage : (mUpdateDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.UpdateDamage")); }
			ScriptFunction SetIdentification() { return mSetIdentification ? mSetIdentification : (mSetIdentification = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.SetIdentification")); }
			ScriptFunction SetActiveClass() { return mSetActiveClass ? mSetActiveClass : (mSetActiveClass = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.SetActiveClass")); }
			ScriptFunction AddRepair() { return mAddRepair ? mAddRepair : (mAddRepair = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.AddRepair")); }
			ScriptFunction AddFlagCap() { return mAddFlagCap ? mAddFlagCap : (mAddFlagCap = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.AddFlagCap")); }
			ScriptFunction AddFlagGrab() { return mAddFlagGrab ? mAddFlagGrab : (mAddFlagGrab = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.AddFlagGrab")); }
			ScriptFunction AddFlagReturn() { return mAddFlagReturn ? mAddFlagReturn : (mAddFlagReturn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.AddFlagReturn")); }
			ScriptFunction AddMidairKill() { return mAddMidairKill ? mAddMidairKill : (mAddMidairKill = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.AddMidairKill")); }
			ScriptFunction AddVehicleKill() { return mAddVehicleKill ? mAddVehicleKill : (mAddVehicleKill = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.AddVehicleKill")); }
			ScriptFunction SetXP() { return mSetXP ? mSetXP : (mSetXP = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.SetXP")); }
			ScriptFunction SetTeam() { return mSetTeam ? mSetTeam : (mSetTeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.SetTeam")); }
			ScriptFunction AddVehicleDestruction() { return mAddVehicleDestruction ? mAddVehicleDestruction : (mAddVehicleDestruction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.AddVehicleDestruction")); }
			ScriptFunction SetSpeedSkied() { return mSetSpeedSkied ? mSetSpeedSkied : (mSetSpeedSkied = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.SetSpeedSkied")); }
			ScriptFunction AddDeployableDestruction() { return mAddDeployableDestruction ? mAddDeployableDestruction : (mAddDeployableDestruction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.AddDeployableDestruction")); }
			ScriptFunction AddCreditsSpent() { return mAddCreditsSpent ? mAddCreditsSpent : (mAddCreditsSpent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.AddCreditsSpent")); }
			ScriptFunction SetDistanceKill() { return mSetDistanceKill ? mSetDistanceKill : (mSetDistanceKill = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.SetDistanceKill")); }
			ScriptFunction SetSpeedFlagCap() { return mSetSpeedFlagCap ? mSetSpeedFlagCap : (mSetSpeedFlagCap = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.SetSpeedFlagCap")); }
			ScriptFunction AddCreditsEarned() { return mAddCreditsEarned ? mAddCreditsEarned : (mAddCreditsEarned = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.AddCreditsEarned")); }
			ScriptFunction AddDistanceSkied() { return mAddDistanceSkied ? mAddDistanceSkied : (mAddDistanceSkied = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.AddDistanceSkied")); }
			ScriptFunction SetSpeedFlagGrab() { return mSetSpeedFlagGrab ? mSetSpeedFlagGrab : (mSetSpeedFlagGrab = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.SetSpeedFlagGrab")); }
			ScriptFunction SetDistanceHeadshot() { return mSetDistanceHeadshot ? mSetDistanceHeadshot : (mSetDistanceHeadshot = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.SetDistanceHeadshot")); }
			ScriptFunction FallingDeath() { return mFallingDeath ? mFallingDeath : (mFallingDeath = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.FallingDeath")); }
			ScriptFunction SkiDistance() { return mSkiDistance ? mSkiDistance : (mSkiDistance = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.SkiDistance")); }
			ScriptFunction BeltKill() { return mBeltKill ? mBeltKill : (mBeltKill = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.BeltKill")); }
			ScriptFunction CallIn() { return mCallIn ? mCallIn : (mCallIn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.CallIn")); }
			ScriptFunction CallInKill() { return mCallInKill ? mCallInKill : (mCallInKill = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.CallInKill")); }
			ScriptFunction RegeneratedToFull() { return mRegeneratedToFull ? mRegeneratedToFull : (mRegeneratedToFull = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.RegeneratedToFull")); }
			ScriptFunction FlagGrabSpeed() { return mFlagGrabSpeed ? mFlagGrabSpeed : (mFlagGrabSpeed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.FlagGrabSpeed")); }
			ScriptFunction VEHICLEKILL() { return mVEHICLEKILL ? mVEHICLEKILL : (mVEHICLEKILL = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.VEHICLEKILL")); }
			ScriptFunction InvStationVisited() { return mInvStationVisited ? mInvStationVisited : (mInvStationVisited = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.InvStationVisited")); }
			ScriptFunction SkiSpeed() { return mSkiSpeed ? mSkiSpeed : (mSkiSpeed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.SkiSpeed")); }
			ScriptFunction BaseUpgrade() { return mBaseUpgrade ? mBaseUpgrade : (mBaseUpgrade = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.BaseUpgrade")); }
			ScriptFunction TrackPlayerMovement() { return mTrackPlayerMovement ? mTrackPlayerMovement : (mTrackPlayerMovement = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.TrackPlayerMovement")); }
			ScriptFunction AddVehicleSpawn() { return mAddVehicleSpawn ? mAddVehicleSpawn : (mAddVehicleSpawn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.AddVehicleSpawn")); }
			ScriptFunction AddGeneratorDestruction() { return mAddGeneratorDestruction ? mAddGeneratorDestruction : (mAddGeneratorDestruction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.AddGeneratorDestruction")); }
			ScriptFunction WriteMatchStats() { return mWriteMatchStats ? mWriteMatchStats : (mWriteMatchStats = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.WriteMatchStats")); }
			ScriptFunction WritePlayerStats() { return mWritePlayerStats ? mWritePlayerStats : (mWritePlayerStats = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.WritePlayerStats")); }
			ScriptFunction GameEnd() { return mGameEnd ? mGameEnd : (mGameEnd = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.GameEnd")); }
			ScriptFunction Flush() { return mFlush ? mFlush : (mFlush = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStatsInterface.Flush")); }
		}
	}
final:
	void Initialize(OnlineSubsystem Sub)
	{
		ubyte params[4];
		params[] = 0;
		*cast(OnlineSubsystem*)params.ptr = Sub;
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, params.ptr, cast(void*)0);
	}
	void AddKill(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddKill, params.ptr, cast(void*)0);
	}
	void AddDeath(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddDeath, params.ptr, cast(void*)0);
	}
	void AddAssist(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddAssist, params.ptr, cast(void*)0);
	}
	void AddAccolade(TrPlayerController PC, int Id, int ActivityId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = Id;
		*cast(int*)&params[8] = ActivityId;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddAccolade, params.ptr, cast(void*)0);
	}
	void AddCredits(TrPlayerController PC, int val, bool bSpent, bool bFree)
	{
		ubyte params[16];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		*cast(bool*)&params[8] = bSpent;
		*cast(bool*)&params[12] = bFree;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddCredits, params.ptr, cast(void*)0);
	}
	void UpdateTimePlayed(TrPlayerController PC, int TimeUsed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = TimeUsed;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateTimePlayed, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateWeapon, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateDamage, params.ptr, cast(void*)0);
	}
	void SetIdentification(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetIdentification, params.ptr, cast(void*)0);
	}
	void SetActiveClass(TrPlayerController PC, int ClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = ClassId;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetActiveClass, params.ptr, cast(void*)0);
	}
	void AddRepair(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddRepair, params.ptr, cast(void*)0);
	}
	void AddFlagCap(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddFlagCap, params.ptr, cast(void*)0);
	}
	void AddFlagGrab(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddFlagGrab, params.ptr, cast(void*)0);
	}
	void AddFlagReturn(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddFlagReturn, params.ptr, cast(void*)0);
	}
	void AddMidairKill(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddMidairKill, params.ptr, cast(void*)0);
	}
	void AddVehicleKill(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddVehicleKill, params.ptr, cast(void*)0);
	}
	void SetXP(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetXP, params.ptr, cast(void*)0);
	}
	void SetTeam(TrPlayerController PC, int TeamNum)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTeam, params.ptr, cast(void*)0);
	}
	void AddVehicleDestruction(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddVehicleDestruction, params.ptr, cast(void*)0);
	}
	void SetSpeedSkied(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpeedSkied, params.ptr, cast(void*)0);
	}
	void AddDeployableDestruction(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddDeployableDestruction, params.ptr, cast(void*)0);
	}
	void AddCreditsSpent(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddCreditsSpent, params.ptr, cast(void*)0);
	}
	void SetDistanceKill(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDistanceKill, params.ptr, cast(void*)0);
	}
	void SetSpeedFlagCap(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpeedFlagCap, params.ptr, cast(void*)0);
	}
	void AddCreditsEarned(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddCreditsEarned, params.ptr, cast(void*)0);
	}
	void AddDistanceSkied(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddDistanceSkied, params.ptr, cast(void*)0);
	}
	void SetSpeedFlagGrab(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpeedFlagGrab, params.ptr, cast(void*)0);
	}
	void SetDistanceHeadshot(TrPlayerController PC, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDistanceHeadshot, params.ptr, cast(void*)0);
	}
	void FallingDeath(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.FallingDeath, params.ptr, cast(void*)0);
	}
	void SkiDistance(TrPlayerController PC, int Distance)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = Distance;
		(cast(ScriptObject)this).ProcessEvent(Functions.SkiDistance, params.ptr, cast(void*)0);
	}
	void BeltKill(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.BeltKill, params.ptr, cast(void*)0);
	}
	void CallIn(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.CallIn, params.ptr, cast(void*)0);
	}
	void CallInKill(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.CallInKill, params.ptr, cast(void*)0);
	}
	void RegeneratedToFull(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.RegeneratedToFull, params.ptr, cast(void*)0);
	}
	void FlagGrabSpeed(TrPlayerController PC, int Speed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = Speed;
		(cast(ScriptObject)this).ProcessEvent(Functions.FlagGrabSpeed, params.ptr, cast(void*)0);
	}
	void VEHICLEKILL(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.VEHICLEKILL, params.ptr, cast(void*)0);
	}
	void InvStationVisited(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.InvStationVisited, params.ptr, cast(void*)0);
	}
	void SkiSpeed(TrPlayerController PC, int Speed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = Speed;
		(cast(ScriptObject)this).ProcessEvent(Functions.SkiSpeed, params.ptr, cast(void*)0);
	}
	void BaseUpgrade(TrPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.BaseUpgrade, params.ptr, cast(void*)0);
	}
	void TrackPlayerMovement(TrPlayerController PC, int TimeStamp)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = TimeStamp;
		(cast(ScriptObject)this).ProcessEvent(Functions.TrackPlayerMovement, params.ptr, cast(void*)0);
	}
	void AddVehicleSpawn()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AddVehicleSpawn, cast(void*)0, cast(void*)0);
	}
	void AddGeneratorDestruction()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AddGeneratorDestruction, cast(void*)0, cast(void*)0);
	}
	void WriteMatchStats()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.WriteMatchStats, cast(void*)0, cast(void*)0);
	}
	void WritePlayerStats(ScriptArray!(PlayerReplicationInfo) PRIArray)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(PlayerReplicationInfo)*)params.ptr = PRIArray;
		(cast(ScriptObject)this).ProcessEvent(Functions.WritePlayerStats, params.ptr, cast(void*)0);
	}
	void GameEnd()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.GameEnd, cast(void*)0, cast(void*)0);
	}
	void Flush()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Flush, cast(void*)0, cast(void*)0);
	}
}
