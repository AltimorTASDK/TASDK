module UnrealScript.TribesGame.TrDevice_Deployable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.TribesGame.TrDeployable;
import UnrealScript.TribesGame.TrDevice;
import UnrealScript.TribesGame.TrDeployableHologram;

extern(C++) interface TrDevice_Deployable : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_Deployable")()); }
	private static __gshared TrDevice_Deployable mDefaultProperties;
	@property final static TrDevice_Deployable DefaultProperties() { mixin(MGDPC!(TrDevice_Deployable, "TrDevice_Deployable TribesGame.Default__TrDevice_Deployable")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetAmmoCount;
			ScriptFunction mCanAttemptDeploy;
			ScriptFunction mUpdateDeployModeStatus;
			ScriptFunction mTickInHandWeapon;
			ScriptFunction mDeploy;
			ScriptFunction mIsValidDeployTerrain;
			ScriptFunction mIsValidDeployVolume;
			ScriptFunction mIsValidDeployProximity;
			ScriptFunction mIsValidOutsideCheck;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mUpdateReplicatedCarriedAmmo;
			ScriptFunction mOnSwitchToWeapon;
			ScriptFunction mOnSwitchAwayFromWeapon;
			ScriptFunction mCheckInHandWeapon;
			ScriptFunction mDestroyed;
			ScriptFunction mHolderEnteredVehicle;
			ScriptFunction mResumeInhandWeapon;
			ScriptFunction mTryPutDown;
			ScriptFunction mGetMaxDeployedLimit;
			ScriptFunction mIsDeployableOldest;
			ScriptFunction mBelowMaxCountLimit;
			ScriptFunction mConsumeAmmo;
			ScriptFunction mAddCarriedAmmo;
			ScriptFunction mAddAmmo;
			ScriptFunction mEnterDeployMode;
			ScriptFunction mExitDeployMode;
			ScriptFunction mAttachWeaponTo;
			ScriptFunction mEndZoom;
			ScriptFunction mChangeVisibility;
			ScriptFunction mEnterDeployModeDisplay;
			ScriptFunction mExitDeployModeDisplay;
			ScriptFunction mStartFire;
			ScriptFunction mIsValidDesiredDeploy;
			ScriptFunction mServerRequestDeploy;
			ScriptFunction mCustomFire;
			ScriptFunction mCanAutoDeviceFireNow;
			ScriptFunction mHasAnyAmmo;
			ScriptFunction mHasAmmo;
		}
		public @property static final
		{
			ScriptFunction GetAmmoCount() { mixin(MGF!("mGetAmmoCount", "Function TribesGame.TrDevice_Deployable.GetAmmoCount")()); }
			ScriptFunction CanAttemptDeploy() { mixin(MGF!("mCanAttemptDeploy", "Function TribesGame.TrDevice_Deployable.CanAttemptDeploy")()); }
			ScriptFunction UpdateDeployModeStatus() { mixin(MGF!("mUpdateDeployModeStatus", "Function TribesGame.TrDevice_Deployable.UpdateDeployModeStatus")()); }
			ScriptFunction TickInHandWeapon() { mixin(MGF!("mTickInHandWeapon", "Function TribesGame.TrDevice_Deployable.TickInHandWeapon")()); }
			ScriptFunction Deploy() { mixin(MGF!("mDeploy", "Function TribesGame.TrDevice_Deployable.Deploy")()); }
			ScriptFunction IsValidDeployTerrain() { mixin(MGF!("mIsValidDeployTerrain", "Function TribesGame.TrDevice_Deployable.IsValidDeployTerrain")()); }
			ScriptFunction IsValidDeployVolume() { mixin(MGF!("mIsValidDeployVolume", "Function TribesGame.TrDevice_Deployable.IsValidDeployVolume")()); }
			ScriptFunction IsValidDeployProximity() { mixin(MGF!("mIsValidDeployProximity", "Function TribesGame.TrDevice_Deployable.IsValidDeployProximity")()); }
			ScriptFunction IsValidOutsideCheck() { mixin(MGF!("mIsValidOutsideCheck", "Function TribesGame.TrDevice_Deployable.IsValidOutsideCheck")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function TribesGame.TrDevice_Deployable.ReplicatedEvent")()); }
			ScriptFunction UpdateReplicatedCarriedAmmo() { mixin(MGF!("mUpdateReplicatedCarriedAmmo", "Function TribesGame.TrDevice_Deployable.UpdateReplicatedCarriedAmmo")()); }
			ScriptFunction OnSwitchToWeapon() { mixin(MGF!("mOnSwitchToWeapon", "Function TribesGame.TrDevice_Deployable.OnSwitchToWeapon")()); }
			ScriptFunction OnSwitchAwayFromWeapon() { mixin(MGF!("mOnSwitchAwayFromWeapon", "Function TribesGame.TrDevice_Deployable.OnSwitchAwayFromWeapon")()); }
			ScriptFunction CheckInHandWeapon() { mixin(MGF!("mCheckInHandWeapon", "Function TribesGame.TrDevice_Deployable.CheckInHandWeapon")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function TribesGame.TrDevice_Deployable.Destroyed")()); }
			ScriptFunction HolderEnteredVehicle() { mixin(MGF!("mHolderEnteredVehicle", "Function TribesGame.TrDevice_Deployable.HolderEnteredVehicle")()); }
			ScriptFunction ResumeInhandWeapon() { mixin(MGF!("mResumeInhandWeapon", "Function TribesGame.TrDevice_Deployable.ResumeInhandWeapon")()); }
			ScriptFunction TryPutDown() { mixin(MGF!("mTryPutDown", "Function TribesGame.TrDevice_Deployable.TryPutDown")()); }
			ScriptFunction GetMaxDeployedLimit() { mixin(MGF!("mGetMaxDeployedLimit", "Function TribesGame.TrDevice_Deployable.GetMaxDeployedLimit")()); }
			ScriptFunction IsDeployableOldest() { mixin(MGF!("mIsDeployableOldest", "Function TribesGame.TrDevice_Deployable.IsDeployableOldest")()); }
			ScriptFunction BelowMaxCountLimit() { mixin(MGF!("mBelowMaxCountLimit", "Function TribesGame.TrDevice_Deployable.BelowMaxCountLimit")()); }
			ScriptFunction ConsumeAmmo() { mixin(MGF!("mConsumeAmmo", "Function TribesGame.TrDevice_Deployable.ConsumeAmmo")()); }
			ScriptFunction AddCarriedAmmo() { mixin(MGF!("mAddCarriedAmmo", "Function TribesGame.TrDevice_Deployable.AddCarriedAmmo")()); }
			ScriptFunction AddAmmo() { mixin(MGF!("mAddAmmo", "Function TribesGame.TrDevice_Deployable.AddAmmo")()); }
			ScriptFunction EnterDeployMode() { mixin(MGF!("mEnterDeployMode", "Function TribesGame.TrDevice_Deployable.EnterDeployMode")()); }
			ScriptFunction ExitDeployMode() { mixin(MGF!("mExitDeployMode", "Function TribesGame.TrDevice_Deployable.ExitDeployMode")()); }
			ScriptFunction AttachWeaponTo() { mixin(MGF!("mAttachWeaponTo", "Function TribesGame.TrDevice_Deployable.AttachWeaponTo")()); }
			ScriptFunction EndZoom() { mixin(MGF!("mEndZoom", "Function TribesGame.TrDevice_Deployable.EndZoom")()); }
			ScriptFunction ChangeVisibility() { mixin(MGF!("mChangeVisibility", "Function TribesGame.TrDevice_Deployable.ChangeVisibility")()); }
			ScriptFunction EnterDeployModeDisplay() { mixin(MGF!("mEnterDeployModeDisplay", "Function TribesGame.TrDevice_Deployable.EnterDeployModeDisplay")()); }
			ScriptFunction ExitDeployModeDisplay() { mixin(MGF!("mExitDeployModeDisplay", "Function TribesGame.TrDevice_Deployable.ExitDeployModeDisplay")()); }
			ScriptFunction StartFire() { mixin(MGF!("mStartFire", "Function TribesGame.TrDevice_Deployable.StartFire")()); }
			ScriptFunction IsValidDesiredDeploy() { mixin(MGF!("mIsValidDesiredDeploy", "Function TribesGame.TrDevice_Deployable.IsValidDesiredDeploy")()); }
			ScriptFunction ServerRequestDeploy() { mixin(MGF!("mServerRequestDeploy", "Function TribesGame.TrDevice_Deployable.ServerRequestDeploy")()); }
			ScriptFunction CustomFire() { mixin(MGF!("mCustomFire", "Function TribesGame.TrDevice_Deployable.CustomFire")()); }
			ScriptFunction CanAutoDeviceFireNow() { mixin(MGF!("mCanAutoDeviceFireNow", "Function TribesGame.TrDevice_Deployable.CanAutoDeviceFireNow")()); }
			ScriptFunction HasAnyAmmo() { mixin(MGF!("mHasAnyAmmo", "Function TribesGame.TrDevice_Deployable.HasAnyAmmo")()); }
			ScriptFunction HasAmmo() { mixin(MGF!("mHasAmmo", "Function TribesGame.TrDevice_Deployable.HasAmmo")()); }
		}
	}
	static struct Constants
	{
		enum
		{
			DEPLOYMODE_GROUND_DELTA_CHECK_DIST = 60.0f,
			DEPLOYMODE_MINIMUM_RADIUS_CHECK_DIST = 30.0f,
		}
	}
	static struct WeaponFiring
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrDevice_Deployable.WeaponFiring")()); }
	}
	@property final
	{
		auto ref
		{
			Rotator m_rDesiredPlacementRotation() { mixin(MGPC!("Rotator", 2212)()); }
			Vector m_vDesiredPlacementLocation() { mixin(MGPC!("Vector", 2200)()); }
			float m_fOutsideCheckDistance() { mixin(MGPC!("float", 2192)()); }
			float m_fOtherDeployableProximityCheck() { mixin(MGPC!("float", 2188)()); }
			Vector m_vDeployVolumePlacementExtent() { mixin(MGPC!("Vector", 2176)()); }
			Vector m_vPlacementExtent() { mixin(MGPC!("Vector", 2164)()); }
			float m_fPlacementScale() { mixin(MGPC!("float", 2160)()); }
			int m_nPerPlayerMaxDeployed() { mixin(MGPC!("int", 2156)()); }
			ScriptClass c_DeployableHologramClass() { mixin(MGPC!("ScriptClass", 2152)()); }
			TrDeployableHologram c_DeployableHologram() { mixin(MGPC!("TrDeployableHologram", 2148)()); }
		}
		bool m_bIgnoreCollisionForPlacement() { mixin(MGBPC!(2196, 0x1)()); }
		bool m_bIgnoreCollisionForPlacement(bool val) { mixin(MSBPC!(2196, 0x1)()); }
	}
final:
	int GetAmmoCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAmmoCount, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool CanAttemptDeploy()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanAttemptDeploy, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void UpdateDeployModeStatus()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateDeployModeStatus, cast(void*)0, cast(void*)0);
	}
	void TickInHandWeapon(float DeltaSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.TickInHandWeapon, params.ptr, cast(void*)0);
	}
	TrDeployable Deploy()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.Deploy, params.ptr, cast(void*)0);
		return *cast(TrDeployable*)params.ptr;
	}
	bool IsValidDeployTerrain(ref Vector OutLocation, ref Rotator OutRotation, bool* VerificationCheck = null)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = OutLocation;
		*cast(Rotator*)&params[12] = OutRotation;
		if (VerificationCheck !is null)
			*cast(bool*)&params[24] = *VerificationCheck;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsValidDeployTerrain, params.ptr, cast(void*)0);
		OutLocation = *cast(Vector*)params.ptr;
		OutRotation = *cast(Rotator*)&params[12];
		return *cast(bool*)&params[28];
	}
	bool IsValidDeployVolume(ref Vector OutLocation, ref Rotator OutRotation, bool* VerificationCheck = null)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = OutLocation;
		*cast(Rotator*)&params[12] = OutRotation;
		if (VerificationCheck !is null)
			*cast(bool*)&params[24] = *VerificationCheck;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsValidDeployVolume, params.ptr, cast(void*)0);
		OutLocation = *cast(Vector*)params.ptr;
		OutRotation = *cast(Rotator*)&params[12];
		return *cast(bool*)&params[28];
	}
	bool IsValidDeployProximity(Vector DeployLocation, bool* VerificationCheck = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = DeployLocation;
		if (VerificationCheck !is null)
			*cast(bool*)&params[12] = *VerificationCheck;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsValidDeployProximity, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool IsValidOutsideCheck(Vector DeployLocation, bool* VerificationCheck = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = DeployLocation;
		if (VerificationCheck !is null)
			*cast(bool*)&params[12] = *VerificationCheck;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsValidOutsideCheck, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void UpdateReplicatedCarriedAmmo()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateReplicatedCarriedAmmo, cast(void*)0, cast(void*)0);
	}
	void OnSwitchToWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSwitchToWeapon, cast(void*)0, cast(void*)0);
	}
	void OnSwitchAwayFromWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSwitchAwayFromWeapon, cast(void*)0, cast(void*)0);
	}
	void CheckInHandWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckInHandWeapon, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void HolderEnteredVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HolderEnteredVehicle, cast(void*)0, cast(void*)0);
	}
	void ResumeInhandWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResumeInhandWeapon, cast(void*)0, cast(void*)0);
	}
	bool TryPutDown()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.TryPutDown, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	int GetMaxDeployedLimit()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMaxDeployedLimit, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool IsDeployableOldest(TrDeployable OtherDep)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrDeployable*)params.ptr = OtherDep;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsDeployableOldest, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool BelowMaxCountLimit(bool bDestroyOldest)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bDestroyOldest;
		(cast(ScriptObject)this).ProcessEvent(Functions.BelowMaxCountLimit, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ConsumeAmmo(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConsumeAmmo, params.ptr, cast(void*)0);
	}
	int AddCarriedAmmo(int Amount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddCarriedAmmo, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int AddAmmo(int Amount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddAmmo, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void EnterDeployMode()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EnterDeployMode, cast(void*)0, cast(void*)0);
	}
	void ExitDeployMode()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ExitDeployMode, cast(void*)0, cast(void*)0);
	}
	void AttachWeaponTo(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* MeshCpnt, ScriptName* SocketName = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = MeshCpnt;
		if (SocketName !is null)
			*cast(ScriptName*)&params[4] = *SocketName;
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachWeaponTo, params.ptr, cast(void*)0);
	}
	void EndZoom(UTPlayerController PC, bool* bReturningTo3P = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		if (bReturningTo3P !is null)
			*cast(bool*)&params[4] = *bReturningTo3P;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndZoom, params.ptr, cast(void*)0);
	}
	void ChangeVisibility(bool bIsVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangeVisibility, params.ptr, cast(void*)0);
	}
	void EnterDeployModeDisplay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EnterDeployModeDisplay, cast(void*)0, cast(void*)0);
	}
	void ExitDeployModeDisplay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ExitDeployModeDisplay, cast(void*)0, cast(void*)0);
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartFire, params.ptr, cast(void*)0);
	}
	bool IsValidDesiredDeploy(Vector DesiredPlacement, Rotator DesiredRotation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = DesiredPlacement;
		*cast(Rotator*)&params[12] = DesiredRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsValidDesiredDeploy, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void ServerRequestDeploy(Vector DesiredPlacement, Rotator DesiredRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = DesiredPlacement;
		*cast(Rotator*)&params[12] = DesiredRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerRequestDeploy, params.ptr, cast(void*)0);
	}
	void CustomFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CustomFire, cast(void*)0, cast(void*)0);
	}
	bool CanAutoDeviceFireNow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanAutoDeviceFireNow, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool HasAnyAmmo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasAnyAmmo, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool HasAmmo(ubyte FireModeNum, int* Amount = null)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = FireModeNum;
		if (Amount !is null)
			*cast(int*)&params[4] = *Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasAmmo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}
