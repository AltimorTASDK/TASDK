module UnrealScript.TribesGame.TrDevice_AutoFire;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.Projectile;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_AutoFire : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_AutoFire")); }
	private static __gshared TrDevice_AutoFire mDefaultProperties;
	@property final static TrDevice_AutoFire DefaultProperties() { mixin(MGDPC("TrDevice_AutoFire", "TrDevice_AutoFire TribesGame.Default__TrDevice_AutoFire")); }
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
			ScriptFunction GetBuildUpTime() { mixin(MGF("mGetBuildUpTime", "Function TribesGame.TrDevice_AutoFire.GetBuildUpTime")); }
			ScriptFunction GetEquipTime() { mixin(MGF("mGetEquipTime", "Function TribesGame.TrDevice_AutoFire.GetEquipTime")); }
			ScriptFunction GetPutDownTime() { mixin(MGF("mGetPutDownTime", "Function TribesGame.TrDevice_AutoFire.GetPutDownTime")); }
			ScriptFunction PlayFireAnimation() { mixin(MGF("mPlayFireAnimation", "Function TribesGame.TrDevice_AutoFire.PlayFireAnimation")); }
			ScriptFunction FireAmmunition() { mixin(MGF("mFireAmmunition", "Function TribesGame.TrDevice_AutoFire.FireAmmunition")); }
			ScriptFunction AddCarriedAmmo() { mixin(MGF("mAddCarriedAmmo", "Function TribesGame.TrDevice_AutoFire.AddCarriedAmmo")); }
			ScriptFunction PerformInactiveReload() { mixin(MGF("mPerformInactiveReload", "Function TribesGame.TrDevice_AutoFire.PerformInactiveReload")); }
			ScriptFunction HasAmmo() { mixin(MGF("mHasAmmo", "Function TribesGame.TrDevice_AutoFire.HasAmmo")); }
			ScriptFunction StartFire() { mixin(MGF("mStartFire", "Function TribesGame.TrDevice_AutoFire.StartFire")); }
			ScriptFunction SetPostFireDevice() { mixin(MGF("mSetPostFireDevice", "Function TribesGame.TrDevice_AutoFire.SetPostFireDevice")); }
			ScriptFunction SwitchToPostFireDevice() { mixin(MGF("mSwitchToPostFireDevice", "Function TribesGame.TrDevice_AutoFire.SwitchToPostFireDevice")); }
			ScriptFunction OnAnimEnd() { mixin(MGF("mOnAnimEnd", "Function TribesGame.TrDevice_AutoFire.OnAnimEnd")); }
			ScriptFunction CanFireNow() { mixin(MGF("mCanFireNow", "Function TribesGame.TrDevice_AutoFire.CanFireNow")); }
			ScriptFunction DoOverrideNextWeapon() { mixin(MGF("mDoOverrideNextWeapon", "Function TribesGame.TrDevice_AutoFire.DoOverrideNextWeapon")); }
			ScriptFunction DoOverridePrevWeapon() { mixin(MGF("mDoOverridePrevWeapon", "Function TribesGame.TrDevice_AutoFire.DoOverridePrevWeapon")); }
			ScriptFunction CanAutoDeviceFireNow() { mixin(MGF("mCanAutoDeviceFireNow", "Function TribesGame.TrDevice_AutoFire.CanAutoDeviceFireNow")); }
			ScriptFunction RequestReload() { mixin(MGF("mRequestReload", "Function TribesGame.TrDevice_AutoFire.RequestReload")); }
			ScriptFunction OnClientReloaded() { mixin(MGF("mOnClientReloaded", "Function TribesGame.TrDevice_AutoFire.OnClientReloaded")); }
			ScriptFunction ClientFinishedReload() { mixin(MGF("mClientFinishedReload", "Function TribesGame.TrDevice_AutoFire.ClientFinishedReload")); }
			ScriptFunction OnReloadComplete() { mixin(MGF("mOnReloadComplete", "Function TribesGame.TrDevice_AutoFire.OnReloadComplete")); }
			ScriptFunction IncrementFlashCount() { mixin(MGF("mIncrementFlashCount", "Function TribesGame.TrDevice_AutoFire.IncrementFlashCount")); }
			ScriptFunction CanViewZoom() { mixin(MGF("mCanViewZoom", "Function TribesGame.TrDevice_AutoFire.CanViewZoom")); }
			ScriptFunction ConsumeAmmo() { mixin(MGF("mConsumeAmmo", "Function TribesGame.TrDevice_AutoFire.ConsumeAmmo")); }
			ScriptFunction ConsumeAmmo_Internal() { mixin(MGF("mConsumeAmmo_Internal", "Function TribesGame.TrDevice_AutoFire.ConsumeAmmo_Internal")); }
			ScriptFunction ProjectileFire() { mixin(MGF("mProjectileFire", "Function TribesGame.TrDevice_AutoFire.ProjectileFire")); }
			ScriptFunction OnSwitchAwayFromWeapon() { mixin(MGF("mOnSwitchAwayFromWeapon", "Function TribesGame.TrDevice_AutoFire.OnSwitchAwayFromWeapon")); }
			ScriptFunction HolderEnteredVehicle() { mixin(MGF("mHolderEnteredVehicle", "Function TribesGame.TrDevice_AutoFire.HolderEnteredVehicle")); }
		}
	}
	static struct WeaponEquipping
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State TribesGame.TrDevice_AutoFire.WeaponEquipping")); }
	}
	static struct WeaponFiring
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State TribesGame.TrDevice_AutoFire.WeaponFiring")); }
	}
	static struct Active
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State TribesGame.TrDevice_AutoFire.Active")); }
	}
	static struct Buildup
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State TribesGame.TrDevice_AutoFire.Buildup")); }
	}
	static struct DeviceReloading
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State TribesGame.TrDevice_AutoFire.DeviceReloading")); }
	}
	@property final
	{
		auto ref
		{
			float m_fPullPinTime() { mixin(MGPC("float", 2156)); }
			TrDevice m_PostFireDevice() { mixin(MGPC("TrDevice", 2152)); }
			float m_fBuildupTime() { mixin(MGPC("float", 2148)); }
		}
		bool m_bPullPinFire() { mixin(MGBPC(2160, 0x1)); }
		bool m_bPullPinFire(bool val) { mixin(MSBPC(2160, 0x1)); }
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
	bool HasAmmo(ubyte FireModeNum, int* Amount = null)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = FireModeNum;
		if (Amount !is null)
			*cast(int*)&params[4] = *Amount;
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
