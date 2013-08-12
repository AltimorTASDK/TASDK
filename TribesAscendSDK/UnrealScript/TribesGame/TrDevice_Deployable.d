module UnrealScript.TribesGame.TrDevice_Deployable;

import ScriptClasses;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.TribesGame.TrDeployable;
import UnrealScript.TribesGame.TrDevice;
import UnrealScript.TribesGame.TrDeployableHologram;

extern(C++) interface TrDevice_Deployable : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_Deployable")); }
	private static __gshared TrDevice_Deployable mDefaultProperties;
	@property final static TrDevice_Deployable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_Deployable)("TrDevice_Deployable TribesGame.Default__TrDevice_Deployable")); }
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
			ScriptFunction GetAmmoCount() { return mGetAmmoCount ? mGetAmmoCount : (mGetAmmoCount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.GetAmmoCount")); }
			ScriptFunction CanAttemptDeploy() { return mCanAttemptDeploy ? mCanAttemptDeploy : (mCanAttemptDeploy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.CanAttemptDeploy")); }
			ScriptFunction UpdateDeployModeStatus() { return mUpdateDeployModeStatus ? mUpdateDeployModeStatus : (mUpdateDeployModeStatus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.UpdateDeployModeStatus")); }
			ScriptFunction TickInHandWeapon() { return mTickInHandWeapon ? mTickInHandWeapon : (mTickInHandWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.TickInHandWeapon")); }
			ScriptFunction Deploy() { return mDeploy ? mDeploy : (mDeploy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.Deploy")); }
			ScriptFunction IsValidDeployTerrain() { return mIsValidDeployTerrain ? mIsValidDeployTerrain : (mIsValidDeployTerrain = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.IsValidDeployTerrain")); }
			ScriptFunction IsValidDeployVolume() { return mIsValidDeployVolume ? mIsValidDeployVolume : (mIsValidDeployVolume = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.IsValidDeployVolume")); }
			ScriptFunction IsValidDeployProximity() { return mIsValidDeployProximity ? mIsValidDeployProximity : (mIsValidDeployProximity = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.IsValidDeployProximity")); }
			ScriptFunction IsValidOutsideCheck() { return mIsValidOutsideCheck ? mIsValidOutsideCheck : (mIsValidOutsideCheck = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.IsValidOutsideCheck")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.ReplicatedEvent")); }
			ScriptFunction UpdateReplicatedCarriedAmmo() { return mUpdateReplicatedCarriedAmmo ? mUpdateReplicatedCarriedAmmo : (mUpdateReplicatedCarriedAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.UpdateReplicatedCarriedAmmo")); }
			ScriptFunction OnSwitchToWeapon() { return mOnSwitchToWeapon ? mOnSwitchToWeapon : (mOnSwitchToWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.OnSwitchToWeapon")); }
			ScriptFunction OnSwitchAwayFromWeapon() { return mOnSwitchAwayFromWeapon ? mOnSwitchAwayFromWeapon : (mOnSwitchAwayFromWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.OnSwitchAwayFromWeapon")); }
			ScriptFunction CheckInHandWeapon() { return mCheckInHandWeapon ? mCheckInHandWeapon : (mCheckInHandWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.CheckInHandWeapon")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.Destroyed")); }
			ScriptFunction HolderEnteredVehicle() { return mHolderEnteredVehicle ? mHolderEnteredVehicle : (mHolderEnteredVehicle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.HolderEnteredVehicle")); }
			ScriptFunction ResumeInhandWeapon() { return mResumeInhandWeapon ? mResumeInhandWeapon : (mResumeInhandWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.ResumeInhandWeapon")); }
			ScriptFunction TryPutDown() { return mTryPutDown ? mTryPutDown : (mTryPutDown = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.TryPutDown")); }
			ScriptFunction GetMaxDeployedLimit() { return mGetMaxDeployedLimit ? mGetMaxDeployedLimit : (mGetMaxDeployedLimit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.GetMaxDeployedLimit")); }
			ScriptFunction IsDeployableOldest() { return mIsDeployableOldest ? mIsDeployableOldest : (mIsDeployableOldest = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.IsDeployableOldest")); }
			ScriptFunction BelowMaxCountLimit() { return mBelowMaxCountLimit ? mBelowMaxCountLimit : (mBelowMaxCountLimit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.BelowMaxCountLimit")); }
			ScriptFunction ConsumeAmmo() { return mConsumeAmmo ? mConsumeAmmo : (mConsumeAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.ConsumeAmmo")); }
			ScriptFunction AddCarriedAmmo() { return mAddCarriedAmmo ? mAddCarriedAmmo : (mAddCarriedAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.AddCarriedAmmo")); }
			ScriptFunction AddAmmo() { return mAddAmmo ? mAddAmmo : (mAddAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.AddAmmo")); }
			ScriptFunction EnterDeployMode() { return mEnterDeployMode ? mEnterDeployMode : (mEnterDeployMode = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.EnterDeployMode")); }
			ScriptFunction ExitDeployMode() { return mExitDeployMode ? mExitDeployMode : (mExitDeployMode = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.ExitDeployMode")); }
			ScriptFunction AttachWeaponTo() { return mAttachWeaponTo ? mAttachWeaponTo : (mAttachWeaponTo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.AttachWeaponTo")); }
			ScriptFunction EndZoom() { return mEndZoom ? mEndZoom : (mEndZoom = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.EndZoom")); }
			ScriptFunction ChangeVisibility() { return mChangeVisibility ? mChangeVisibility : (mChangeVisibility = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.ChangeVisibility")); }
			ScriptFunction EnterDeployModeDisplay() { return mEnterDeployModeDisplay ? mEnterDeployModeDisplay : (mEnterDeployModeDisplay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.EnterDeployModeDisplay")); }
			ScriptFunction ExitDeployModeDisplay() { return mExitDeployModeDisplay ? mExitDeployModeDisplay : (mExitDeployModeDisplay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.ExitDeployModeDisplay")); }
			ScriptFunction StartFire() { return mStartFire ? mStartFire : (mStartFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.StartFire")); }
			ScriptFunction IsValidDesiredDeploy() { return mIsValidDesiredDeploy ? mIsValidDesiredDeploy : (mIsValidDesiredDeploy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.IsValidDesiredDeploy")); }
			ScriptFunction ServerRequestDeploy() { return mServerRequestDeploy ? mServerRequestDeploy : (mServerRequestDeploy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.ServerRequestDeploy")); }
			ScriptFunction CustomFire() { return mCustomFire ? mCustomFire : (mCustomFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.CustomFire")); }
			ScriptFunction CanAutoDeviceFireNow() { return mCanAutoDeviceFireNow ? mCanAutoDeviceFireNow : (mCanAutoDeviceFireNow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.CanAutoDeviceFireNow")); }
			ScriptFunction HasAnyAmmo() { return mHasAnyAmmo ? mHasAnyAmmo : (mHasAnyAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.HasAnyAmmo")); }
			ScriptFunction HasAmmo() { return mHasAmmo ? mHasAmmo : (mHasAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Deployable.HasAmmo")); }
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
	@property final
	{
		auto ref
		{
			Rotator m_rDesiredPlacementRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 2212); }
			Vector m_vDesiredPlacementLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2200); }
			float m_fOutsideCheckDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 2192); }
			float m_fOtherDeployableProximityCheck() { return *cast(float*)(cast(size_t)cast(void*)this + 2188); }
			Vector m_vDeployVolumePlacementExtent() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2176); }
			Vector m_vPlacementExtent() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2164); }
			float m_fPlacementScale() { return *cast(float*)(cast(size_t)cast(void*)this + 2160); }
			int m_nPerPlayerMaxDeployed() { return *cast(int*)(cast(size_t)cast(void*)this + 2156); }
			ScriptClass c_DeployableHologramClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2152); }
			TrDeployableHologram c_DeployableHologram() { return *cast(TrDeployableHologram*)(cast(size_t)cast(void*)this + 2148); }
		}
		bool m_bIgnoreCollisionForPlacement() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2196) & 0x1) != 0; }
		bool m_bIgnoreCollisionForPlacement(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2196) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2196) &= ~0x1; } return val; }
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
	bool IsValidDeployTerrain(Vector* OutLocation, Rotator* OutRotation, bool VerificationCheck)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = *OutLocation;
		*cast(Rotator*)&params[12] = *OutRotation;
		*cast(bool*)&params[24] = VerificationCheck;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsValidDeployTerrain, params.ptr, cast(void*)0);
		*OutLocation = *cast(Vector*)params.ptr;
		*OutRotation = *cast(Rotator*)&params[12];
		return *cast(bool*)&params[28];
	}
	bool IsValidDeployVolume(Vector* OutLocation, Rotator* OutRotation, bool VerificationCheck)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = *OutLocation;
		*cast(Rotator*)&params[12] = *OutRotation;
		*cast(bool*)&params[24] = VerificationCheck;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsValidDeployVolume, params.ptr, cast(void*)0);
		*OutLocation = *cast(Vector*)params.ptr;
		*OutRotation = *cast(Rotator*)&params[12];
		return *cast(bool*)&params[28];
	}
	bool IsValidDeployProximity(Vector DeployLocation, bool VerificationCheck)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = DeployLocation;
		*cast(bool*)&params[12] = VerificationCheck;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsValidDeployProximity, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool IsValidOutsideCheck(Vector DeployLocation, bool VerificationCheck)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = DeployLocation;
		*cast(bool*)&params[12] = VerificationCheck;
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
void* MeshCpnt, ScriptName SocketName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = MeshCpnt;
		*cast(ScriptName*)&params[4] = SocketName;
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachWeaponTo, params.ptr, cast(void*)0);
	}
	void EndZoom(UTPlayerController PC, bool bReturningTo3P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		*cast(bool*)&params[4] = bReturningTo3P;
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
	bool HasAmmo(ubyte FireModeNum, int Amount)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = FireModeNum;
		*cast(int*)&params[4] = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasAmmo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}
