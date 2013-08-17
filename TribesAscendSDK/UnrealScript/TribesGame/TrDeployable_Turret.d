module UnrealScript.TribesGame.TrDeployable_Turret;

import ScriptClasses;
import UnrealScript.Helpers;
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
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDeployable_Turret")()); }
	private static __gshared TrDeployable_Turret mDefaultProperties;
	@property final static TrDeployable_Turret DefaultProperties() { mixin(MGDPC!(TrDeployable_Turret, "TrDeployable_Turret TribesGame.Default__TrDeployable_Turret")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mDeployComplete;
			ScriptFunction mAcquireTarget;
			ScriptFunction mGetAcquireDelayTime;
			ScriptFunction mCleanupIgnoreList;
			ScriptFunction mCanTargetPawn;
			ScriptFunction mGetTargetPawn;
			ScriptFunction mTick;
			ScriptFunction mUpdateAim;
			ScriptFunction mPlayFireEffects;
			ScriptFunction mCauseMuzzleFlash;
			ScriptFunction mMuzzleFlashTimer;
			ScriptFunction mSetMuzzleFlashParams;
			ScriptFunction mGetWeaponStartTraceLocation;
			ScriptFunction mGetMarker;
			ScriptFunction mAwardKillAssists;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrDeployable_Turret.PostBeginPlay")()); }
			ScriptFunction PostInitAnimTree() { mixin(MGF!("mPostInitAnimTree", "Function TribesGame.TrDeployable_Turret.PostInitAnimTree")()); }
			ScriptFunction DeployComplete() { mixin(MGF!("mDeployComplete", "Function TribesGame.TrDeployable_Turret.DeployComplete")()); }
			ScriptFunction AcquireTarget() { mixin(MGF!("mAcquireTarget", "Function TribesGame.TrDeployable_Turret.AcquireTarget")()); }
			ScriptFunction GetAcquireDelayTime() { mixin(MGF!("mGetAcquireDelayTime", "Function TribesGame.TrDeployable_Turret.GetAcquireDelayTime")()); }
			ScriptFunction CleanupIgnoreList() { mixin(MGF!("mCleanupIgnoreList", "Function TribesGame.TrDeployable_Turret.CleanupIgnoreList")()); }
			ScriptFunction CanTargetPawn() { mixin(MGF!("mCanTargetPawn", "Function TribesGame.TrDeployable_Turret.CanTargetPawn")()); }
			ScriptFunction GetTargetPawn() { mixin(MGF!("mGetTargetPawn", "Function TribesGame.TrDeployable_Turret.GetTargetPawn")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function TribesGame.TrDeployable_Turret.Tick")()); }
			ScriptFunction UpdateAim() { mixin(MGF!("mUpdateAim", "Function TribesGame.TrDeployable_Turret.UpdateAim")()); }
			ScriptFunction PlayFireEffects() { mixin(MGF!("mPlayFireEffects", "Function TribesGame.TrDeployable_Turret.PlayFireEffects")()); }
			ScriptFunction CauseMuzzleFlash() { mixin(MGF!("mCauseMuzzleFlash", "Function TribesGame.TrDeployable_Turret.CauseMuzzleFlash")()); }
			ScriptFunction MuzzleFlashTimer() { mixin(MGF!("mMuzzleFlashTimer", "Function TribesGame.TrDeployable_Turret.MuzzleFlashTimer")()); }
			ScriptFunction SetMuzzleFlashParams() { mixin(MGF!("mSetMuzzleFlashParams", "Function TribesGame.TrDeployable_Turret.SetMuzzleFlashParams")()); }
			ScriptFunction GetWeaponStartTraceLocation() { mixin(MGF!("mGetWeaponStartTraceLocation", "Function TribesGame.TrDeployable_Turret.GetWeaponStartTraceLocation")()); }
			ScriptFunction GetMarker() { mixin(MGF!("mGetMarker", "Function TribesGame.TrDeployable_Turret.GetMarker")()); }
			ScriptFunction AwardKillAssists() { mixin(MGF!("mAwardKillAssists", "Function TribesGame.TrDeployable_Turret.AwardKillAssists")()); }
		}
	}
	struct IgnorePawn
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrDeployable_Turret.IgnorePawn")()); }
		@property final auto ref
		{
			float UnignoreTime() { mixin(MGPS!("float", 4)()); }
			TrPawn PawnToIgnore() { mixin(MGPS!("TrPawn", 0)()); }
		}
	}
	static struct BlownUp
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrDeployable_Turret.BlownUp")()); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(SkelControlLookAt) m_LookAtSkelControls() { mixin(MGPC!("ScriptArray!(SkelControlLookAt)", 1528)()); }
			ScriptArray!(ScriptName) m_LookAtSkelControlNames() { mixin(MGPC!("ScriptArray!(ScriptName)", 1540)()); }
			ScriptArray!(GameSkelCtrl_Recoil) m_RecoilSkelControls() { mixin(MGPC!("ScriptArray!(GameSkelCtrl_Recoil)", 1552)()); }
			ScriptArray!(ScriptName) m_RecoilSkelControlNames() { mixin(MGPC!("ScriptArray!(ScriptName)", 1564)()); }
			ScriptArray!(TrDeployable_Turret.IgnorePawn) m_IgnorePawnList() { mixin(MGPC!("ScriptArray!(TrDeployable_Turret.IgnorePawn)", 1604)()); }
			float m_fLastStallTime() { mixin(MGPC!("float", 1624)()); }
			float m_fFireStallRestoreTime() { mixin(MGPC!("float", 1620)()); }
			float m_fTimeToIgnoreInvulnerable() { mixin(MGPC!("float", 1616)()); }
			float m_fTimeToAcquireTarget() { mixin(MGPC!("float", 1600)()); }
			float m_fTargetAcquiredTime() { mixin(MGPC!("float", 1596)()); }
			SoundCue m_TargetAcquiredSoundCue() { mixin(MGPC!("SoundCue", 1592)()); }
			float m_fDeltaFireInterval() { mixin(MGPC!("float", 1588)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_MuzzleFlashPSC'!
			ScriptClass m_MuzzleFlashLightClass() { mixin(MGPC!("ScriptClass", 1580)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_MuzzleFlashLight'!
		}
		bool m_bCanTargetVehicles() { mixin(MGBPC!(1524, 0x2)()); }
		bool m_bCanTargetVehicles(bool val) { mixin(MSBPC!(1524, 0x2)()); }
		bool m_bEnabled() { mixin(MGBPC!(1524, 0x1)()); }
		bool m_bEnabled(bool val) { mixin(MSBPC!(1524, 0x1)()); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.PostInitAnimTree, params.ptr, cast(void*)0);
	}
	void DeployComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DeployComplete, cast(void*)0, cast(void*)0);
	}
	void AcquireTarget()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AcquireTarget, cast(void*)0, cast(void*)0);
	}
	float GetAcquireDelayTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAcquireDelayTime, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void CleanupIgnoreList()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CleanupIgnoreList, cast(void*)0, cast(void*)0);
	}
	bool CanTargetPawn(Pawn aPawn)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanTargetPawn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	Pawn GetTargetPawn()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTargetPawn, params.ptr, cast(void*)0);
		return *cast(Pawn*)params.ptr;
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void UpdateAim(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateAim, params.ptr, cast(void*)0);
	}
	void PlayFireEffects(Weapon InWeapon, bool bViaReplication, Vector* HitLocation = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		if (HitLocation !is null)
			*cast(Vector*)&params[8] = *HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayFireEffects, params.ptr, cast(void*)0);
	}
	void CauseMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CauseMuzzleFlash, cast(void*)0, cast(void*)0);
	}
	void MuzzleFlashTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.MuzzleFlashTimer, cast(void*)0, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMuzzleFlashParams, params.ptr, cast(void*)0);
	}
	Vector GetWeaponStartTraceLocation(Weapon* CurrentWeapon = null)
	{
		ubyte params[16];
		params[] = 0;
		if (CurrentWeapon !is null)
			*cast(Weapon*)params.ptr = *CurrentWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponStartTraceLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMarker, params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
	void AwardKillAssists()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AwardKillAssists, cast(void*)0, cast(void*)0);
	}
}
