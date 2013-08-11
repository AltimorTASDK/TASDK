module UnrealScript.TribesGame.TrDevice_LightAssaultRifle;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_AssaultRifle;

extern(C++) interface TrDevice_LightAssaultRifle : TrDevice_AssaultRifle
{
	public @property final auto ref float m_fBurtShotRefireTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2184); }
	public @property final bool m_bHoldingFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2180) & 0x1) != 0; }
	public @property final bool m_bHoldingFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2180) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2180) &= ~0x1; } return val; }
	public @property final auto ref int m_nShotsSoFar() { return *cast(int*)(cast(size_t)cast(void*)this + 2176); }
	public @property final auto ref int m_nShotBurstCount() { return *cast(int*)(cast(size_t)cast(void*)this + 2172); }
	final void OnReloadComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[83025], cast(void*)0, cast(void*)0);
	}
	final void StopFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[83026], params.ptr, cast(void*)0);
	}
	final void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[83028], params.ptr, cast(void*)0);
	}
	final void RefireTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[83030], cast(void*)0, cast(void*)0);
	}
	final void EndFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[83031], params.ptr, cast(void*)0);
	}
	final void FireAmmunition()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[83033], cast(void*)0, cast(void*)0);
	}
	final void PlayFiringSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[83034], cast(void*)0, cast(void*)0);
	}
	final void ServerStopFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[83035], params.ptr, cast(void*)0);
	}
}
