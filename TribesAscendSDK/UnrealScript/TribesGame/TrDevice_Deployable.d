module UnrealScript.TribesGame.TrDevice_Deployable;

import ScriptClasses;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.TribesGame.TrDeployable;
import UnrealScript.TribesGame.TrDevice;
import UnrealScript.TribesGame.TrDeployableHologram;

extern(C++) interface TrDevice_Deployable : TrDevice
{
public extern(D):
	enum
	{
		DEPLOYMODE_GROUND_DELTA_CHECK_DIST = 60.0f,
		DEPLOYMODE_MINIMUM_RADIUS_CHECK_DIST = 30.0f,
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[76442], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool CanAttemptDeploy()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[76468], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void UpdateDeployModeStatus()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80741], cast(void*)0, cast(void*)0);
	}
	void TickInHandWeapon(float DeltaSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80742], params.ptr, cast(void*)0);
	}
	TrDeployable Deploy()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80744], params.ptr, cast(void*)0);
		return *cast(TrDeployable*)params.ptr;
	}
	bool IsValidDeployTerrain(Vector* OutLocation, Rotator* OutRotation, bool VerificationCheck)
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
	bool IsValidDeployVolume(Vector* OutLocation, Rotator* OutRotation, bool VerificationCheck)
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
	bool IsValidDeployProximity(Vector DeployLocation, bool VerificationCheck)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = DeployLocation;
		*cast(bool*)&params[12] = VerificationCheck;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80756], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool IsValidOutsideCheck(Vector DeployLocation, bool VerificationCheck)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = DeployLocation;
		*cast(bool*)&params[12] = VerificationCheck;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80760], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80764], params.ptr, cast(void*)0);
	}
	void UpdateReplicatedCarriedAmmo()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80766], cast(void*)0, cast(void*)0);
	}
	void OnSwitchToWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80767], cast(void*)0, cast(void*)0);
	}
	void OnSwitchAwayFromWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80768], cast(void*)0, cast(void*)0);
	}
	void CheckInHandWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80769], cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80770], cast(void*)0, cast(void*)0);
	}
	void HolderEnteredVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80771], cast(void*)0, cast(void*)0);
	}
	void ResumeInhandWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80772], cast(void*)0, cast(void*)0);
	}
	bool TryPutDown()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80774], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	int GetMaxDeployedLimit()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80777], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool IsDeployableOldest(TrDeployable OtherDep)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrDeployable*)params.ptr = OtherDep;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80782], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool BelowMaxCountLimit(bool bDestroyOldest)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bDestroyOldest;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80788], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ConsumeAmmo(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80797], params.ptr, cast(void*)0);
	}
	int AddCarriedAmmo(int Amount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80799], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int AddAmmo(int Amount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80802], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void EnterDeployMode()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80805], cast(void*)0, cast(void*)0);
	}
	void ExitDeployMode()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80807], cast(void*)0, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80809], params.ptr, cast(void*)0);
	}
	void EndZoom(UTPlayerController PC, bool bReturningTo3P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		*cast(bool*)&params[4] = bReturningTo3P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80812], params.ptr, cast(void*)0);
	}
	void ChangeVisibility(bool bIsVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80816], params.ptr, cast(void*)0);
	}
	void EnterDeployModeDisplay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80818], cast(void*)0, cast(void*)0);
	}
	void ExitDeployModeDisplay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80819], cast(void*)0, cast(void*)0);
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80825], params.ptr, cast(void*)0);
	}
	bool IsValidDesiredDeploy(Vector DesiredPlacement, Rotator DesiredRotation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = DesiredPlacement;
		*cast(Rotator*)&params[12] = DesiredRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80827], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void ServerRequestDeploy(Vector DesiredPlacement, Rotator DesiredRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = DesiredPlacement;
		*cast(Rotator*)&params[12] = DesiredRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80831], params.ptr, cast(void*)0);
	}
	void CustomFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80836], cast(void*)0, cast(void*)0);
	}
	bool CanAutoDeviceFireNow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80837], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool HasAnyAmmo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80839], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool HasAmmo(ubyte FireModeNum, int Amount)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = FireModeNum;
		*cast(int*)&params[4] = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80841], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}
