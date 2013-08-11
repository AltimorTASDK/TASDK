module UnrealScript.TribesGame.TrDevice_AutoFire;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.Projectile;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_AutoFire : TrDevice
{
	public @property final bool m_bPullPinFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2160) & 0x1) != 0; }
	public @property final bool m_bPullPinFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2160) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2160) &= ~0x1; } return val; }
	public @property final auto ref float m_fPullPinTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2156); }
	public @property final auto ref TrDevice m_PostFireDevice() { return *cast(TrDevice*)(cast(size_t)cast(void*)this + 2152); }
	public @property final auto ref float m_fBuildupTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2148); }
	final float GetBuildUpTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80857], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float GetEquipTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80864], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float GetPutDownTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80866], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void PlayFireAnimation(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80887], params.ptr, cast(void*)0);
	}
	final void FireAmmunition()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80902], cast(void*)0, cast(void*)0);
	}
	final int AddCarriedAmmo(int Amount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80911], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final void PerformInactiveReload()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80914], cast(void*)0, cast(void*)0);
	}
	final bool HasAmmo(ubyte FireModeNum, int Amount)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = FireModeNum;
		*cast(int*)&params[4] = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80915], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80920], params.ptr, cast(void*)0);
	}
	final void SetPostFireDevice(TrDevice PostFireDevice)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrDevice*)params.ptr = PostFireDevice;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80922], params.ptr, cast(void*)0);
	}
	final void SwitchToPostFireDevice()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80924], cast(void*)0, cast(void*)0);
	}
	final void OnAnimEnd(AnimNodeSequence SeqNode, float PlayedTime, float ExcessTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(float*)&params[4] = PlayedTime;
		*cast(float*)&params[8] = ExcessTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80925], params.ptr, cast(void*)0);
	}
	final bool CanFireNow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80929], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool DoOverrideNextWeapon()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80931], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool DoOverridePrevWeapon()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80933], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool CanAutoDeviceFireNow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80935], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void RequestReload()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80937], cast(void*)0, cast(void*)0);
	}
	final void OnClientReloaded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80938], cast(void*)0, cast(void*)0);
	}
	final void ClientFinishedReload()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80939], cast(void*)0, cast(void*)0);
	}
	final void OnReloadComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80940], cast(void*)0, cast(void*)0);
	}
	final void IncrementFlashCount()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80941], cast(void*)0, cast(void*)0);
	}
	final bool CanViewZoom()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80942], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void ConsumeAmmo(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80944], params.ptr, cast(void*)0);
	}
	final void ConsumeAmmo_Internal(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80946], params.ptr, cast(void*)0);
	}
	final Projectile ProjectileFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80948], params.ptr, cast(void*)0);
		return *cast(Projectile*)params.ptr;
	}
	final void OnSwitchAwayFromWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80954], cast(void*)0, cast(void*)0);
	}
	final void HolderEnteredVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80955], cast(void*)0, cast(void*)0);
	}
}
