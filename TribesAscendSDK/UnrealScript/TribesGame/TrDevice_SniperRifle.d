module UnrealScript.TribesGame.TrDevice_SniperRifle;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_SniperRifle : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_SniperRifle")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnSwitchToWeapon;
			ScriptFunction mOnSwitchAwayFromWeapon;
			ScriptFunction mInstantFire;
			ScriptFunction mModifyInstantHitDamage;
			ScriptFunction mStartFire;
			ScriptFunction mCalcHUDAimChargePercent;
			ScriptFunction mTick;
			ScriptFunction mPlayScopeRechargeSound;
			ScriptFunction mStopScopeRechargeSound;
		}
		public @property static final
		{
			ScriptFunction OnSwitchToWeapon() { return mOnSwitchToWeapon ? mOnSwitchToWeapon : (mOnSwitchToWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SniperRifle.OnSwitchToWeapon")); }
			ScriptFunction OnSwitchAwayFromWeapon() { return mOnSwitchAwayFromWeapon ? mOnSwitchAwayFromWeapon : (mOnSwitchAwayFromWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SniperRifle.OnSwitchAwayFromWeapon")); }
			ScriptFunction InstantFire() { return mInstantFire ? mInstantFire : (mInstantFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SniperRifle.InstantFire")); }
			ScriptFunction ModifyInstantHitDamage() { return mModifyInstantHitDamage ? mModifyInstantHitDamage : (mModifyInstantHitDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SniperRifle.ModifyInstantHitDamage")); }
			ScriptFunction StartFire() { return mStartFire ? mStartFire : (mStartFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SniperRifle.StartFire")); }
			ScriptFunction CalcHUDAimChargePercent() { return mCalcHUDAimChargePercent ? mCalcHUDAimChargePercent : (mCalcHUDAimChargePercent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SniperRifle.CalcHUDAimChargePercent")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SniperRifle.Tick")); }
			ScriptFunction PlayScopeRechargeSound() { return mPlayScopeRechargeSound ? mPlayScopeRechargeSound : (mPlayScopeRechargeSound = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SniperRifle.PlayScopeRechargeSound")); }
			ScriptFunction StopScopeRechargeSound() { return mStopScopeRechargeSound ? mStopScopeRechargeSound : (mStopScopeRechargeSound = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SniperRifle.StopScopeRechargeSound")); }
		}
	}
	@property final auto ref
	{
		float m_fDivCoeff() { return *cast(float*)(cast(size_t)cast(void*)this + 2164); }
		float m_fMultCoeff() { return *cast(float*)(cast(size_t)cast(void*)this + 2160); }
		float r_fAimChargeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2156); }
		float m_fAimChargeDeltaTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2152); }
		float m_fMaxAimedDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 2148); }
	}
final:
	void OnSwitchToWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSwitchToWeapon, cast(void*)0, cast(void*)0);
	}
	void OnSwitchAwayFromWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSwitchAwayFromWeapon, cast(void*)0, cast(void*)0);
	}
	void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InstantFire, cast(void*)0, cast(void*)0);
	}
	float ModifyInstantHitDamage(ubyte FiringMode, Actor.ImpactInfo Impact, float Damage)
	{
		ubyte params[92];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(float*)&params[84] = Damage;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyInstantHitDamage, params.ptr, cast(void*)0);
		return *cast(float*)&params[88];
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartFire, params.ptr, cast(void*)0);
	}
	float CalcHUDAimChargePercent()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcHUDAimChargePercent, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void PlayScopeRechargeSound()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayScopeRechargeSound, cast(void*)0, cast(void*)0);
	}
	void StopScopeRechargeSound()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopScopeRechargeSound, cast(void*)0, cast(void*)0);
	}
}
