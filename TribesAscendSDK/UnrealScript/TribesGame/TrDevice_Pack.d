module UnrealScript.TribesGame.TrDevice_Pack;

import ScriptClasses;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_Pack : TrDevice
{
	struct PowerPoolCostInfo
	{
		public @property final auto ref ScriptClass m_TrFamilyInfo() { return *cast(ScriptClass*)(cast(size_t)&this + 4); }
		private ubyte __m_TrFamilyInfo[4];
		public @property final auto ref float m_fPowerPoolCostPerSec() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __m_fPowerPoolCostPerSec[4];
	}
	public @property final auto ref ScriptArray!(TrDevice_Pack.PowerPoolCostInfo) m_PowerPoolInfo() { return *cast(ScriptArray!(TrDevice_Pack.PowerPoolCostInfo)*)(cast(size_t)cast(void*)this + 2152); }
	public @property final auto ref float m_CachedPowerPoolCostPerSec() { return *cast(float*)(cast(size_t)cast(void*)this + 2164); }
	public @property final auto ref float m_fDefaultPowerPoolCostPerSec() { return *cast(float*)(cast(size_t)cast(void*)this + 2148); }
	final bool UsesPower()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80672], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final float GetPowerPool(TrPawn aPawn)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80674], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final bool CanBeActive()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80678], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void ConsumePowerPool(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80681], params.ptr, cast(void*)0);
	}
	final void ToggleActivate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80688], cast(void*)0, cast(void*)0);
	}
	final void ServerToggleActivate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80689], cast(void*)0, cast(void*)0);
	}
	final void ForceActivate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80690], cast(void*)0, cast(void*)0);
	}
	final void ClientForceActive()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80691], cast(void*)0, cast(void*)0);
	}
	final void ClientForceInactive()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80692], cast(void*)0, cast(void*)0);
	}
	final void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80704], params.ptr, cast(void*)0);
	}
	final void StopFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80706], params.ptr, cast(void*)0);
	}
	final void SendToFiringState(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80708], params.ptr, cast(void*)0);
	}
}
