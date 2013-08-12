module UnrealScript.TribesGame.TrDevice_RemoteArxBuster;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_RemoteArxBuster")); }
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
			ScriptFunction SetArxIdle() { return mSetArxIdle ? mSetArxIdle : (mSetArxIdle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RemoteArxBuster.SetArxIdle")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RemoteArxBuster.ReplicatedEvent")); }
			ScriptFunction SetLeftArmVisible() { return mSetLeftArmVisible ? mSetLeftArmVisible : (mSetLeftArmVisible = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RemoteArxBuster.SetLeftArmVisible")); }
			ScriptFunction DetPoseActive() { return mDetPoseActive ? mDetPoseActive : (mDetPoseActive = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RemoteArxBuster.DetPoseActive")); }
			ScriptFunction PostInitAnimTree() { return mPostInitAnimTree ? mPostInitAnimTree : (mPostInitAnimTree = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RemoteArxBuster.PostInitAnimTree")); }
			ScriptFunction AddAmmo() { return mAddAmmo ? mAddAmmo : (mAddAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RemoteArxBuster.AddAmmo")); }
			ScriptFunction PerformInactiveReload() { return mPerformInactiveReload ? mPerformInactiveReload : (mPerformInactiveReload = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RemoteArxBuster.PerformInactiveReload")); }
			ScriptFunction RequestReload() { return mRequestReload ? mRequestReload : (mRequestReload = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RemoteArxBuster.RequestReload")); }
			ScriptFunction CanClientRequestReloadNow() { return mCanClientRequestReloadNow ? mCanClientRequestReloadNow : (mCanClientRequestReloadNow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RemoteArxBuster.CanClientRequestReloadNow")); }
			ScriptFunction StartFire() { return mStartFire ? mStartFire : (mStartFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RemoteArxBuster.StartFire")); }
			ScriptFunction FireAmmunition() { return mFireAmmunition ? mFireAmmunition : (mFireAmmunition = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RemoteArxBuster.FireAmmunition")); }
			ScriptFunction ProjectileFire() { return mProjectileFire ? mProjectileFire : (mProjectileFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RemoteArxBuster.ProjectileFire")); }
			ScriptFunction ActivateRemoteRounds() { return mActivateRemoteRounds ? mActivateRemoteRounds : (mActivateRemoteRounds = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RemoteArxBuster.ActivateRemoteRounds")); }
			ScriptFunction HideArmTimer() { return mHideArmTimer ? mHideArmTimer : (mHideArmTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RemoteArxBuster.HideArmTimer")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RemoteArxBuster.Destroyed")); }
			ScriptFunction OnRemoteProjectileDestroyedByOther() { return mOnRemoteProjectileDestroyedByOther ? mOnRemoteProjectileDestroyedByOther : (mOnRemoteProjectileDestroyedByOther = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RemoteArxBuster.OnRemoteProjectileDestroyedByOther")); }
			ScriptFunction OnAnimPlay() { return mOnAnimPlay ? mOnAnimPlay : (mOnAnimPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RemoteArxBuster.OnAnimPlay")); }
			ScriptFunction OnAnimEnd() { return mOnAnimEnd ? mOnAnimEnd : (mOnAnimEnd = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RemoteArxBuster.OnAnimEnd")); }
			ScriptFunction OnPlayRetrieveAnim() { return mOnPlayRetrieveAnim ? mOnPlayRetrieveAnim : (mOnPlayRetrieveAnim = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RemoteArxBuster.OnPlayRetrieveAnim")); }
			ScriptFunction PlayWeaponEquip() { return mPlayWeaponEquip ? mPlayWeaponEquip : (mPlayWeaponEquip = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RemoteArxBuster.PlayWeaponEquip")); }
			ScriptFunction PlayWeaponPutDown() { return mPlayWeaponPutDown ? mPlayWeaponPutDown : (mPlayWeaponPutDown = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RemoteArxBuster.PlayWeaponPutDown")); }
			ScriptFunction PutDownFast() { return mPutDownFast ? mPutDownFast : (mPutDownFast = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RemoteArxBuster.PutDownFast")); }
			ScriptFunction OnSwitchAwayFromWeapon() { return mOnSwitchAwayFromWeapon ? mOnSwitchAwayFromWeapon : (mOnSwitchAwayFromWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_RemoteArxBuster.OnSwitchAwayFromWeapon")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrProj_RemoteArxBuster) RemoteArxRounds() { return *cast(ScriptArray!(TrProj_RemoteArxBuster)*)(cast(size_t)cast(void*)this + 2160); }
			SoundCue m_ArxIdleSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2176); }
			AnimNodeAdditiveBlending DetReadyAdditiveAnimNode() { return *cast(AnimNodeAdditiveBlending*)(cast(size_t)cast(void*)this + 2172); }
			SkelControlSingleBone DetonatorChild() { return *cast(SkelControlSingleBone*)(cast(size_t)cast(void*)this + 2152); }
			SkelControlSingleBone DetonatorControl() { return *cast(SkelControlSingleBone*)(cast(size_t)cast(void*)this + 2148); }
		}
		bool r_bIsLeftArmVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2156) & 0x1) != 0; }
		bool r_bIsLeftArmVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2156) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2156) &= ~0x1; } return val; }
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
