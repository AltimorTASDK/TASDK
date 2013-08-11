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
	struct IgnorePawn
	{
		public @property final auto ref float UnignoreTime() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __UnignoreTime[4];
		public @property final auto ref TrPawn PawnToIgnore() { return *cast(TrPawn*)(cast(size_t)&this + 0); }
		private ubyte __PawnToIgnore[4];
	}
	public @property final auto ref ScriptArray!(SkelControlLookAt) m_LookAtSkelControls() { return *cast(ScriptArray!(SkelControlLookAt)*)(cast(size_t)cast(void*)this + 1528); }
	public @property final auto ref ScriptArray!(ScriptName) m_LookAtSkelControlNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1540); }
	public @property final auto ref ScriptArray!(GameSkelCtrl_Recoil) m_RecoilSkelControls() { return *cast(ScriptArray!(GameSkelCtrl_Recoil)*)(cast(size_t)cast(void*)this + 1552); }
	public @property final auto ref ScriptArray!(ScriptName) m_RecoilSkelControlNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1564); }
	public @property final auto ref ScriptArray!(TrDeployable_Turret.IgnorePawn) m_IgnorePawnList() { return *cast(ScriptArray!(TrDeployable_Turret.IgnorePawn)*)(cast(size_t)cast(void*)this + 1604); }
	public @property final auto ref float m_fLastStallTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1624); }
	public @property final auto ref float m_fFireStallRestoreTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1620); }
	public @property final auto ref float m_fTimeToIgnoreInvulnerable() { return *cast(float*)(cast(size_t)cast(void*)this + 1616); }
	public @property final auto ref float m_fTimeToAcquireTarget() { return *cast(float*)(cast(size_t)cast(void*)this + 1600); }
	public @property final auto ref float m_fTargetAcquiredTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1596); }
	public @property final auto ref SoundCue m_TargetAcquiredSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1592); }
	public @property final auto ref float m_fDeltaFireInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 1588); }
	public @property final auto ref ScriptClass m_MuzzleFlashLightClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1580); }
	public @property final bool m_bCanTargetVehicles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1524) & 0x2) != 0; }
	public @property final bool m_bCanTargetVehicles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1524) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1524) &= ~0x2; } return val; }
	public @property final bool m_bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1524) & 0x1) != 0; }
	public @property final bool m_bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1524) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1524) &= ~0x1; } return val; }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71956], cast(void*)0, cast(void*)0);
	}
	final void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71957], params.ptr, cast(void*)0);
	}
	final void DeployComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71960], cast(void*)0, cast(void*)0);
	}
	final void AcquireTarget()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71961], cast(void*)0, cast(void*)0);
	}
	final float GetAcquireDelayTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71966], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void CleanupIgnoreList()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71975], cast(void*)0, cast(void*)0);
	}
	final bool CanTargetPawn(Pawn aPawn)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71978], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final Pawn GetTargetPawn()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71990], params.ptr, cast(void*)0);
		return *cast(Pawn*)params.ptr;
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72004], params.ptr, cast(void*)0);
	}
	final void UpdateAim(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72006], params.ptr, cast(void*)0);
	}
	final void PlayFireEffects(Weapon InWeapon, bool bViaReplication, Vector HitLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72011], params.ptr, cast(void*)0);
	}
	final void CauseMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72016], cast(void*)0, cast(void*)0);
	}
	final void MuzzleFlashTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72018], cast(void*)0, cast(void*)0);
	}
	final void SetMuzzleFlashParams(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* PSC, UObject.Color MuzzleFlashColor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = PSC;
		*cast(UObject.Color*)&params[4] = MuzzleFlashColor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72019], params.ptr, cast(void*)0);
	}
	final Vector GetWeaponStartTraceLocation(Weapon CurrentWeapon)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Weapon*)params.ptr = CurrentWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72022], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	final Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72029], params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
	final void AwardKillAssists()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72032], cast(void*)0, cast(void*)0);
	}
}
