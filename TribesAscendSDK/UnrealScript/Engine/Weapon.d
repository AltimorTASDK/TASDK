module UnrealScript.Engine.Weapon;

import ScriptClasses;
import UnrealScript.Engine.Inventory;
import UnrealScript.Engine.AIController;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.HUD;

extern(C++) interface Weapon : Inventory
{
public extern(D):
	enum EWeaponFireType : ubyte
	{
		EWFT_InstantHit = 0,
		EWFT_Projectile = 1,
		EWFT_Custom = 2,
		EWFT_None = 3,
		EWFT_MAX = 4,
	}
	@property final
	{
		auto ref
		{
			float WeaponRange() { return *cast(float*)(cast(size_t)cast(void*)this + 676); }
			ubyte CurrentFireMode() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 552); }
			ScriptArray!(ScriptName) FiringStatesArray() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 556); }
			ScriptArray!(Weapon.EWeaponFireType) WeaponFireTypes() { return *cast(ScriptArray!(Weapon.EWeaponFireType)*)(cast(size_t)cast(void*)this + 568); }
			ScriptArray!(ScriptClass) WeaponProjectiles() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 580); }
			ScriptArray!(float) FireInterval() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 592); }
			ScriptArray!(float) Spread() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 604); }
			ScriptArray!(float) InstantHitDamage() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 616); }
			ScriptArray!(float) InstantHitMomentum() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 628); }
			ScriptArray!(ScriptClass) InstantHitDamageTypes() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 640); }
			ScriptArray!(ubyte) ShouldFireOnRelease() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 696); }
			float CachedMaxRange() { return *cast(float*)(cast(size_t)cast(void*)this + 712); }
			float AIRating() { return *cast(float*)(cast(size_t)cast(void*)this + 708); }
			// WARNING: Property 'AIController' has the same name as a defined type!
			float Priority() { return *cast(float*)(cast(size_t)cast(void*)this + 688); }
			float DefaultAnimSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 684); }
			Vector FireOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 660); }
			float PutDownTime() { return *cast(float*)(cast(size_t)cast(void*)this + 656); }
			float EquipTime() { return *cast(float*)(cast(size_t)cast(void*)this + 652); }
		}
		bool bInstantHit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 672) & 0x10) != 0; }
		bool bInstantHit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 672) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 672) &= ~0x10; } return val; }
		bool bMeleeWeapon() { return (*cast(uint*)(cast(size_t)cast(void*)this + 672) & 0x20) != 0; }
		bool bMeleeWeapon(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 672) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 672) &= ~0x20; } return val; }
		bool bWasDoNotActivate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 672) & 0x8) != 0; }
		bool bWasDoNotActivate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 672) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 672) &= ~0x8; } return val; }
		bool bWasOptionalSet() { return (*cast(uint*)(cast(size_t)cast(void*)this + 672) & 0x4) != 0; }
		bool bWasOptionalSet(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 672) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 672) &= ~0x4; } return val; }
		bool bCanThrow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 672) & 0x2) != 0; }
		bool bCanThrow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 672) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 672) &= ~0x2; } return val; }
		bool bWeaponPutDown() { return (*cast(uint*)(cast(size_t)cast(void*)this + 672) & 0x1) != 0; }
		bool bWeaponPutDown(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 672) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 672) &= ~0x1; } return val; }
	}
final:
	float GetTraceRange()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8466], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool HasAnyAmmo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18883], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	float GetAIRating()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18885], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetWeaponRating()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18894], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool TryPutDown()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18915], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool DenyClientWeaponSet()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18929], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CanAttack(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20152], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool FireOnRelease()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20159], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsFiring()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20165], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CanThrow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20471], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29299], cast(void*)0, cast(void*)0);
	}
	void ItemRemovedFromInvManager()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29300], cast(void*)0, cast(void*)0);
	}
	void HolderDied()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29301], cast(void*)0, cast(void*)0);
	}
	bool DoOverrideNextWeapon()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29302], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool DoOverridePrevWeapon()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29304], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void DropFrom(Vector StartLocation, Vector StartVelocity)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartLocation;
		*cast(Vector*)&params[12] = StartVelocity;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29306], params.ptr, cast(void*)0);
	}
	void ClientWeaponThrown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29309], cast(void*)0, cast(void*)0);
	}
	void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29310], params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	void GetWeaponDebug(ScriptArray!(ScriptString)* DebugInfo)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = *DebugInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29317], params.ptr, cast(void*)0);
		*DebugInfo = *cast(ScriptArray!(ScriptString)*)params.ptr;
	}
	int GetPendingFireLength()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29322], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool PendingFire(int FireMode)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = FireMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29323], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ConsumeAmmo(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29324], params.ptr, cast(void*)0);
	}
	int AddAmmo(int Amount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29326], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	bool HasAmmo(ubyte FireModeNum, int Amount)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = FireModeNum;
		*cast(int*)&params[4] = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29329], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void SetPendingFire(int FireMode)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FireMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29336], params.ptr, cast(void*)0);
	}
	void ClearPendingFire(int FireMode)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FireMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29338], params.ptr, cast(void*)0);
	}
	ScriptClass GetProjectileClass()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29340], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	Rotator AddSpread(Rotator BaseAim)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Rotator*)params.ptr = BaseAim;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29342], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	float MaxRange()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29351], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	AnimNodeSequence GetWeaponAnimNodeSeq()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29355], params.ptr, cast(void*)0);
		return *cast(AnimNodeSequence*)params.ptr;
	}
	void PlayWeaponAnimation(ScriptName pSequence, float fDesiredDuration, bool bLoop, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelMesh)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = pSequence;
		*cast(float*)&params[8] = fDesiredDuration;
		*cast(bool*)&params[12] = bLoop;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[16] = SkelMesh;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29360], params.ptr, cast(void*)0);
	}
	void StopWeaponAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29367], cast(void*)0, cast(void*)0);
	}
	void PlayFireEffects(ubyte FireModeNum, Vector HitLocation)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = FireModeNum;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29369], params.ptr, cast(void*)0);
	}
	void StopFireEffects(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29372], params.ptr, cast(void*)0);
	}
	float GetFireInterval(ubyte FireModeNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29374], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void TimeWeaponFiring(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29377], params.ptr, cast(void*)0);
	}
	void RefireCheckTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29379], cast(void*)0, cast(void*)0);
	}
	void TimeWeaponPutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29380], cast(void*)0, cast(void*)0);
	}
	void TimeWeaponEquipping()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29381], cast(void*)0, cast(void*)0);
	}
	void Activate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29382], cast(void*)0, cast(void*)0);
	}
	void PutDownWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29383], cast(void*)0, cast(void*)0);
	}
	bool DenyPickupQuery(ScriptClass ItemClass, Actor Pickup)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ItemClass;
		*cast(Actor*)&params[4] = Pickup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29384], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void WeaponEmpty()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29388], cast(void*)0, cast(void*)0);
	}
	void IncrementFlashCount()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29389], cast(void*)0, cast(void*)0);
	}
	void ClearFlashCount()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29390], cast(void*)0, cast(void*)0);
	}
	void SetFlashLocation(Vector HitLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29391], params.ptr, cast(void*)0);
	}
	void ClearFlashLocation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29393], cast(void*)0, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29394], params.ptr, cast(void*)0);
	}
	void DetachWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29397], cast(void*)0, cast(void*)0);
	}
	void ClientGivenTo(Pawn NewOwner, bool bDoNotActivate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewOwner;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29398], params.ptr, cast(void*)0);
	}
	void ClientWeaponSet(bool bOptionalSet, bool bDoNotActivate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bOptionalSet;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29401], params.ptr, cast(void*)0);
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29404], params.ptr, cast(void*)0);
	}
	void ServerStartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29406], params.ptr, cast(void*)0);
	}
	void BeginFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29408], params.ptr, cast(void*)0);
	}
	void StopFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29410], params.ptr, cast(void*)0);
	}
	void ServerStopFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29412], params.ptr, cast(void*)0);
	}
	void EndFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29414], params.ptr, cast(void*)0);
	}
	void ForceEndFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29416], cast(void*)0, cast(void*)0);
	}
	void SendToFiringState(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29419], params.ptr, cast(void*)0);
	}
	void SetCurrentFireMode(ubyte FiringModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FiringModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29421], params.ptr, cast(void*)0);
	}
	void FireModeUpdated(ubyte FiringMode, bool bViaReplication)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = FiringMode;
		*cast(bool*)&params[4] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29423], params.ptr, cast(void*)0);
	}
	void FireAmmunition()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29426], cast(void*)0, cast(void*)0);
	}
	Rotator GetAdjustedAim(Vector StartFireLoc)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartFireLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29427], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	Actor GetTraceOwner()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29431], params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	Actor.ImpactInfo CalcWeaponFire(Vector StartTrace, Vector EndTrace, ScriptArray!(Actor.ImpactInfo)* ImpactList, Vector Extent)
	{
		ubyte params[128];
		params[] = 0;
		*cast(Vector*)params.ptr = StartTrace;
		*cast(Vector*)&params[12] = EndTrace;
		*cast(ScriptArray!(Actor.ImpactInfo)*)&params[24] = *ImpactList;
		*cast(Vector*)&params[36] = Extent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29433], params.ptr, cast(void*)0);
		*ImpactList = *cast(ScriptArray!(Actor.ImpactInfo)*)&params[24];
		return *cast(Actor.ImpactInfo*)&params[48];
	}
	bool PassThroughDamage(Actor HitActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = HitActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29450], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29453], cast(void*)0, cast(void*)0);
	}
	void ProcessInstantHit(ubyte FiringMode, Actor.ImpactInfo Impact, int NumHits)
	{
		ubyte params[88];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(int*)&params[84] = NumHits;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29460], params.ptr, cast(void*)0);
	}
	Projectile ProjectileFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29467], params.ptr, cast(void*)0);
		return *cast(Projectile*)params.ptr;
	}
	void CustomFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29475], cast(void*)0, cast(void*)0);
	}
	Vector GetMuzzleLoc()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29476], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	Vector GetPhysicalFireStartLoc(Vector AimDir)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = AimDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29478], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	void HandleFinishedFiring()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29515], cast(void*)0, cast(void*)0);
	}
	void NotifyWeaponFired(ubyte FireMode)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29516], params.ptr, cast(void*)0);
	}
	void NotifyWeaponFinishedFiring(ubyte FireMode)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29518], params.ptr, cast(void*)0);
	}
	bool ShouldRefire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29520], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool StillFiring(ubyte FireMode)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = FireMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29522], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void WeaponIsDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29541], cast(void*)0, cast(void*)0);
	}
	void CacheAIController()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29548], cast(void*)0, cast(void*)0);
	}
	float GetTargetDistance()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29549], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
}
