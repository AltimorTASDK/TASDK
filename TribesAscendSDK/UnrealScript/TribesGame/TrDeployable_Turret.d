module UnrealScript.TribesGame.TrDeployable_Turret;

import ScriptClasses;
import UnrealScript.Engine.SkelControlLookAt;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Weapon;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.TribesGame.TrDeployable;
import UnrealScript.GameFramework.GameSkelCtrl_Recoil;

extern(C++) interface TrDeployable_Turret : TrDeployable
{
public extern(D):
	struct IgnorePawn
	{
		private ubyte __buffer__[8];
	public extern(D):
		@property final auto ref
		{
			float UnignoreTime() { return *cast(float*)(cast(size_t)&this + 4); }
			TrPawn PawnToIgnore() { return *cast(TrPawn*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(SkelControlLookAt) m_LookAtSkelControls() { return *cast(ScriptArray!(SkelControlLookAt)*)(cast(size_t)cast(void*)this + 1528); }
			ScriptArray!(ScriptName) m_LookAtSkelControlNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1540); }
			ScriptArray!(GameSkelCtrl_Recoil) m_RecoilSkelControls() { return *cast(ScriptArray!(GameSkelCtrl_Recoil)*)(cast(size_t)cast(void*)this + 1552); }
			ScriptArray!(ScriptName) m_RecoilSkelControlNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1564); }
			ScriptArray!(TrDeployable_Turret.IgnorePawn) m_IgnorePawnList() { return *cast(ScriptArray!(TrDeployable_Turret.IgnorePawn)*)(cast(size_t)cast(void*)this + 1604); }
			float m_fLastStallTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1624); }
			float m_fFireStallRestoreTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1620); }
			float m_fTimeToIgnoreInvulnerable() { return *cast(float*)(cast(size_t)cast(void*)this + 1616); }
			float m_fTimeToAcquireTarget() { return *cast(float*)(cast(size_t)cast(void*)this + 1600); }
			float m_fTargetAcquiredTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1596); }
			SoundCue m_TargetAcquiredSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1592); }
			float m_fDeltaFireInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 1588); }
			ScriptClass m_MuzzleFlashLightClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1580); }
		}
		bool m_bCanTargetVehicles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1524) & 0x2) != 0; }
		bool m_bCanTargetVehicles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1524) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1524) &= ~0x2; } return val; }
		bool m_bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1524) & 0x1) != 0; }
		bool m_bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1524) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1524) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71956], cast(void*)0, cast(void*)0);
	}
	void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71957], params.ptr, cast(void*)0);
	}
	void DeployComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71960], cast(void*)0, cast(void*)0);
	}
	void AcquireTarget()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71961], cast(void*)0, cast(void*)0);
	}
	float GetAcquireDelayTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71966], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void CleanupIgnoreList()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71975], cast(void*)0, cast(void*)0);
	}
	bool CanTargetPawn(Pawn aPawn)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71978], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	Pawn GetTargetPawn()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71990], params.ptr, cast(void*)0);
		return *cast(Pawn*)params.ptr;
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72004], params.ptr, cast(void*)0);
	}
	void UpdateAim(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72006], params.ptr, cast(void*)0);
	}
	void PlayFireEffects(Weapon InWeapon, bool bViaReplication, Vector HitLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72011], params.ptr, cast(void*)0);
	}
	void CauseMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72016], cast(void*)0, cast(void*)0);
	}
	void MuzzleFlashTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72018], cast(void*)0, cast(void*)0);
	}
	void SetMuzzleFlashParams(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PSC, UObject.Color MuzzleFlashColor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = PSC;
		*cast(UObject.Color*)&params[4] = MuzzleFlashColor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72019], params.ptr, cast(void*)0);
	}
	Vector GetWeaponStartTraceLocation(Weapon CurrentWeapon)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Weapon*)params.ptr = CurrentWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72022], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72029], params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
	void AwardKillAssists()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72032], cast(void*)0, cast(void*)0);
	}
}
