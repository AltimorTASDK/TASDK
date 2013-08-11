module UnrealScript.TribesGame.TrDevice_Deployable;

import ScriptClasses;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.TribesGame.TrDeployable;
import UnrealScript.TribesGame.TrDevice;
import UnrealScript.TribesGame.TrDeployableHologram;

extern(C++) interface TrDevice_Deployable : TrDevice
{
	public static immutable auto DEPLOYMODE_GROUND_DELTA_CHECK_DIST = 60.0f;
	public static immutable auto DEPLOYMODE_MINIMUM_RADIUS_CHECK_DIST = 30.0f;
	public @property final auto ref Rotator m_rDesiredPlacementRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 2212); }
	public @property final auto ref Vector m_vDesiredPlacementLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2200); }
	public @property final bool m_bIgnoreCollisionForPlacement() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2196) & 0x1) != 0; }
	public @property final bool m_bIgnoreCollisionForPlacement(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2196) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2196) &= ~0x1; } return val; }
	public @property final auto ref float m_fOutsideCheckDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 2192); }
	public @property final auto ref float m_fOtherDeployableProximityCheck() { return *cast(float*)(cast(size_t)cast(void*)this + 2188); }
	public @property final auto ref Vector m_vDeployVolumePlacementExtent() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2176); }
	public @property final auto ref Vector m_vPlacementExtent() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2164); }
	public @property final auto ref float m_fPlacementScale() { return *cast(float*)(cast(size_t)cast(void*)this + 2160); }
	public @property final auto ref int m_nPerPlayerMaxDeployed() { return *cast(int*)(cast(size_t)cast(void*)this + 2156); }
	public @property final auto ref ScriptClass c_DeployableHologramClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2152); }
	public @property final auto ref TrDeployableHologram c_DeployableHologram() { return *cast(TrDeployableHologram*)(cast(size_t)cast(void*)this + 2148); }
	final int GetAmmoCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[76442], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final bool CanAttemptDeploy()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[76468], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void UpdateDeployModeStatus()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80741], cast(void*)0, cast(void*)0);
	}
	final void TickInHandWeapon(float DeltaSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80742], params.ptr, cast(void*)0);
	}
	final TrDeployable Deploy()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80744], params.ptr, cast(void*)0);
		return *cast(TrDeployable*)params.ptr;
	}
	final bool IsValidDeployTerrain(Vector* OutLocation, Rotator* OutRotation, bool VerificationCheck)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = *OutLocation;
		*cast(Rotator*)&params[12] = *OutRotation;
		*cast(bool*)&params[24] = VerificationCheck;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80746], params.ptr, cast(void*)0);
		*OutLocation = *cast(Vector*)params.ptr;
		*OutRotation = *cast(Rotator*)&params[12];
		return *cast(bool*)&params[28];
	}
	final bool IsValidDeployVolume(Vector* OutLocation, Rotator* OutRotation, bool VerificationCheck)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = *OutLocation;
		*cast(Rotator*)&params[12] = *OutRotation;
		*cast(bool*)&params[24] = VerificationCheck;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80751], params.ptr, cast(void*)0);
		*OutLocation = *cast(Vector*)params.ptr;
		*OutRotation = *cast(Rotator*)&params[12];
		return *cast(bool*)&params[28];
	}
	final bool IsValidDeployProximity(Vector DeployLocation, bool VerificationCheck)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = DeployLocation;
		*cast(bool*)&params[12] = VerificationCheck;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80756], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final bool IsValidOutsideCheck(Vector DeployLocation, bool VerificationCheck)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = DeployLocation;
		*cast(bool*)&params[12] = VerificationCheck;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80760], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80764], params.ptr, cast(void*)0);
	}
	final void UpdateReplicatedCarriedAmmo()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80766], cast(void*)0, cast(void*)0);
	}
	final void OnSwitchToWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80767], cast(void*)0, cast(void*)0);
	}
	final void OnSwitchAwayFromWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80768], cast(void*)0, cast(void*)0);
	}
	final void CheckInHandWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80769], cast(void*)0, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80770], cast(void*)0, cast(void*)0);
	}
	final void HolderEnteredVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80771], cast(void*)0, cast(void*)0);
	}
	final void ResumeInhandWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80772], cast(void*)0, cast(void*)0);
	}
	final bool TryPutDown()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80774], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final int GetMaxDeployedLimit()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80777], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final bool IsDeployableOldest(TrDeployable OtherDep)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrDeployable*)params.ptr = OtherDep;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80782], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool BelowMaxCountLimit(bool bDestroyOldest)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bDestroyOldest;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80788], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void ConsumeAmmo(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80797], params.ptr, cast(void*)0);
	}
	final int AddCarriedAmmo(int Amount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80799], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final int AddAmmo(int Amount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80802], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final void EnterDeployMode()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80805], cast(void*)0, cast(void*)0);
	}
	final void ExitDeployMode()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80807], cast(void*)0, cast(void*)0);
	}
	final void AttachWeaponTo(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* MeshCpnt, ScriptName SocketName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = MeshCpnt;
		*cast(ScriptName*)&params[4] = SocketName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80809], params.ptr, cast(void*)0);
	}
	final void EndZoom(UTPlayerController PC, bool bReturningTo3P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		*cast(bool*)&params[4] = bReturningTo3P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80812], params.ptr, cast(void*)0);
	}
	final void ChangeVisibility(bool bIsVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80816], params.ptr, cast(void*)0);
	}
	final void EnterDeployModeDisplay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80818], cast(void*)0, cast(void*)0);
	}
	final void ExitDeployModeDisplay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80819], cast(void*)0, cast(void*)0);
	}
	final void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80825], params.ptr, cast(void*)0);
	}
	final bool IsValidDesiredDeploy(Vector DesiredPlacement, Rotator DesiredRotation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = DesiredPlacement;
		*cast(Rotator*)&params[12] = DesiredRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80827], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final void ServerRequestDeploy(Vector DesiredPlacement, Rotator DesiredRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = DesiredPlacement;
		*cast(Rotator*)&params[12] = DesiredRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80831], params.ptr, cast(void*)0);
	}
	final void CustomFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80836], cast(void*)0, cast(void*)0);
	}
	final bool CanAutoDeviceFireNow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80837], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool HasAnyAmmo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80839], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool HasAmmo(ubyte FireModeNum, int Amount)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = FireModeNum;
		*cast(int*)&params[4] = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80841], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}
