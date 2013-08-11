module UnrealScript.TribesGame.TrDevice_LightAssaultRifle;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_AssaultRifle;

extern(C++) interface TrDevice_LightAssaultRifle : TrDevice_AssaultRifle
{
public extern(D):
	@property final
	{
		auto ref
		{
			float m_fBurtShotRefireTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2184); }
			int m_nShotsSoFar() { return *cast(int*)(cast(size_t)cast(void*)this + 2176); }
			int m_nShotBurstCount() { return *cast(int*)(cast(size_t)cast(void*)this + 2172); }
		}
		bool m_bHoldingFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2180) & 0x1) != 0; }
		bool m_bHoldingFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2180) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2180) &= ~0x1; } return val; }
	}
final:
	void OnReloadComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[83025], cast(void*)0, cast(void*)0);
	}
	void StopFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[83026], params.ptr, cast(void*)0);
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[83028], params.ptr, cast(void*)0);
	}
	void RefireTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[83030], cast(void*)0, cast(void*)0);
	}
	void EndFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[83031], params.ptr, cast(void*)0);
	}
	void FireAmmunition()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[83033], cast(void*)0, cast(void*)0);
	}
	void PlayFiringSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[83034], cast(void*)0, cast(void*)0);
	}
	void ServerStopFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[83035], params.ptr, cast(void*)0);
	}
}
