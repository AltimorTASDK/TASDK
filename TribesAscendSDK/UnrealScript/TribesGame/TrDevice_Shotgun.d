module UnrealScript.TribesGame.TrDevice_Shotgun;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.AnimNodePlayCustomAnim;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_Shotgun : TrDevice
{
	public @property final auto ref AnimNodePlayCustomAnim ReloadCustomAnimNode() { return *cast(AnimNodePlayCustomAnim*)(cast(size_t)cast(void*)this + 2172); }
	public @property final auto ref int m_nConsumeShotsFired() { return *cast(int*)(cast(size_t)cast(void*)this + 2168); }
	public @property final auto ref int m_nShotsFired() { return *cast(int*)(cast(size_t)cast(void*)this + 2164); }
	public @property final auto ref float m_fInnerDefaultAccuracy() { return *cast(float*)(cast(size_t)cast(void*)this + 2160); }
	public @property final auto ref float m_fConsumeAmmoTimeStamp() { return *cast(float*)(cast(size_t)cast(void*)this + 2156); }
	public @property final auto ref int m_nImpactCounter() { return *cast(int*)(cast(size_t)cast(void*)this + 2152); }
	public @property final auto ref int m_nMinShotCount() { return *cast(int*)(cast(size_t)cast(void*)this + 2148); }
	final void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80619], params.ptr, cast(void*)0);
	}
	final void SetFlashLocation(Vector HitLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80621], params.ptr, cast(void*)0);
	}
	final void PerformInactiveReload()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80623], cast(void*)0, cast(void*)0);
	}
	final void CustomFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80625], cast(void*)0, cast(void*)0);
	}
	final void FireAmmunition()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80627], cast(void*)0, cast(void*)0);
	}
	final void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80628], params.ptr, cast(void*)0);
	}
	final void ConsumeAmmo(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80630], params.ptr, cast(void*)0);
	}
	final void ConsumeAmmo_Internal(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80632], params.ptr, cast(void*)0);
	}
	final void ProcessInstantHit_Internal(ubyte FiringMode, Actor.ImpactInfo Impact, bool bHeadShot)
	{
		ubyte params[85];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(bool*)&params[84] = bHeadShot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80634], params.ptr, cast(void*)0);
	}
	final void OnAnimEnd(AnimNodeSequence SeqNode, float PlayedTime, float ExcessTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(float*)&params[4] = PlayedTime;
		*cast(float*)&params[8] = ExcessTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80638], params.ptr, cast(void*)0);
	}
}
