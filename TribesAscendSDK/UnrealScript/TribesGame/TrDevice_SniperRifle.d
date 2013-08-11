module UnrealScript.TribesGame.TrDevice_SniperRifle;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_SniperRifle : TrDevice
{
	public @property final auto ref float m_fDivCoeff() { return *cast(float*)(cast(size_t)cast(void*)this + 2164); }
	public @property final auto ref float m_fMultCoeff() { return *cast(float*)(cast(size_t)cast(void*)this + 2160); }
	public @property final auto ref float r_fAimChargeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2156); }
	public @property final auto ref float m_fAimChargeDeltaTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2152); }
	public @property final auto ref float m_fMaxAimedDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 2148); }
	final void OnSwitchToWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86161], cast(void*)0, cast(void*)0);
	}
	final void OnSwitchAwayFromWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86162], cast(void*)0, cast(void*)0);
	}
	final void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86163], cast(void*)0, cast(void*)0);
	}
	final float ModifyInstantHitDamage(ubyte FiringMode, Actor.ImpactInfo Impact, float Damage)
	{
		ubyte params[89];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(float*)&params[84] = Damage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86164], params.ptr, cast(void*)0);
		return *cast(float*)&params[88];
	}
	final void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86171], params.ptr, cast(void*)0);
	}
	final float CalcHUDAimChargePercent()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86174], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86176], params.ptr, cast(void*)0);
	}
	final void PlayScopeRechargeSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86181], cast(void*)0, cast(void*)0);
	}
	final void StopScopeRechargeSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86182], cast(void*)0, cast(void*)0);
	}
}
