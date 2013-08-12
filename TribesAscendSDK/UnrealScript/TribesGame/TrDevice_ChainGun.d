module UnrealScript.TribesGame.TrDevice_ChainGun;

import ScriptClasses;
import UnrealScript.TribesGame.TrSkelControl_SpinControl;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_ChainGun : TrDevice_ConstantFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_ChainGun")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetBuildUpTime;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mTick;
			ScriptFunction mUpdateSoundModulation;
			ScriptFunction mPlayBuildupAnimation;
			ScriptFunction mOnSwitchToWeapon;
			ScriptFunction mPlayWeaponPutDown;
			ScriptFunction mBuffMaxCarriedAmmo;
			ScriptFunction mAddCarriedAmmo;
			ScriptFunction mGetBasePickupAmmoAmount;
		}
		public @property static final
		{
			ScriptFunction GetBuildUpTime() { return mGetBuildUpTime ? mGetBuildUpTime : (mGetBuildUpTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ChainGun.GetBuildUpTime")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ChainGun.ReplicatedEvent")); }
			ScriptFunction PostInitAnimTree() { return mPostInitAnimTree ? mPostInitAnimTree : (mPostInitAnimTree = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ChainGun.PostInitAnimTree")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ChainGun.Tick")); }
			ScriptFunction UpdateSoundModulation() { return mUpdateSoundModulation ? mUpdateSoundModulation : (mUpdateSoundModulation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ChainGun.UpdateSoundModulation")); }
			ScriptFunction PlayBuildupAnimation() { return mPlayBuildupAnimation ? mPlayBuildupAnimation : (mPlayBuildupAnimation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ChainGun.PlayBuildupAnimation")); }
			ScriptFunction OnSwitchToWeapon() { return mOnSwitchToWeapon ? mOnSwitchToWeapon : (mOnSwitchToWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ChainGun.OnSwitchToWeapon")); }
			ScriptFunction PlayWeaponPutDown() { return mPlayWeaponPutDown ? mPlayWeaponPutDown : (mPlayWeaponPutDown = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ChainGun.PlayWeaponPutDown")); }
			ScriptFunction BuffMaxCarriedAmmo() { return mBuffMaxCarriedAmmo ? mBuffMaxCarriedAmmo : (mBuffMaxCarriedAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ChainGun.BuffMaxCarriedAmmo")); }
			ScriptFunction AddCarriedAmmo() { return mAddCarriedAmmo ? mAddCarriedAmmo : (mAddCarriedAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ChainGun.AddCarriedAmmo")); }
			ScriptFunction GetBasePickupAmmoAmount() { return mGetBasePickupAmmoAmount ? mGetBasePickupAmmoAmount : (mGetBasePickupAmmoAmount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ChainGun.GetBasePickupAmmoAmount")); }
		}
	}
	@property final
	{
		auto ref
		{
			int r_BuffedMaxAmmo() { return *cast(int*)(cast(size_t)cast(void*)this + 2188); }
			TrSkelControl_SpinControl m_BarrelSpinControl() { return *cast(TrSkelControl_SpinControl*)(cast(size_t)cast(void*)this + 2184); }
			float m_fCurrSpinTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2176); }
			float m_fBuildupTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2172); }
		}
		bool m_bHasClip() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2192) & 0x1) != 0; }
		bool m_bHasClip(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2192) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2192) &= ~0x1; } return val; }
	}
final:
	static float GetBuildUpTime(PlayerReplicationInfo PRI, bool bForInterpSpeed)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		*cast(bool*)&params[4] = bForInterpSpeed;
		StaticClass.ProcessEvent(Functions.GetBuildUpTime, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
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
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void UpdateSoundModulation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSoundModulation, cast(void*)0, cast(void*)0);
	}
	void PlayBuildupAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayBuildupAnimation, cast(void*)0, cast(void*)0);
	}
	void OnSwitchToWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSwitchToWeapon, cast(void*)0, cast(void*)0);
	}
	void PlayWeaponPutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayWeaponPutDown, cast(void*)0, cast(void*)0);
	}
	void BuffMaxCarriedAmmo(int Amount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.BuffMaxCarriedAmmo, params.ptr, cast(void*)0);
	}
	int AddCarriedAmmo(int Amount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddCarriedAmmo, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int GetBasePickupAmmoAmount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBasePickupAmmoAmount, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
