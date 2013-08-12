module UnrealScript.TribesGame.TrDevice_AutoFire;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.Projectile;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_AutoFire : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_AutoFire")); }
	private static __gshared TrDevice_AutoFire mDefaultProperties;
	@property final static TrDevice_AutoFire DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_AutoFire)("TrDevice_AutoFire TribesGame.Default__TrDevice_AutoFire")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetBuildUpTime;
			ScriptFunction mGetEquipTime;
			ScriptFunction mGetPutDownTime;
			ScriptFunction mPlayFireAnimation;
			ScriptFunction mFireAmmunition;
			ScriptFunction mAddCarriedAmmo;
			ScriptFunction mPerformInactiveReload;
			ScriptFunction mHasAmmo;
			ScriptFunction mStartFire;
			ScriptFunction mSetPostFireDevice;
			ScriptFunction mSwitchToPostFireDevice;
			ScriptFunction mOnAnimEnd;
			ScriptFunction mCanFireNow;
			ScriptFunction mDoOverrideNextWeapon;
			ScriptFunction mDoOverridePrevWeapon;
			ScriptFunction mCanAutoDeviceFireNow;
			ScriptFunction mRequestReload;
			ScriptFunction mOnClientReloaded;
			ScriptFunction mClientFinishedReload;
			ScriptFunction mOnReloadComplete;
			ScriptFunction mIncrementFlashCount;
			ScriptFunction mCanViewZoom;
			ScriptFunction mConsumeAmmo;
			ScriptFunction mConsumeAmmo_Internal;
			ScriptFunction mProjectileFire;
			ScriptFunction mOnSwitchAwayFromWeapon;
			ScriptFunction mHolderEnteredVehicle;
		}
		public @property static final
		{
			ScriptFunction GetBuildUpTime() { return mGetBuildUpTime ? mGetBuildUpTime : (mGetBuildUpTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.GetBuildUpTime")); }
			ScriptFunction GetEquipTime() { return mGetEquipTime ? mGetEquipTime : (mGetEquipTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.GetEquipTime")); }
			ScriptFunction GetPutDownTime() { return mGetPutDownTime ? mGetPutDownTime : (mGetPutDownTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.GetPutDownTime")); }
			ScriptFunction PlayFireAnimation() { return mPlayFireAnimation ? mPlayFireAnimation : (mPlayFireAnimation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.PlayFireAnimation")); }
			ScriptFunction FireAmmunition() { return mFireAmmunition ? mFireAmmunition : (mFireAmmunition = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.FireAmmunition")); }
			ScriptFunction AddCarriedAmmo() { return mAddCarriedAmmo ? mAddCarriedAmmo : (mAddCarriedAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.AddCarriedAmmo")); }
			ScriptFunction PerformInactiveReload() { return mPerformInactiveReload ? mPerformInactiveReload : (mPerformInactiveReload = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.PerformInactiveReload")); }
			ScriptFunction HasAmmo() { return mHasAmmo ? mHasAmmo : (mHasAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.HasAmmo")); }
			ScriptFunction StartFire() { return mStartFire ? mStartFire : (mStartFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.StartFire")); }
			ScriptFunction SetPostFireDevice() { return mSetPostFireDevice ? mSetPostFireDevice : (mSetPostFireDevice = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.SetPostFireDevice")); }
			ScriptFunction SwitchToPostFireDevice() { return mSwitchToPostFireDevice ? mSwitchToPostFireDevice : (mSwitchToPostFireDevice = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.SwitchToPostFireDevice")); }
			ScriptFunction OnAnimEnd() { return mOnAnimEnd ? mOnAnimEnd : (mOnAnimEnd = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.OnAnimEnd")); }
			ScriptFunction CanFireNow() { return mCanFireNow ? mCanFireNow : (mCanFireNow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.CanFireNow")); }
			ScriptFunction DoOverrideNextWeapon() { return mDoOverrideNextWeapon ? mDoOverrideNextWeapon : (mDoOverrideNextWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.DoOverrideNextWeapon")); }
			ScriptFunction DoOverridePrevWeapon() { return mDoOverridePrevWeapon ? mDoOverridePrevWeapon : (mDoOverridePrevWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.DoOverridePrevWeapon")); }
			ScriptFunction CanAutoDeviceFireNow() { return mCanAutoDeviceFireNow ? mCanAutoDeviceFireNow : (mCanAutoDeviceFireNow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.CanAutoDeviceFireNow")); }
			ScriptFunction RequestReload() { return mRequestReload ? mRequestReload : (mRequestReload = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.RequestReload")); }
			ScriptFunction OnClientReloaded() { return mOnClientReloaded ? mOnClientReloaded : (mOnClientReloaded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.OnClientReloaded")); }
			ScriptFunction ClientFinishedReload() { return mClientFinishedReload ? mClientFinishedReload : (mClientFinishedReload = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.ClientFinishedReload")); }
			ScriptFunction OnReloadComplete() { return mOnReloadComplete ? mOnReloadComplete : (mOnReloadComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.OnReloadComplete")); }
			ScriptFunction IncrementFlashCount() { return mIncrementFlashCount ? mIncrementFlashCount : (mIncrementFlashCount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.IncrementFlashCount")); }
			ScriptFunction CanViewZoom() { return mCanViewZoom ? mCanViewZoom : (mCanViewZoom = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.CanViewZoom")); }
			ScriptFunction ConsumeAmmo() { return mConsumeAmmo ? mConsumeAmmo : (mConsumeAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.ConsumeAmmo")); }
			ScriptFunction ConsumeAmmo_Internal() { return mConsumeAmmo_Internal ? mConsumeAmmo_Internal : (mConsumeAmmo_Internal = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.ConsumeAmmo_Internal")); }
			ScriptFunction ProjectileFire() { return mProjectileFire ? mProjectileFire : (mProjectileFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.ProjectileFire")); }
			ScriptFunction OnSwitchAwayFromWeapon() { return mOnSwitchAwayFromWeapon ? mOnSwitchAwayFromWeapon : (mOnSwitchAwayFromWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.OnSwitchAwayFromWeapon")); }
			ScriptFunction HolderEnteredVehicle() { return mHolderEnteredVehicle ? mHolderEnteredVehicle : (mHolderEnteredVehicle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_AutoFire.HolderEnteredVehicle")); }
		}
	}
	@property final
	{
		auto ref
		{
			float m_fPullPinTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2156); }
			TrDevice m_PostFireDevice() { return *cast(TrDevice*)(cast(size_t)cast(void*)this + 2152); }
			float m_fBuildupTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2148); }
		}
		bool m_bPullPinFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2160) & 0x1) != 0; }
		bool m_bPullPinFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2160) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2160) &= ~0x1; } return val; }
	}
final:
	float GetBuildUpTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBuildUpTime, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetEquipTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEquipTime, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetPutDownTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPutDownTime, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void PlayFireAnimation(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayFireAnimation, params.ptr, cast(void*)0);
	}
	void FireAmmunition()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FireAmmunition, cast(void*)0, cast(void*)0);
	}
	int AddCarriedAmmo(int Amount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddCarriedAmmo, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void PerformInactiveReload()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PerformInactiveReload, cast(void*)0, cast(void*)0);
	}
	bool HasAmmo(ubyte FireModeNum, int Amount)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = FireModeNum;
		*cast(int*)&params[4] = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasAmmo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartFire, params.ptr, cast(void*)0);
	}
	void SetPostFireDevice(TrDevice PostFireDevice)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrDevice*)params.ptr = PostFireDevice;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPostFireDevice, params.ptr, cast(void*)0);
	}
	void SwitchToPostFireDevice()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SwitchToPostFireDevice, cast(void*)0, cast(void*)0);
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
	bool CanFireNow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanFireNow, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool DoOverrideNextWeapon()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoOverrideNextWeapon, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool DoOverridePrevWeapon()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoOverridePrevWeapon, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CanAutoDeviceFireNow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanAutoDeviceFireNow, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void RequestReload()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestReload, cast(void*)0, cast(void*)0);
	}
	void OnClientReloaded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnClientReloaded, cast(void*)0, cast(void*)0);
	}
	void ClientFinishedReload()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientFinishedReload, cast(void*)0, cast(void*)0);
	}
	void OnReloadComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReloadComplete, cast(void*)0, cast(void*)0);
	}
	void IncrementFlashCount()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementFlashCount, cast(void*)0, cast(void*)0);
	}
	bool CanViewZoom()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanViewZoom, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ConsumeAmmo(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConsumeAmmo, params.ptr, cast(void*)0);
	}
	void ConsumeAmmo_Internal(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConsumeAmmo_Internal, params.ptr, cast(void*)0);
	}
	Projectile ProjectileFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProjectileFire, params.ptr, cast(void*)0);
		return *cast(Projectile*)params.ptr;
	}
	void OnSwitchAwayFromWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSwitchAwayFromWeapon, cast(void*)0, cast(void*)0);
	}
	void HolderEnteredVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HolderEnteredVehicle, cast(void*)0, cast(void*)0);
	}
}
