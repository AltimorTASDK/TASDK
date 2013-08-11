module UnrealScript.TribesGame.TrDevice_ConstantFire;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_ConstantFire : TrDevice
{
	public @property final auto ref ScriptName m_PostFireState() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2164); }
	public @property final auto ref SoundCue m_FireTail() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2160); }
	public @property final auto ref float WeaponFireFadeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2156); }
	public @property final bool m_bIsCurrentlyFiring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2152) & 0x4) != 0; }
	public @property final bool m_bIsCurrentlyFiring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2152) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2152) &= ~0x4; } return val; }
	public @property final bool m_bHasLoopingFireAnim() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2152) & 0x2) != 0; }
	public @property final bool m_bHasLoopingFireAnim(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2152) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2152) &= ~0x2; } return val; }
	public @property final bool m_bSoundLinkedWithState() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2152) & 0x1) != 0; }
	public @property final bool m_bSoundLinkedWithState(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2152) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2152) &= ~0x1; } return val; }
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80968], params.ptr, cast(void*)0);
	}
	final void OnEndConstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80970], cast(void*)0, cast(void*)0);
	}
	final void OnStartConstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80971], cast(void*)0, cast(void*)0);
	}
	final void OnTickConstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80972], cast(void*)0, cast(void*)0);
	}
	final void EndFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80973], params.ptr, cast(void*)0);
	}
	final void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80975], params.ptr, cast(void*)0);
	}
	final void PlayFireAnimation(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80993], params.ptr, cast(void*)0);
	}
}
