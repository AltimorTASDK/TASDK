module UnrealScript.TribesGame.TrDevice_RemoteArxBuster;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.AnimNodeAdditiveBlending;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.TribesGame.TrProj_RemoteArxBuster;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.SkelControlSingleBone;
import UnrealScript.TribesGame.TrProjectile;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_RemoteArxBuster : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_RemoteArxBuster")()); }
	private static __gshared TrDevice_RemoteArxBuster mDefaultProperties;
	@property final static TrDevice_RemoteArxBuster DefaultProperties() { mixin(MGDPC!(TrDevice_RemoteArxBuster, "TrDevice_RemoteArxBuster TribesGame.Default__TrDevice_RemoteArxBuster")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetArxIdle;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mSetLeftArmVisible;
			ScriptFunction mDetPoseActive;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mAddAmmo;
			ScriptFunction mPerformInactiveReload;
			ScriptFunction mRequestReload;
			ScriptFunction mCanClientRequestReloadNow;
			ScriptFunction mStartFire;
			ScriptFunction mFireAmmunition;
			ScriptFunction mProjectileFire;
			ScriptFunction mActivateRemoteRounds;
			ScriptFunction mHideArmTimer;
			ScriptFunction mDestroyed;
			ScriptFunction mOnRemoteProjectileDestroyedByOther;
			ScriptFunction mOnAnimPlay;
			ScriptFunction mOnAnimEnd;
			ScriptFunction mOnPlayRetrieveAnim;
			ScriptFunction mPlayWeaponEquip;
			ScriptFunction mPlayWeaponPutDown;
			ScriptFunction mPutDownFast;
			ScriptFunction mOnSwitchAwayFromWeapon;
		}
		public @property static final
		{
			ScriptFunction SetArxIdle() { mixin(MGF!("mSetArxIdle", "Function TribesGame.TrDevice_RemoteArxBuster.SetArxIdle")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function TribesGame.TrDevice_RemoteArxBuster.ReplicatedEvent")()); }
			ScriptFunction SetLeftArmVisible() { mixin(MGF!("mSetLeftArmVisible", "Function TribesGame.TrDevice_RemoteArxBuster.SetLeftArmVisible")()); }
			ScriptFunction DetPoseActive() { mixin(MGF!("mDetPoseActive", "Function TribesGame.TrDevice_RemoteArxBuster.DetPoseActive")()); }
			ScriptFunction PostInitAnimTree() { mixin(MGF!("mPostInitAnimTree", "Function TribesGame.TrDevice_RemoteArxBuster.PostInitAnimTree")()); }
			ScriptFunction AddAmmo() { mixin(MGF!("mAddAmmo", "Function TribesGame.TrDevice_RemoteArxBuster.AddAmmo")()); }
			ScriptFunction PerformInactiveReload() { mixin(MGF!("mPerformInactiveReload", "Function TribesGame.TrDevice_RemoteArxBuster.PerformInactiveReload")()); }
			ScriptFunction RequestReload() { mixin(MGF!("mRequestReload", "Function TribesGame.TrDevice_RemoteArxBuster.RequestReload")()); }
			ScriptFunction CanClientRequestReloadNow() { mixin(MGF!("mCanClientRequestReloadNow", "Function TribesGame.TrDevice_RemoteArxBuster.CanClientRequestReloadNow")()); }
			ScriptFunction StartFire() { mixin(MGF!("mStartFire", "Function TribesGame.TrDevice_RemoteArxBuster.StartFire")()); }
			ScriptFunction FireAmmunition() { mixin(MGF!("mFireAmmunition", "Function TribesGame.TrDevice_RemoteArxBuster.FireAmmunition")()); }
			ScriptFunction ProjectileFire() { mixin(MGF!("mProjectileFire", "Function TribesGame.TrDevice_RemoteArxBuster.ProjectileFire")()); }
			ScriptFunction ActivateRemoteRounds() { mixin(MGF!("mActivateRemoteRounds", "Function TribesGame.TrDevice_RemoteArxBuster.ActivateRemoteRounds")()); }
			ScriptFunction HideArmTimer() { mixin(MGF!("mHideArmTimer", "Function TribesGame.TrDevice_RemoteArxBuster.HideArmTimer")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function TribesGame.TrDevice_RemoteArxBuster.Destroyed")()); }
			ScriptFunction OnRemoteProjectileDestroyedByOther() { mixin(MGF!("mOnRemoteProjectileDestroyedByOther", "Function TribesGame.TrDevice_RemoteArxBuster.OnRemoteProjectileDestroyedByOther")()); }
			ScriptFunction OnAnimPlay() { mixin(MGF!("mOnAnimPlay", "Function TribesGame.TrDevice_RemoteArxBuster.OnAnimPlay")()); }
			ScriptFunction OnAnimEnd() { mixin(MGF!("mOnAnimEnd", "Function TribesGame.TrDevice_RemoteArxBuster.OnAnimEnd")()); }
			ScriptFunction OnPlayRetrieveAnim() { mixin(MGF!("mOnPlayRetrieveAnim", "Function TribesGame.TrDevice_RemoteArxBuster.OnPlayRetrieveAnim")()); }
			ScriptFunction PlayWeaponEquip() { mixin(MGF!("mPlayWeaponEquip", "Function TribesGame.TrDevice_RemoteArxBuster.PlayWeaponEquip")()); }
			ScriptFunction PlayWeaponPutDown() { mixin(MGF!("mPlayWeaponPutDown", "Function TribesGame.TrDevice_RemoteArxBuster.PlayWeaponPutDown")()); }
			ScriptFunction PutDownFast() { mixin(MGF!("mPutDownFast", "Function TribesGame.TrDevice_RemoteArxBuster.PutDownFast")()); }
			ScriptFunction OnSwitchAwayFromWeapon() { mixin(MGF!("mOnSwitchAwayFromWeapon", "Function TribesGame.TrDevice_RemoteArxBuster.OnSwitchAwayFromWeapon")()); }
		}
	}
	static struct Active
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrDevice_RemoteArxBuster.Active")()); }
	}
	static struct WeaponConstantFiring
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrDevice_RemoteArxBuster.WeaponConstantFiring")()); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrProj_RemoteArxBuster) RemoteArxRounds() { mixin(MGPC!(ScriptArray!(TrProj_RemoteArxBuster), 2160)()); }
			SoundCue m_ArxIdleSound() { mixin(MGPC!(SoundCue, 2176)()); }
			AnimNodeAdditiveBlending DetReadyAdditiveAnimNode() { mixin(MGPC!(AnimNodeAdditiveBlending, 2172)()); }
			SkelControlSingleBone DetonatorChild() { mixin(MGPC!(SkelControlSingleBone, 2152)()); }
			SkelControlSingleBone DetonatorControl() { mixin(MGPC!(SkelControlSingleBone, 2148)()); }
		}
		bool r_bIsLeftArmVisible() { mixin(MGBPC!(2156, 0x1)()); }
		bool r_bIsLeftArmVisible(bool val) { mixin(MSBPC!(2156, 0x1)()); }
	}
final:
	void SetArxIdle(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetArxIdle, params.ptr, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void SetLeftArmVisible(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLeftArmVisible, params.ptr, cast(void*)0);
	}
	void DetPoseActive(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetPoseActive, params.ptr, cast(void*)0);
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
	int AddAmmo(int Amount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddAmmo, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void PerformInactiveReload()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PerformInactiveReload, cast(void*)0, cast(void*)0);
	}
	void RequestReload()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestReload, cast(void*)0, cast(void*)0);
	}
	bool CanClientRequestReloadNow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanClientRequestReloadNow, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartFire, params.ptr, cast(void*)0);
	}
	void FireAmmunition()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FireAmmunition, cast(void*)0, cast(void*)0);
	}
	Projectile ProjectileFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProjectileFire, params.ptr, cast(void*)0);
		return *cast(Projectile*)params.ptr;
	}
	void ActivateRemoteRounds(bool bDoNoDamage)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDoNoDamage;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActivateRemoteRounds, params.ptr, cast(void*)0);
	}
	void HideArmTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideArmTimer, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void OnRemoteProjectileDestroyedByOther(TrProjectile DestroyedProjectile)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrProjectile*)params.ptr = DestroyedProjectile;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnRemoteProjectileDestroyedByOther, params.ptr, cast(void*)0);
	}
	void OnAnimPlay(AnimNodeSequence SeqNode)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAnimPlay, params.ptr, cast(void*)0);
	}
	void OnAnimEnd(AnimNodeSequence SeqNode, float PlayedTime, float ExcessTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(float*)&params[4] = PlayedTime;
		*cast(float*)&params[8] = ExcessTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAnimEnd, params.ptr, cast(void*)0);
	}
	void OnPlayRetrieveAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPlayRetrieveAnim, cast(void*)0, cast(void*)0);
	}
	void PlayWeaponEquip()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayWeaponEquip, cast(void*)0, cast(void*)0);
	}
	void PlayWeaponPutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayWeaponPutDown, cast(void*)0, cast(void*)0);
	}
	void PutDownFast()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PutDownFast, cast(void*)0, cast(void*)0);
	}
	void OnSwitchAwayFromWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSwitchAwayFromWeapon, cast(void*)0, cast(void*)0);
	}
}
