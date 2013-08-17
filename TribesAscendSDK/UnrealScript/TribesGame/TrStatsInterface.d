module UnrealScript.TribesGame.TrStatsInterface;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrStatsInterface : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrStatsInterface")()); }
	private static __gshared TrStatsInterface mDefaultProperties;
	@property final static TrStatsInterface DefaultProperties() { mixin(MGDPC!(TrStatsInterface, "TrStatsInterface TribesGame.Default__TrStatsInterface")()); }
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
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.TrStatsInterface.Initialize")()); }
			ScriptFunction AddKill() { mixin(MGF!("mAddKill", "Function TribesGame.TrStatsInterface.AddKill")()); }
			ScriptFunction AddDeath() { mixin(MGF!("mAddDeath", "Function TribesGame.TrStatsInterface.AddDeath")()); }
			ScriptFunction AddAssist() { mixin(MGF!("mAddAssist", "Function TribesGame.TrStatsInterface.AddAssist")()); }
			ScriptFunction AddAccolade() { mixin(MGF!("mAddAccolade", "Function TribesGame.TrStatsInterface.AddAccolade")()); }
			ScriptFunction AddCredits() { mixin(MGF!("mAddCredits", "Function TribesGame.TrStatsInterface.AddCredits")()); }
			ScriptFunction UpdateTimePlayed() { mixin(MGF!("mUpdateTimePlayed", "Function TribesGame.TrStatsInterface.UpdateTimePlayed")()); }
			ScriptFunction UpdateWeapon() { mixin(MGF!("mUpdateWeapon", "Function TribesGame.TrStatsInterface.UpdateWeapon")()); }
			ScriptFunction UpdateDamage() { mixin(MGF!("mUpdateDamage", "Function TribesGame.TrStatsInterface.UpdateDamage")()); }
			ScriptFunction SetIdentification() { mixin(MGF!("mSetIdentification", "Function TribesGame.TrStatsInterface.SetIdentification")()); }
			ScriptFunction SetActiveClass() { mixin(MGF!("mSetActiveClass", "Function TribesGame.TrStatsInterface.SetActiveClass")()); }
			ScriptFunction AddRepair() { mixin(MGF!("mAddRepair", "Function TribesGame.TrStatsInterface.AddRepair")()); }
			ScriptFunction AddFlagCap() { mixin(MGF!("mAddFlagCap", "Function TribesGame.TrStatsInterface.AddFlagCap")()); }
			ScriptFunction AddFlagGrab() { mixin(MGF!("mAddFlagGrab", "Function TribesGame.TrStatsInterface.AddFlagGrab")()); }
			ScriptFunction AddFlagReturn() { mixin(MGF!("mAddFlagReturn", "Function TribesGame.TrStatsInterface.AddFlagReturn")()); }
			ScriptFunction AddMidairKill() { mixin(MGF!("mAddMidairKill", "Function TribesGame.TrStatsInterface.AddMidairKill")()); }
			ScriptFunction AddVehicleKill() { mixin(MGF!("mAddVehicleKill", "Function TribesGame.TrStatsInterface.AddVehicleKill")()); }
			ScriptFunction SetXP() { mixin(MGF!("mSetXP", "Function TribesGame.TrStatsInterface.SetXP")()); }
			ScriptFunction SetTeam() { mixin(MGF!("mSetTeam", "Function TribesGame.TrStatsInterface.SetTeam")()); }
			ScriptFunction AddVehicleDestruction() { mixin(MGF!("mAddVehicleDestruction", "Function TribesGame.TrStatsInterface.AddVehicleDestruction")()); }
			ScriptFunction SetSpeedSkied() { mixin(MGF!("mSetSpeedSkied", "Function TribesGame.TrStatsInterface.SetSpeedSkied")()); }
			ScriptFunction AddDeployableDestruction() { mixin(MGF!("mAddDeployableDestruction", "Function TribesGame.TrStatsInterface.AddDeployableDestruction")()); }
			ScriptFunction AddCreditsSpent() { mixin(MGF!("mAddCreditsSpent", "Function TribesGame.TrStatsInterface.AddCreditsSpent")()); }
			ScriptFunction SetDistanceKill() { mixin(MGF!("mSetDistanceKill", "Function TribesGame.TrStatsInterface.SetDistanceKill")()); }
			ScriptFunction SetSpeedFlagCap() { mixin(MGF!("mSetSpeedFlagCap", "Function TribesGame.TrStatsInterface.SetSpeedFlagCap")()); }
			ScriptFunction AddCreditsEarned() { mixin(MGF!("mAddCreditsEarned", "Function TribesGame.TrStatsInterface.AddCreditsEarned")()); }
			ScriptFunction AddDistanceSkied() { mixin(MGF!("mAddDistanceSkied", "Function TribesGame.TrStatsInterface.AddDistanceSkied")()); }
			ScriptFunction SetSpeedFlagGrab() { mixin(MGF!("mSetSpeedFlagGrab", "Function TribesGame.TrStatsInterface.SetSpeedFlagGrab")()); }
			ScriptFunction SetDistanceHeadshot() { mixin(MGF!("mSetDistanceHeadshot", "Function TribesGame.TrStatsInterface.SetDistanceHeadshot")()); }
			ScriptFunction FallingDeath() { mixin(MGF!("mFallingDeath", "Function TribesGame.TrStatsInterface.FallingDeath")()); }
			ScriptFunction SkiDistance() { mixin(MGF!("mSkiDistance", "Function TribesGame.TrStatsInterface.SkiDistance")()); }
			ScriptFunction BeltKill() { mixin(MGF!("mBeltKill", "Function TribesGame.TrStatsInterface.BeltKill")()); }
			ScriptFunction CallIn() { mixin(MGF!("mCallIn", "Function TribesGame.TrStatsInterface.CallIn")()); }
			ScriptFunction CallInKill() { mixin(MGF!("mCallInKill", "Function TribesGame.TrStatsInterface.CallInKill")()); }
			ScriptFunction RegeneratedToFull() { mixin(MGF!("mRegeneratedToFull", "Function TribesGame.TrStatsInterface.RegeneratedToFull")()); }
			ScriptFunction FlagGrabSpeed() { mixin(MGF!("mFlagGrabSpeed", "Function TribesGame.TrStatsInterface.FlagGrabSpeed")()); }
			ScriptFunction VEHICLEKILL() { mixin(MGF!("mVEHICLEKILL", "Function TribesGame.TrStatsInterface.VEHICLEKILL")()); }
			ScriptFunction InvStationVisited() { mixin(MGF!("mInvStationVisited", "Function TribesGame.TrStatsInterface.InvStationVisited")()); }
			ScriptFunction SkiSpeed() { mixin(MGF!("mSkiSpeed", "Function TribesGame.TrStatsInterface.SkiSpeed")()); }
			ScriptFunction BaseUpgrade() { mixin(MGF!("mBaseUpgrade", "Function TribesGame.TrStatsInterface.BaseUpgrade")()); }
			ScriptFunction TrackPlayerMovement() { mixin(MGF!("mTrackPlayerMovement", "Function TribesGame.TrStatsInterface.TrackPlayerMovement")()); }
			ScriptFunction AddVehicleSpawn() { mixin(MGF!("mAddVehicleSpawn", "Function TribesGame.TrStatsInterface.AddVehicleSpawn")()); }
			ScriptFunction AddGeneratorDestruction() { mixin(MGF!("mAddGeneratorDestruction", "Function TribesGame.TrStatsInterface.AddGeneratorDestruction")()); }
			ScriptFunction WriteMatchStats() { mixin(MGF!("mWriteMatchStats", "Function TribesGame.TrStatsInterface.WriteMatchStats")()); }
			ScriptFunction WritePlayerStats() { mixin(MGF!("mWritePlayerStats", "Function TribesGame.TrStatsInterface.WritePlayerStats")()); }
			ScriptFunction GameEnd() { mixin(MGF!("mGameEnd", "Function TribesGame.TrStatsInterface.GameEnd")()); }
			ScriptFunction Flush() { mixin(MGF!("mFlush", "Function TribesGame.TrStatsInterface.Flush")()); }
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
